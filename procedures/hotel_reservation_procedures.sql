USE hotel_management;





-- =========================================
-- SPECIAL REQUEST RESERVATION CREATION
-- =========================================

DELIMITER //

CREATE PROCEDURE SpecialRequest(
    IN p_guest_id INT,
    IN p_room_id INT,
    IN p_check_in_date DATE,
    IN p_check_out_date DATE,
    IN p_number_of_guests INT,
    IN p_total_price DECIMAL(10,2),
    IN p_reservation_status VARCHAR(50),
    IN p_staff_id INT
)
BEGIN
    DECLARE v_special_request TEXT DEFAULT '';

    -- Get guest preferences
    SELECT GROUP_CONCAT(preference_value SEPARATOR ', ')
    INTO v_special_request
    FROM guest_preference
    WHERE guest_id = p_guest_id;

    -- Insert reservation
    INSERT INTO reservation (
        guest_id, room_id, check_in_date, check_out_date,
        number_of_guests, total_price, reservation_status,
        special_request, created_at, updated_at, staff_id
    )
    VALUES (
        p_guest_id, p_room_id, p_check_in_date, p_check_out_date,
        p_number_of_guests, p_total_price, p_reservation_status,
        v_special_request, NOW(), NOW(), p_staff_id
    );

    SELECT 'Reservation created successfully' AS message;
END //


-- =========================================
-- UPDATE SPECIAL REQUEST
-- =========================================
CREATE PROCEDURE UpdateSpecialRequest(
    IN p_reservation_id INT
)
BEGIN
    DECLARE v_guest_id INT;
    DECLARE v_special_request TEXT DEFAULT '';

    -- Validate reservation exists
    SELECT guest_id INTO v_guest_id
    FROM reservation
    WHERE reservation_id = p_reservation_id;

    IF v_guest_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Reservation not found';
    END IF;

    -- Get updated preferences
    SELECT GROUP_CONCAT(preference_value SEPARATOR ', ')
    INTO v_special_request
    FROM guest_preference
    WHERE guest_id = v_guest_id;

    -- Update reservation
    UPDATE reservation
    SET special_request = v_special_request,
        updated_at = NOW()
    WHERE reservation_id = p_reservation_id;

    SELECT 'Special request updated successfully' AS message;
END //


-- =========================================
-- BOOK SERVICE
-- =========================================
CREATE PROCEDURE BookService(
    IN p_guest_id INT,
    IN p_service_id INT,
    IN p_reservation_id INT
)
BEGIN
    INSERT INTO booking_service
        (guest_id, service_id, reservation_id, requested_at)
    VALUES
        (p_guest_id, p_service_id, p_reservation_id, NOW());

    SELECT 'Service booked successfully' AS message;
END //


-- =========================================
-- CANCEL SERVICE BOOKING
-- =========================================
CREATE PROCEDURE CancelServiceBooking(
    IN p_booking_id INT
)
BEGIN
    DECLARE v_exists INT;

    SELECT COUNT(*)
    INTO v_exists
    FROM booking_service
    WHERE booking_id = p_booking_id;

    IF v_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Booking not found';
    END IF;

    -- Hard delete kept to preserve current schema behavior
    DELETE FROM booking_service
    WHERE booking_id = p_booking_id;

    SELECT 'Service booking cancelled successfully' AS message;
END //


-- =========================================
-- START SERVICE USAGE
-- =========================================
CREATE PROCEDURE StartServiceUsage(
    IN p_reservation_id INT,
    IN p_service_id INT,
    IN p_quantity INT
)
BEGIN
    -- Charges will be calculated when service is completed
    INSERT INTO service_usage
        (reservation_id, service_id, usage_time,
         end_time, quantity, charges, status)
    VALUES
        (p_reservation_id, p_service_id,
         NOW(), NULL, p_quantity, 0.00, 'active');

    SELECT 'Service usage started' AS message;
END //


-- =========================================
-- GENERATE BILL
-- =========================================
CREATE PROCEDURE GenerateBill(
    IN p_reservation_id INT
)
BEGIN
    DECLARE v_room_charges DECIMAL(12,2);
    DECLARE v_service_charges DECIMAL(12,2);
    DECLARE v_tax_amount DECIMAL(12,2);
    DECLARE v_total_amount DECIMAL(12,2);
    DECLARE v_reservation_status VARCHAR(20);
    DECLARE v_bill_status VARCHAR(20);
    DECLARE v_due_date DATETIME;

    -- Prevent duplicate bills
    IF EXISTS (
        SELECT 1 FROM bill
        WHERE reservation_id = p_reservation_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Bill already exists for this reservation';
    END IF;

    -- Get reservation info
    SELECT total_price, reservation_status
    INTO v_room_charges, v_reservation_status
    FROM reservation
    WHERE reservation_id = p_reservation_id;

    -- Calculate service charges
    SELECT COALESCE(SUM(charges), 0.00)
    INTO v_service_charges
    FROM service_usage
    WHERE reservation_id = p_reservation_id
      AND status = 'completed';

    -- Calculate totals
    SET v_tax_amount =
        ROUND((v_room_charges + v_service_charges) * 0.10, 2);

    SET v_total_amount =
        v_room_charges + v_service_charges + v_tax_amount;

    -- Determine bill status
    CASE v_reservation_status
        WHEN 'Confirmed' THEN
            SET v_bill_status = 'Paid';
            SET v_due_date = NOW();
        WHEN 'Cancelled' THEN
            SET v_bill_status = 'Cancelled';
            SET v_due_date = NOW();
        ELSE
            SET v_bill_status = 'Pending';
            SET v_due_date = DATE_ADD(NOW(), INTERVAL 7 DAY);
    END CASE;

    -- Insert bill
    INSERT INTO bill
        (reservation_id, room_charges,
         service_charges, tax_amount,
         total_amount, bill_status,
         issue_datetime, due_datetime, notes)
    VALUES
        (p_reservation_id, v_room_charges,
         v_service_charges, v_tax_amount,
         v_total_amount, v_bill_status,
         NOW(), v_due_date,
         CONCAT('Bill for reservation ', p_reservation_id));

    SELECT 'Bill generated successfully' AS message;
END //


-- =========================================
-- PROCESS PAYMENT
-- =========================================
CREATE PROCEDURE ProcessPayment(
    IN p_bill_id INT
)
BEGIN
    DECLARE v_status VARCHAR(20);

    SELECT bill_status
    INTO v_status
    FROM bill
    WHERE bill_id = p_bill_id;

    IF v_status IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Bill not found';
    END IF;

    IF v_status <> 'Pending' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Payment already processed or invalid status';
    END IF;

    UPDATE bill
    SET bill_status = 'Paid',
        due_datetime = NOW()
    WHERE bill_id = p_bill_id;

    SELECT 'Payment processed successfully' AS message;
END //

DELIMITER ;




