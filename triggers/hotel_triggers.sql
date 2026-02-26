use hotel_management;



-- =========================================
-- TRIGGER: AUTO CALCULATE SERVICE CHARGES
-- =========================================

DELIMITER //


CREATE TRIGGER calculate_charges
BEFORE UPDATE ON service_usage
FOR EACH ROW
BEGIN
    DECLARE v_hourly_rate DECIMAL(10,2) DEFAULT 0;
    DECLARE v_duration_hours DECIMAL(8,2) DEFAULT 0;

    IF NEW.end_time IS NOT NULL
       AND OLD.end_time IS NULL
       AND NEW.end_time > NEW.usage_time THEN

        -- Get hourly rate safely
        SELECT COALESCE(hourly_rate, 0)
        INTO v_hourly_rate
        FROM service
        WHERE service_id = NEW.service_id
        LIMIT 1;

        -- Calculate duration
        SET v_duration_hours =
            TIMESTAMPDIFF(MINUTE,
                          NEW.usage_time,
                          NEW.end_time) / 60.0;

        -- Calculate charges
        SET NEW.charges =
            ROUND(v_duration_hours *
                  v_hourly_rate *
                  NEW.quantity, 2);

        SET NEW.status = 'completed';

    END IF;
END //

-- =========================================
-- TRIGGER: UPDATE BILL AFTER SERVICE
-- =========================================
CREATE TRIGGER update_bill_on_service_completion
AFTER UPDATE ON service_usage
FOR EACH ROW
BEGIN
    DECLARE v_service_total DECIMAL(12,2) DEFAULT 0;
    DECLARE v_room_charges DECIMAL(12,2) DEFAULT 0;

    IF NEW.status = 'completed'
       AND OLD.status <> 'completed' THEN

        -- Get room charges safely
        SELECT COALESCE(room_charges, 0)
        INTO v_room_charges
        FROM bill
        WHERE reservation_id = NEW.reservation_id
        LIMIT 1;

        -- If bill exists, update totals
        IF v_room_charges IS NOT NULL THEN

            SELECT COALESCE(SUM(charges), 0)
            INTO v_service_total
            FROM service_usage
            WHERE reservation_id = NEW.reservation_id
              AND status = 'completed';

            UPDATE bill
            SET service_charges = v_service_total,
                tax_amount =
                    ROUND((v_room_charges +
                           v_service_total) * 0.10, 2),
                total_amount =
                    v_room_charges +
                    v_service_total +
                    ROUND((v_room_charges +
                           v_service_total) * 0.10, 2)
            WHERE reservation_id = NEW.reservation_id;

        END IF;

    END IF;
END //

DELIMITER ;
