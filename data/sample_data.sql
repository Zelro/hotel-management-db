use hotel_management;

-- =========================================
-- SAMPLE DATA LOAD START
-- Disable FK checks for clean import
-- =========================================

SET FOREIGN_KEY_CHECKS = 0;
START TRANSACTION;




-- -----------------------------INSERT STATEMENTS-----------------------------------


-- -----------STAFF---------------------
-- staff
-- INSERT statements for staff data
-- Table structure: staff_id, first_name, last_name, staff_position, department, email, phone, hire_date, is_active, created_at, updated_at

INSERT INTO staff (staff_id, first_name, last_name, staff_position, department, email, phone, hire_date, is_active, created_at, updated_at) VALUES
(1, 'John', 'Doe', 'Manager', 'Front Desk', 'john.doe1@example.com', '08012345601', '2020-01-15', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(2, 'Jane', 'Smith', 'Receptionist', 'Front Desk', 'jane.smith2@example.com', '08012345602', '2021-03-22', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(3, 'Alice', 'Johnson', 'Housekeeper', 'Housekeeping', 'alice.johnson3@example.com', '08012345603', '2019-08-10', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(4, 'Bob', 'Williams', 'Chef', 'Kitchen', 'bob.williams4@example.com', '08012345604', '2018-05-12', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(5, 'Carol', 'Brown', 'Waiter', 'Restaurant', 'carol.brown5@example.com', '08012345605', '2022-01-18', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(6, 'Dave', 'Jones', 'Concierge', 'Guest Services', 'dave.jones6@example.com', '08012345606', '2017-12-01', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(7, 'Emily', 'Miller', 'Housekeeper', 'Housekeeping', 'emily.miller7@example.com', '08012345607', '2021-07-07', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(8, 'Frank', 'Davis', 'Security', 'Security', 'frank.davis8@example.com', '08012345608', '2020-09-20', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(9, 'Grace', 'Garcia', 'Cook', 'Kitchen', 'grace.garcia9@example.com', '08012345609', '2019-06-14', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(10, 'Henry', 'Martinez', 'Receptionist', 'Front Desk', 'henry.martinez10@example.com', '08012345610', '2023-02-05', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(11, 'Isla', 'Rodriguez', 'Manager', 'Restaurant', 'isla.rodriguez11@example.com', '08012345611', '2020-10-10', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(12, 'Jack', 'Lee', 'Waiter', 'Restaurant', 'jack.lee12@example.com', '08012345612', '2021-11-21', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(13, 'Kara', 'Walker', 'Receptionist', 'Front Desk', 'kara.walker13@example.com', '08012345613', '2019-04-25', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(14, 'Leo', 'Hall', 'Concierge', 'Guest Services', 'leo.hall14@example.com', '08012345614', '2022-08-30', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(15, 'Mia', 'Allen', 'Security', 'Security', 'mia.allen15@example.com', '08012345615', '2021-12-12', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(16, 'Nina', 'Young', 'Housekeeper', 'Housekeeping', 'nina.young16@example.com', '08012345616', '2020-02-28', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(17, 'Omar', 'Hernandez', 'Chef', 'Kitchen', 'omar.hernandez17@example.com', '08012345617', '2018-07-07', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(18, 'Paula', 'King', 'Manager', 'Security', 'paula.king18@example.com', '08012345618', '2023-01-01', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(19, 'Quinn', 'Wright', 'Cook', 'Kitchen', 'quinn.wright19@example.com', '08012345619', '2020-03-15', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(20, 'Ray', 'Lopez', 'Concierge', 'Guest Services', 'ray.lopez20@example.com', '08012345620', '2019-05-05', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(21, 'Sophie', 'Scott', 'Waiter', 'Restaurant', 'sophie.scott21@example.com', '08012345621', '2021-09-01', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(22, 'Tom', 'Green', 'Security', 'Security', 'tom.green22@example.com', '08012345622', '2020-11-17', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(23, 'Uma', 'Adams', 'Receptionist', 'Front Desk', 'uma.adams23@example.com', '08012345623', '2022-06-06', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(24, 'Victor', 'Baker', 'Housekeeper', 'Housekeeping', 'victor.baker24@example.com', '08012345624', '2020-08-23', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(25, 'Wendy', 'Nelson', 'Concierge', 'Guest Services', 'wendy.nelson25@example.com', '08012345625', '2021-01-10', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(26, 'Xander', 'Carter', 'Chef', 'Kitchen', 'xander.carter26@example.com', '08012345626', '2019-09-19', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(27, 'Yara', 'Mitchell', 'Manager', 'Front Desk', 'yara.mitchell27@example.com', '08012345627', '2018-01-11', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(28, 'Zane', 'Perez', 'Waiter', 'Restaurant', 'zane.perez28@example.com', '08012345628', '2021-03-03', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(29, 'Amara', 'Roberts', 'Receptionist', 'Front Desk', 'amara.roberts29@example.com', '08012345629', '2019-01-01', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(30, 'Brian', 'Turner', 'Security', 'Security', 'brian.turner30@example.com', '08012345630', '2020-04-04', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(31, 'Cora', 'Phillips', 'Concierge', 'Guest Services', 'cora.phillips31@example.com', '08012345631', '2021-05-20', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(32, 'Dylan', 'Campbell', 'Housekeeper', 'Housekeeping', 'dylan.campbell32@example.com', '08012345632', '2022-02-12', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(33, 'Eva', 'Parker', 'Manager', 'Restaurant', 'eva.parker33@example.com', '08012345633', '2020-06-18', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(34, 'Finn', 'Evans', 'Chef', 'Kitchen', 'finn.evans34@example.com', '08012345634', '2019-11-11', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(35, 'Gina', 'Edwards', 'Receptionist', 'Front Desk', 'gina.edwards35@example.com', '08012345635', '2021-07-07', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(36, 'Hugo', 'Collins', 'Security', 'Security', 'hugo.collins36@example.com', '08012345636', '2023-03-25', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(37, 'Ivy', 'Stewart', 'Waiter', 'Restaurant', 'ivy.stewart37@example.com', '08012345637', '2020-10-15', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(38, 'Jay', 'Sanchez', 'Housekeeper', 'Housekeeping', 'jay.sanchez38@example.com', '08012345638', '2022-01-30', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(39, 'Kylie', 'Morris', 'Concierge', 'Guest Services', 'kylie.morris39@example.com', '08012345639', '2021-09-09', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(40, 'Liam', 'Rogers', 'Manager', 'Front Desk', 'liam.rogers40@example.com', '08012345640', '2018-04-14', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(41, 'Mona', 'Reed', 'Chef', 'Kitchen', 'mona.reed41@example.com', '08012345641', '2020-08-08', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(42, 'Noah', 'Cook', 'Receptionist', 'Front Desk', 'noah.cook42@example.com', '08012345642', '2021-12-21', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(43, 'Olive', 'Morgan', 'Housekeeper', 'Housekeeping', 'olive.morgan43@example.com', '08012345643', '2019-06-26', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(44, 'Peter', 'Bell', 'Security', 'Security', 'peter.bell44@example.com', '08012345644', '2022-11-02', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(45, 'Queen', 'Murphy', 'Waiter', 'Restaurant', 'queen.murphy45@example.com', '08012345645', '2020-09-17', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(46, 'Rita', 'Bailey', 'Concierge', 'Guest Services', 'rita.bailey46@example.com', '08012345646', '2023-04-04', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(47, 'Sam', 'Rivera', 'Manager', 'Security', 'sam.rivera47@example.com', '08012345647', '2020-03-03', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(48, 'Tina', 'Cooper', 'Chef', 'Kitchen', 'tina.cooper48@example.com', '08012345648', '2022-10-10', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(49, 'Ugo', 'Richardson', 'Waiter', 'Restaurant', 'ugo.richardson49@example.com', '08012345649', '2021-08-18', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00'),
(50, 'Vera', 'Cox', 'Receptionist', 'Front Desk', 'vera.cox50@example.com', '08012345650', '2019-02-02', 1, '2025-05-09 08:50:00', '2025-05-09 08:50:00');

-- Summary of inserted data:
-- Total staff members: 50
-- Hire date range: 2017-12-01 to 2023-04-04
-- Department distribution:
--   Front Desk: 10 staff (2 Managers, 8 Receptionists)
--   Kitchen: 8 staff (6 Chefs, 2 Cooks)
--   Restaurant: 8 staff (2 Managers, 6 Waiters)
--   Housekeeping: 7 staff (7 Housekeepers)
--   Guest Services: 7 staff (7 Concierges)
--   Security: 10 staff (2 Managers, 8 Security)
-- Position distribution:
--   Manager: 7, Receptionist: 8, Chef: 6, Waiter: 6, Housekeeper: 7, Concierge: 7, Security: 8, Cook: 2
-- All staff members are currently active (is_active = 1)


-- ------------ROOMS--------------------------
-- rooms 
-- INSERT statements for hotel room data
-- Table structure: room_id, room_number, room_type_id, floor_level, status, special_features, last_maintenance, is_smoking, created_at, updated_at

INSERT INTO rooms (room_id, room_number, room_type_id, floor_level, status, special_features, last_maintenance, is_smoking, created_at, updated_at) VALUES
(21, 101, 1, 1, 'Available', 'Sea View', '2024-12-15', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(22, 102, 2, 1, 'Occupied', 'Balcony', '2025-01-05', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(23, 103, 3, 1, 'Maintenance', 'Near Elevator', '2025-03-10', 1, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(24, 104, 4, 1, 'Available', 'Accessible', '2025-04-01', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(25, 105, 5, 1, 'Available', 'Garden View', '2025-02-12', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(31, 201, 1, 2, 'Occupied', 'Quiet Zone', '2025-03-15', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(32, 202, 2, 2, 'Available', 'Balcony', '2025-04-05', 1, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(33, 203, 3, 2, 'Available', 'Corner Room', '2024-11-20', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(34, 204, 4, 2, 'Maintenance', 'Pet Friendly', '2025-01-10', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(35, 205, 5, 2, 'Available', 'Soundproof', '2025-02-25', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(41, 301, 6, 3, 'Available', 'Mini Bar', '2025-03-08', 1, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(42, 302, 7, 3, 'Occupied', 'Panoramic View', '2025-04-11', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(43, 303, 8, 3, 'Available', 'Spa Access', '2025-02-18', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(44, 304, 9, 3, 'Occupied', 'King Bed', '2025-01-30', 1, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(45, 305, 10, 3, 'Available', 'Kitchenette', '2025-03-22', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(51, 401, 6, 4, 'Available', 'Office Desk', '2025-04-02', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(52, 402, 7, 4, 'Occupied', 'Balcony', '2025-02-14', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(53, 403, 8, 4, 'Available', 'Jacuzzi', '2025-01-20', 1, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(54, 404, 9, 4, 'Available', 'Smart TV', '2025-03-17', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(55, 405, 10, 4, 'Maintenance', 'Fireplace', '2025-03-01', 0, '2025-05-15 13:01:47', '2025-05-15 13:01:47'),
(61, 501, 2, 5, 'Available', 'Ocean View', '2025-05-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(62, 502, 1, 5, 'Occupied', 'City View', '2025-06-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(63, 503, 3, 5, 'Maintenance', 'Near Pool', '2025-07-01', 1, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(64, 504, 4, 5, 'Available', 'Accessible', '2025-08-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(65, 505, 5, 5, 'Available', 'Garden View', '2025-09-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(71, 211, 1, 6, 'Occupied', 'Quiet Zone', '2025-10-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(72, 212, 2, 6, 'Available', 'Balcony', '2025-11-01', 1, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(73, 213, 3, 6, 'Available', 'Corner Room', '2025-12-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(74, 214, 4, 6, 'Maintenance', 'Pet Friendly', '2025-01-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(75, 215, 5, 6, 'Available', 'Soundproof', '2025-02-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(81, 311, 6, 7, 'Available', 'Mini Bar', '2025-03-01', 1, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(82, 312, 7, 7, 'Occupied', 'Panoramic View', '2025-04-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(83, 313, 8, 7, 'Available', 'Spa Access', '2025-05-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(84, 314, 9, 7, 'Occupied', 'King Bed', '2025-06-01', 1, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(85, 315, 10, 7, 'Available', 'Kitchenette', '2025-07-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(91, 411, 6, 8, 'Available', 'Office Desk', '2025-08-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(92, 412, 7, 8, 'Occupied', 'Balcony', '2025-09-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(93, 413, 8, 8, 'Available', 'Jacuzzi', '2025-10-01', 1, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(94, 414, 9, 8, 'Available', 'Smart TV', '2025-11-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(95, 415, 10, 8, 'Maintenance', 'Fireplace', '2025-12-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(101, 511, 1, 9, 'Available', 'Rooftop Access', '2025-01-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(102, 512, 2, 9, 'Occupied', 'Luxury Suite', '2025-02-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(103, 513, 3, 9, 'Available', 'Private Balcony', '2025-03-01', 1, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(104, 514, 4, 9, 'Maintenance', 'Fireplace', '2025-04-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17'),
(105, 515, 5, 9, 'Available', 'Sky Lounge', '2025-05-01', 0, '2025-05-15 13:36:17', '2025-05-15 13:36:17');

-- Summary of inserted data:
-- Total records: 45 rooms
-- Floor distribution: 5 rooms (floor 1), 5 rooms (floor 2), 5 rooms (floor 3), 5 rooms (floor 4), 5 rooms (floor 5), 5 rooms (floor 6), 5 rooms (floor 7), 5 rooms (floor 8), 5 rooms (floor 9)
-- Status distribution: Available (30), Occupied (9), Maintenance (6)
-- Smoking rooms: 11 rooms (is_smoking = 1)
-- Non-smoking rooms: 34 rooms (is_smoking = 0)



-- -----------ROOM_TYPE---------------------------
-- room_type
-- INSERT statements for room types data
-- Table structure: room_type_id, type_name, description, base_price, max_occupancy, bed_count, bed_type, created_at, updated_at

INSERT INTO room_type (room_type_id, type_name, description, base_price, max_occupancy, bed_count, bed_type, created_at, updated_at) VALUES
(1, 'Deluxe', 'Spacious room with a king bed and city view.', 150.00, 2, 1, 'King', NULL, NULL),
(2, 'Standard', 'Comfortable room with a queen bed and basic amenities.', 100.00, 2, 1, 'Queen', NULL, NULL),
(3, 'Suite', 'Luxury suite with separate living area and ocean view.', 250.00, 4, 2, 'King', NULL, NULL),
(4, 'Family Room', 'Large room suitable for families with multiple beds.', 180.00, 5, 3, 'Double', NULL, NULL),
(5, 'Executive', 'Modern room with work desk and lounge access.', 200.00, 2, 1, 'King', NULL, NULL),
(6, 'Single', 'Compact room ideal for solo travelers.', 80.00, 1, 1, 'Twin', NULL, NULL),
(7, 'Double Deluxe', 'Spacious double room with two queen beds.', 160.00, 4, 2, 'Queen', NULL, NULL),
(8, 'Penthouse', 'Top floor suite with panoramic views and luxury amenities.', 400.00, 2, 1, 'King', NULL, NULL),
(9, 'Accessible Room', 'Room designed for accessibility with wider doors and adapted facilities.', 120.00, 2, 1, 'Queen', NULL, NULL),
(10, 'Economy', 'Budget-friendly room with essential amenities.', 70.00, 2, 1, 'Full', NULL, NULL);

-- Summary of inserted data:
-- Total room types: 10
-- Price range: $70.00 (Economy) to $400.00 (Penthouse)
-- Occupancy range: 1 person (Single) to 5 people (Family Room)
-- Bed types: King (4 types), Queen (3 types), Double (1 type), Twin (1 type), Full (1 type)
-- Average base price: $171.00


-- ---------------ROOM_MAINTENANCE----------------------------
-- room_maintenance
-- INSERT statements for maintenance records data
-- Table structure: maintenance_id, room_id, staff_id, maintenance_date, description, status, cost

INSERT INTO room_maintenance (maintenance_id, room_id, staff_id, maintenance_date, description, status, cost) VALUES
(1, 21, 1, '2023-10-01', 'Repaired air conditioning unit.', 'Completed', 150.00),
(2, 22, 2, '2023-10-05', 'Fixed leaking faucet in bathroom.', 'Completed', 75.00),
(3, 23, 3, '2023-10-10', 'Replaced broken window.', 'In Progress', 200.00),
(4, 24, 4, '2023-10-15', 'Serviced heating system.', 'Completed', 120.00),
(5, 25, 5, '2023-10-20', 'Cleaned carpets.', 'Completed', 100.00),
(6, 31, 1, '2023-10-25', 'Repaired door lock.', 'Pending', 60.00),
(7, 32, 2, '2023-10-30', 'Checked smoke detectors.', 'Completed', 40.00),
(8, 33, 3, '2023-11-01', 'Replaced light bulbs.', 'Completed', 30.00),
(9, 34, 4, '2023-11-05', 'Fixed shower head.', 'In Progress', 50.00),
(10, 35, 5, '2023-11-10', 'Repaired furniture.', 'Completed', 80.00),
(11, 41, 1, '2023-11-15', 'Serviced refrigerator.', 'Completed', 200.00),
(12, 42, 2, '2023-11-20', 'Repaired TV.', 'Pending', 90.00),
(13, 43, 3, '2023-11-25', 'Checked plumbing.', 'Completed', 150.00),
(14, 44, 4, '2023-12-01', 'Replaced mattress.', 'Completed', 300.00),
(15, 45, 5, '2023-12-05', 'Cleaned air ducts.', 'In Progress', 250.00),
(16, 51, 1, '2023-12-10', 'Repaired window blinds.', 'Completed', 70.00),
(17, 52, 2, '2023-12-15', 'Fixed electrical wiring.', 'Completed', 180.00),
(18, 53, 3, '2023-12-20', 'Replaced shower curtain.', 'Pending', 25.00),
(19, 54, 4, '2023-12-25', 'Serviced heating system.', 'Completed', 120.00),
(20, 55, 5, '2023-12-30', 'Checked fire alarms.', 'Completed', 40.00),
(21, 61, 1, '2024-01-05', 'Repaired balcony door.', 'In Progress', 150.00),
(22, 62, 2, '2024-01-10', 'Fixed leaking sink.', 'Completed', 80.00),
(23, 63, 3, '2024-01-15', 'Replaced carpet.', 'Completed', 300.00),
(24, 64, 4, '2024-01-20', 'Serviced air conditioning.', 'Pending', 200.00),
(25, 65, 5, '2024-01-25', 'Repaired furniture.', 'Completed', 100.00),
(26, 71, 1, '2024-01-30', 'Checked electrical outlets.', 'Completed', 50.00),
(27, 72, 2, '2024-02-04', 'Repaired bathroom tile.', 'Completed', 120.00),
(28, 73, 3, '2024-02-08', 'Maintained heating system.', 'In Progress', 200.00),
(29, 74, 4, '2024-02-12', 'Replaced door handle.', 'Completed', 45.00),
(30, 75, 5, '2024-02-16', 'Cleaned air filters.', 'Pending', 60.00),
(31, 81, 1, '2024-02-20', 'Fixed kitchen sink.', 'Completed', 90.00),
(32, 82, 2, '2024-02-24', 'Repaired window lock.', 'Completed', 55.00),
(33, 83, 3, '2024-02-28', 'Replaced curtains.', 'In Progress', 80.00),
(34, 84, 4, '2024-03-04', 'Serviced air conditioning.', 'Completed', 150.00),
(35, 85, 5, '2024-03-08', 'Repaired balcony railing.', 'Pending', 110.00),
(36, 91, 1, '2024-03-12', 'Cleaned bathroom exhaust.', 'Completed', 70.00),
(37, 92, 2, '2024-03-16', 'Checked fire extinguisher.', 'Completed', 30.00),
(38, 93, 3, '2024-03-20', 'Repaired TV remote.', 'In Progress', 25.00),
(39, 94, 4, '2024-03-24', 'Serviced refrigerator.', 'Completed', 130.00),
(40, 95, 5, '2024-03-28', 'Fixed carpet stains.', 'Pending', 90.00),
(41, 101, 1, '2024-04-01', 'Replaced light fixture.', 'Completed', 85.00),
(42, 102, 2, '2024-04-05', 'Repaired door lock.', 'Completed', 75.00),
(43, 103, 3, '2024-04-09', 'Cleaned HVAC system.', 'In Progress', 220.00),
(44, 104, 4, '2024-04-13', 'Repaired bathroom leak.', 'Completed', 160.00),
(45, 105, 5, '2024-04-17', 'Replaced window glass.', 'Pending', 250.00);

-- Summary of inserted data:
-- Total maintenance records: 45
-- Date range: 2023-10-01 to 2024-04-17
-- Status distribution: Completed (26), In Progress (10), Pending (9)
-- Cost range: $25.00 to $300.00
-- Total maintenance cost: $5,190.00
-- Average cost per maintenance: $115.33



-- -------------Guest-----------------------
-- guest 

-- INSERT statements for guests data
-- Table structure: guest_id, first_name, last_name, email, phone, address, registration_date, loyalty_tier, is_active, created_at, updated_at

INSERT INTO guest (guest_id, first_name, last_name, email, phone, address, registration_date, loyalty_tier, is_active, created_at, updated_at) VALUES
(1, 'Olivia', 'Parker', 'olivia.parker@example.com', '08030000001', '12 King St.', '2024-05-01', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(2, 'Liam', 'Smith', 'liam.smith@example.com', '08030000002', '43 Queen Ave.', '2024-05-02', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(3, 'Emma', 'Brown', 'emma.brown@example.com', '08030000003', '23 River Rd.', '2024-05-03', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(4, 'Noah', 'Johnson', 'noah.johnson@example.com', '08030000004', '77 Bridge Ln.', '2024-05-04', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(5, 'Ava', 'Williams', 'ava.williams@example.com', '08030000005', '89 Maple St.', '2024-05-05', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(6, 'Elijah', 'Jones', 'elijah.jones@example.com', '08030000006', '14 Garden Blvd.', '2024-05-06', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(7, 'Sophia', 'Garcia', 'sophia.garcia@example.com', '08030000007', '55 Sunset Dr.', '2024-05-07', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(8, 'James', 'Martinez', 'james.martinez@example.com', '08030000008', '91 Sunrise Rd.', '2024-05-08', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(9, 'Isabella', 'Rodriguez', 'isabella.rodriguez@example.com', '08030000009', '101 Ocean Ave.', '2024-05-09', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(10, 'Benjamin', 'Lee', 'benjamin.lee@example.com', '08030000010', '73 Palm St.', '2024-05-10', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(11, 'Mia', 'Walker', 'mia.walker@example.com', '08030000011', '64 Elm Way', '2024-05-11', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(12, 'Lucas', 'Hall', 'lucas.hall@example.com', '08030000012', '88 Pine Blvd.', '2024-05-12', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(13, 'Amelia', 'Allen', 'amelia.allen@example.com', '08030000013', '36 Birch Rd.', '2024-05-13', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(14, 'Mason', 'Young', 'mason.young@example.com', '08030000014', '45 Spruce Ln.', '2024-05-14', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(15, 'Charlotte', 'Hernandez', 'charlotte.hernandez@example.com', '08030000015', '29 Forest Ave.', '2024-05-15', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(16, 'Logan', 'King', 'logan.king@example.com', '08030000016', '78 Willow Dr.', '2024-05-16', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(17, 'Harper', 'Wright', 'harper.wright@example.com', '08030000017', '95 Lake St.', '2024-05-17', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(18, 'Ethan', 'Lopez', 'ethan.lopez@example.com', '08030000018', '31 Bay Rd.', '2024-05-18', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(19, 'Evelyn', 'Hill', 'evelyn.hill@example.com', '08030000019', '22 Shore Blvd.', '2024-05-19', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(20, 'Alexander', 'Scott', 'alexander.scott@example.com', '08030000020', '10 Cliff Ave.', '2024-05-20', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(21, 'Abigail', 'Green', 'abigail.green@example.com', '08030000021', '24 Cypress St.', '2024-05-21', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(22, 'Daniel', 'Baker', 'daniel.baker@example.com', '08030000022', '63 Ivy Rd.', '2024-05-22', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(23, 'Emily', 'Nelson', 'emily.nelson@example.com', '08030000023', '12 Redwood Ln.', '2024-05-23', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(24, 'Henry', 'Carter', 'henry.carter@example.com', '08030000024', '78 Chestnut St.', '2024-05-24', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(25, 'Ella', 'Mitchell', 'ella.mitchell@example.com', '08030000025', '33 Hazel Ave.', '2024-05-25', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(26, 'Sebastian', 'Perez', 'sebastian.perez@example.com', '08030000026', '54 Magnolia Rd.', '2024-05-26', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(27, 'Avery', 'Roberts', 'avery.roberts@example.com', '08030000027', '16 Fir St.', '2024-05-27', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(28, 'Jack', 'Turner', 'jack.turner@example.com', '08030000028', '40 Oak Blvd.', '2024-05-28', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(29, 'Scarlett', 'Phillips', 'scarlett.phillips@example.com', '08030000029', '21 Maple Dr.', '2024-05-29', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(30, 'William', 'Campbell', 'william.campbell@example.com', '08030000030', '31 Walnut Rd.', '2024-05-30', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(31, 'Luna', 'Patterson', 'luna.patterson@example.com', '08030000031', '72 Vine Ln.', '2024-05-31', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(32, 'Michael', 'Hughes', 'michael.hughes@example.com', '08030000032', '50 Sage St.', '2024-06-01', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(33, 'Aria', 'Flores', 'aria.flores@example.com', '08030000033', '39 Sequoia Ave.', '2024-06-02', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(34, 'Eli', 'Simmons', 'eli.simmons@example.com', '08030000034', '25 Ironwood Blvd.', '2024-06-03', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(35, 'Grace', 'Foster', 'grace.foster@example.com', '08030000035', '81 Dogwood Rd.', '2024-06-04', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(36, 'Logan', 'Bryant', 'logan.bryant@example.com', '08030000036', '19 Lilac Dr.', '2024-06-05', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(37, 'Chloe', 'Alexander', 'chloe.alexander@example.com', '08030000037', '60 Rosewood Ln.', '2024-06-06', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(38, 'Jackson', 'Russell', 'jackson.russell@example.com', '08030000038', '98 Hickory St.', '2024-06-07', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(39, 'Victoria', 'Griffin', 'victoria.griffin@example.com', '08030000039', '36 Ash Ave.', '2024-06-08', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(40, 'Matthew', 'Diaz', 'matthew.diaz@example.com', '08030000040', '13 Alder Rd.', '2024-06-09', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(41, 'Zoey', 'Hayes', 'zoey.hayes@example.com', '08030000041', '11 Pine Ave.', '2024-06-10', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(42, 'Luke', 'Myers', 'luke.myers@example.com', '08030000042', '29 Birch Ln.', '2024-06-11', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(43, 'Hannah', 'Ford', 'hannah.ford@example.com', '08030000043', '77 Redwood Dr.', '2024-06-12', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(44, 'Gabriel', 'Hamilton', 'gabriel.hamilton@example.com', '08030000044', '45 Oakleaf Rd.', '2024-06-13', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(45, 'Layla', 'Graham', 'layla.graham@example.com', '08030000045', '56 Chestnut St.', '2024-06-14', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(46, 'Jayden', 'Sullivan', 'jayden.sullivan@example.com', '08030000046', '18 Willow Way', '2024-06-15', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(47, 'Nora', 'Wallace', 'nora.wallace@example.com', '08030000047', '67 Fern Rd.', '2024-06-16', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(48, 'Leo', 'Woods', 'leo.woods@example.com', '08030000048', '32 Spruce Blvd.', '2024-06-17', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(49, 'Aurora', 'Cole', 'aurora.cole@example.com', '08030000049', '20 Elm Ln.', '2024-06-18', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(50, 'Nathan', 'West', 'nathan.west@example.com', '08030000050', '84 Maple Way', '2024-06-19', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(51, 'Ellie', 'Jordan', 'ellie.jordan@example.com', '08030000051', '31 Aspen St.', '2024-06-20', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(52, 'Christian', 'Owens', 'christian.owens@example.com', '08030000052', '10 Alder Blvd.', '2024-06-21', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(53, 'Savannah', 'Reed', 'savannah.reed@example.com', '08030000053', '73 Walnut Ln.', '2024-06-22', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(54, 'Anthony', 'Peterson', 'anthony.peterson@example.com', '08030000054', '26 Ivy Rd.', '2024-06-23', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(55, 'Samantha', 'Murray', 'samantha.murray@example.com', '08030000055', '99 Dogwood Dr.', '2024-06-24', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(56, 'Wyatt', 'Freeman', 'wyatt.freeman@example.com', '08030000056', '42 Fir Ave.', '2024-06-25', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(57, 'Stella', 'Wells', 'stella.wells@example.com', '08030000057', '15 Rosewood Rd.', '2024-06-26', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(58, 'Owen', 'Dunn', 'owen.dunn@example.com', '08030000058', '83 Hickory Blvd.', '2024-06-27', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(59, 'Camila', 'Perkins', 'camila.perkins@example.com', '08030000059', '34 Cypress St.', '2024-06-28', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(60, 'Ethan', 'Arnold', 'ethan.arnold@example.com', '08030000060', '70 Lilac Way', '2024-06-29', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(61, 'Aria', 'Berry', 'aria.berry@example.com', '08030000061', '21 Dogwood Ct.', '2024-07-01', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(62, 'Grayson', 'Hudson', 'grayson.hudson@example.com', '08030000062', '88 Forest Ln.', '2024-07-02', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(63, 'Lucy', 'Banks', 'lucy.banks@example.com', '08030000063', '39 Palm Blvd.', '2024-07-03', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(64, 'Landon', 'Bishop', 'landon.bishop@example.com', '08030000064', '17 Magnolia St.', '2024-07-04', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(65, 'Paisley', 'Beck', 'paisley.beck@example.com', '08030000065', '58 Maple Ct.', '2024-07-05', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(66, 'Isaac', 'Simon', 'isaac.simon@example.com', '08030000066', '63 Juniper Way', '2024-07-06', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(67, 'Ruby', 'Wheeler', 'ruby.wheeler@example.com', '08030000067', '46 Sequoia Ln.', '2024-07-07', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(68, 'Hunter', 'Fleming', 'hunter.fleming@example.com', '08030000068', '33 Beech Dr.', '2024-07-08', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(69, 'Piper', 'Shaw', 'piper.shaw@example.com', '08030000069', '79 Hemlock Rd.', '2024-07-09', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(70, 'Connor', 'Parks', 'connor.parks@example.com', '08030000070', '22 Larch Ave.', '2024-07-10', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(71, 'Clara', 'Reeves', 'clara.reeves@example.com', '08030000071', '14 Cypress Blvd.', '2024-07-11', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(72, 'Ezra', 'Holt', 'ezra.holt@example.com', '08030000072', '87 Garden Dr.', '2024-07-12', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(73, 'Kinsley', 'Barber', 'kinsley.barber@example.com', '08030000073', '60 Oak Rd.', '2024-07-13', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(74, 'Thomas', 'Dennis', 'thomas.dennis@example.com', '08030000074', '38 Pinewood Ln.', '2024-07-14', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(75, 'Julia', 'Fields', 'julia.fields@example.com', '08030000075', '69 Meadow Ln.', '2024-07-15', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(76, 'Charles', 'Gibbs', 'charles.gibbs@example.com', '08030000076', '26 Riverbend Rd.', '2024-07-16', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(77, 'Sophie', 'Harrington', 'sophie.harrington@example.com', '08030000077', '93 Ocean Dr.', '2024-07-17', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(78, 'Adrian', 'Sutton', 'adrian.sutton@example.com', '08030000078', '75 Elmwood Ave.', '2024-07-18', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(79, 'Bella', 'Nash', 'bella.nash@example.com', '08030000079', '42 Sunset Blvd.', '2024-07-19', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(80, 'Aiden', 'Keller', 'aiden.keller@example.com', '08030000080', '31 Harbor Way', '2024-07-20', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(81, 'Melanie', 'Hayes', 'melanie.hayes@example.com', '08030000081', '19 Walnut St.', '2024-07-21', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(82, 'George', 'Drake', 'george.drake@example.com', '08030000082', '90 Pine Hollow Dr.', '2024-07-22', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(83, 'Faith', 'Carson', 'faith.carson@example.com', '08030000083', '47 Ashwood Cir.', '2024-07-23', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(84, 'Miles', 'Olsen', 'miles.olsen@example.com', '08030000084', '35 Cliffside Dr.', '2024-07-24', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(85, 'Amy', 'York', 'amy.york@example.com', '08030000085', '62 Redwood Ave.', '2024-07-25', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(86, 'Jason', 'Tyler', 'jason.tyler@example.com', '08030000086', '28 Riverwalk Ln.', '2024-07-26', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(87, 'Madelyn', 'Bates', 'madelyn.bates@example.com', '08030000087', '73 Birch Blvd.', '2024-07-27', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(88, 'Jasper', 'Knox', 'jasper.knox@example.com', '08030000088', '56 Willow Oak Dr.', '2024-07-28', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(89, 'Eliza', 'Grimes', 'eliza.grimes@example.com', '08030000089', '13 Grove Rd.', '2024-07-29', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(90, 'Brody', 'Chandler', 'brody.chandler@example.com', '08030000090', '84 Highland Blvd.', '2024-07-30', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(91, 'Anastasia', 'Boyd', 'anastasia.boyd@example.com', '08030000091', '40 Oak Glen Ct.', '2024-08-01', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(92, 'Wesley', 'Finch', 'wesley.finch@example.com', '08030000092', '16 Laurel Hill Dr.', '2024-08-02', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(93, 'Jade', 'Atkins', 'jade.atkins@example.com', '08030000093', '65 Timber Ridge Ave.', '2024-08-03', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(94, 'Jade', 'Ayers', 'damien.ayers@example.com', '08030000094', '29 Blueberry Ct.', '2024-08-04', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(95, 'Mya', 'Hubbard', 'mya.hubbard@example.com', '08030000095', '78 Spring Lake Dr.', '2024-08-05', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(96, 'Sett', 'Frost', 'sett.frost@example.com', '08030000096', '11 Crystal Creek Ln.', '2024-08-06', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(97, 'Mabel', 'Lowe', 'mabel.lowe@example.com', '08030000097', '52 Birch Hollow Dr.', '2024-08-07', 'Bronze', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'), 
(98, 'Reid', 'Brady', 'reid.brady@example.com', '08030000098', '33 Willow Creek Dr.', '2024-08-08', 'Platinum', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(99, 'Nina', 'Buckley', 'nina.buckley@example.com', '08030000099', '25 Ivy Terrace', '2024-08-09', 'Gold', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49'),
(100, 'Cody', 'Hopper', 'cody.hopper@example.com', '08030000100', '68 Fox Run Rd.', '2024-08-10', 'Silver', 1, '2025-05-09 08:30:49', '2025-05-09 08:30:49');
	



-- ------------Guest_Preference------------------
-- guest_preference
INSERT INTO guest_preference VALUES (1, 1, 'Room Type', 'Deluxe', 'Spacious room with a great view');
INSERT INTO guest_preference VALUES (2, 1, 'Bed Type', 'King', 'Prefers large bed for comfort');
INSERT INTO guest_preference VALUES (3, 1, 'Smoking Preference', 'Non-Smoking', 'No smoke due to allergies');
INSERT INTO guest_preference VALUES (4, 2, 'Room Type', 'Standard', 'Simple and functional for short stay');
INSERT INTO guest_preference VALUES (5, 2, 'Bed Type', 'Queen', 'Standard comfort bed');
INSERT INTO guest_preference VALUES (6, 2, 'Smoking Preference', 'Smoking', 'Enjoys smoking in the room');
INSERT INTO guest_preference VALUES (7, 3, 'Room Type', 'Suite', 'For business trip with work desk');
INSERT INTO guest_preference VALUES (8, 3, 'Bed Type', 'King', 'Prefer large bed for relaxation');
INSERT INTO guest_preference VALUES (9, 3, 'Smoking Preference', 'Non-Smoking', 'Avoids smoking for health reasons');
INSERT INTO guest_preference VALUES (10, 4, 'Room Type', 'Studio', 'Compact but cozy for solo travel');
INSERT INTO guest_preference VALUES (11, 4, 'Bed Type', 'Double', 'Comfortable for short stays');
INSERT INTO guest_preference VALUES (12, 4, 'Smoking Preference', 'Non-Smoking', 'Allergy to smoke');
INSERT INTO guest_preference VALUES (13, 5, 'Room Type', 'Penthouse', 'Luxury room with a view');
INSERT INTO guest_preference VALUES (14, 5, 'Bed Type', 'King', 'Spacious and comfortable bed');
INSERT INTO guest_preference VALUES (15, 5, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke due to asthma');
INSERT INTO guest_preference VALUES (16, 6, 'Room Type', 'Suite', 'Business friendly, with office setup');
INSERT INTO guest_preference VALUES (17, 6, 'Bed Type', 'Queen', 'Standard size for comfort');
INSERT INTO guest_preference VALUES (18, 6, 'Smoking Preference', 'Smoking', 'Relaxing with occasional smoke');
INSERT INTO guest_preference VALUES (19, 7, 'Room Type', 'Standard', 'Basic room for a quick stay');
INSERT INTO guest_preference VALUES (20, 7, 'Bed Type', 'Single', 'Compact and simple');
INSERT INTO guest_preference VALUES (21, 7, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (22, 8, 'Room Type', 'Deluxe', 'Spacious with premium features');
INSERT INTO guest_preference VALUES (23, 8, 'Bed Type', 'Double', 'Comfortable for two people');
INSERT INTO guest_preference VALUES (24, 8, 'Smoking Preference', 'Non-Smoking', 'Prefers no smoking');
INSERT INTO guest_preference VALUES (25, 9, 'Room Type', 'Suite', 'Luxury suite with a living area');
INSERT INTO guest_preference VALUES (26, 9, 'Bed Type', 'King', 'Large bed for ultimate relaxation');
INSERT INTO guest_preference VALUES (27, 9, 'Smoking Preference', 'Non-Smoking', 'Does not tolerate smoke');
INSERT INTO guest_preference VALUES (28, 10, 'Room Type', 'Studio', 'Compact but with everything needed');
INSERT INTO guest_preference VALUES (29, 10, 'Bed Type', 'Queen', 'Ideal size for short stays');
INSERT INTO guest_preference VALUES (30, 10, 'Smoking Preference', 'Non-Smoking', 'Health-conscious, no smoking');
INSERT INTO guest_preference VALUES (31, 11, 'Room Type', 'Penthouse', 'Top floor with scenic view');
INSERT INTO guest_preference VALUES (32, 11, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (33, 11, 'Smoking Preference', 'Smoking', 'Occasional smoker');
INSERT INTO guest_preference VALUES (34, 12, 'Room Type', 'Suite', 'Spacious for extended stays');
INSERT INTO guest_preference VALUES (35, 12, 'Bed Type', 'Double', 'Perfect for two people');
INSERT INTO guest_preference VALUES (36, 12, 'Smoking Preference', 'Non-Smoking', 'No smoking due to allergies');
INSERT INTO guest_preference VALUES (37, 13, 'Room Type', 'Deluxe', 'High-end room with luxury amenities');
INSERT INTO guest_preference VALUES (38, 13, 'Bed Type', 'King', 'Preferred for extra space');
INSERT INTO guest_preference VALUES (39, 13, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke due to asthma');
INSERT INTO guest_preference VALUES (40, 14, 'Room Type', 'Standard', 'Efficient and functional for short visits');
INSERT INTO guest_preference VALUES (41, 14, 'Bed Type', 'Single', 'Standard for solo traveler');
INSERT INTO guest_preference VALUES (42, 14, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (43, 15, 'Room Type', 'Studio', 'Compact, suitable for a short stay');
INSERT INTO guest_preference VALUES (44, 15, 'Bed Type', 'Queen', 'Comfortable bed for one or two people');
INSERT INTO guest_preference VALUES (45, 15, 'Smoking Preference', 'Non-Smoking', 'Allergy to smoke');
INSERT INTO guest_preference VALUES (46, 16, 'Room Type', 'Suite', 'Spacious, great for long stays');
INSERT INTO guest_preference VALUES (47, 16, 'Bed Type', 'King', 'Prefer large bed for comfort');
INSERT INTO guest_preference VALUES (48, 16, 'Smoking Preference', 'Smoking', 'Enjoys smoking on occasion');
INSERT INTO guest_preference VALUES (49, 17, 'Room Type', 'Standard', 'Basic with all essential amenities');
INSERT INTO guest_preference VALUES (50, 17, 'Bed Type', 'Single', 'Simple, small room for one person');
INSERT INTO guest_preference VALUES (51, 17, 'Smoking Preference', 'Non-Smoking', 'No tolerance for smoke');
INSERT INTO guest_preference VALUES (52, 18, 'Room Type', 'Deluxe', 'Luxurious room with a view');
INSERT INTO guest_preference VALUES (53, 18, 'Bed Type', 'Double', 'Comfortable for two people');
INSERT INTO guest_preference VALUES (54, 18, 'Smoking Preference', 'Non-Smoking', 'Prefers a smoke-free environment');
INSERT INTO guest_preference VALUES (55, 19, 'Room Type', 'Suite', 'For long stays with separate living area');
INSERT INTO guest_preference VALUES (56, 19, 'Bed Type', 'King', 'Large bed for a restful stay');
INSERT INTO guest_preference VALUES (57, 19, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke for health reasons');
INSERT INTO guest_preference VALUES (58, 20, 'Room Type', 'Studio', 'Compact, great for solo travelers');
INSERT INTO guest_preference VALUES (59, 20, 'Bed Type', 'Queen', 'Good size for individual comfort');
INSERT INTO guest_preference VALUES (60, 20, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke due to allergies');
INSERT INTO guest_preference VALUES (61, 21, 'Room Type', 'Penthouse', 'Top-tier room with a breathtaking view');
INSERT INTO guest_preference VALUES (62, 21, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (63, 21, 'Smoking Preference', 'Non-Smoking', 'No smoking inside room');
INSERT INTO guest_preference VALUES (64, 22, 'Room Type', 'Suite', 'Spacious, with additional living area');
INSERT INTO guest_preference VALUES (65, 22, 'Bed Type', 'Double', 'Standard size for two guests');
INSERT INTO guest_preference VALUES (66, 22, 'Smoking Preference', 'Smoking', 'Occasional smoker');
INSERT INTO guest_preference VALUES (67, 23, 'Room Type', 'Standard', 'Basic with no extra features');
INSERT INTO guest_preference VALUES (68, 23, 'Bed Type', 'Single', 'Ideal for one guest');
INSERT INTO guest_preference VALUES (69, 23, 'Smoking Preference', 'Non-Smoking', 'Allergy to smoke');
INSERT INTO guest_preference VALUES (70, 24, 'Room Type', 'Deluxe', 'Premium room with additional amenities');
INSERT INTO guest_preference VALUES (71, 24, 'Bed Type', 'Queen', 'Good for a couple or solo traveler');
INSERT INTO guest_preference VALUES (72, 24, 'Smoking Preference', 'Non-Smoking', 'Smoke-free environment preferred');
INSERT INTO guest_preference VALUES (73, 25, 'Room Type', 'Studio', 'Efficient and space-saving for short stays');
INSERT INTO guest_preference VALUES (74, 25, 'Bed Type', 'Double', 'Perfect for a couple or solo traveler');
INSERT INTO guest_preference VALUES (75, 25, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (76, 26, 'Room Type', 'Suite', 'Luxury suite with ample space');
INSERT INTO guest_preference VALUES (77, 26, 'Bed Type', 'King', 'Large and comfortable for long stays');
INSERT INTO guest_preference VALUES (78, 26, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke for personal health');
INSERT INTO guest_preference VALUES (79, 27, 'Room Type', 'Standard', 'Simple, no-frills room');
INSERT INTO guest_preference VALUES (80, 27, 'Bed Type', 'Single', 'Compact for a single guest');
INSERT INTO guest_preference VALUES (81, 27, 'Smoking Preference', 'Non-Smoking', 'Does not tolerate smoke');
INSERT INTO guest_preference VALUES (82, 28, 'Room Type', 'Deluxe', 'High-end room with extra features');
INSERT INTO guest_preference VALUES (83, 28, 'Bed Type', 'Queen', 'Ideal for two guests');
INSERT INTO guest_preference VALUES (84, 28, 'Smoking Preference', 'Non-Smoking', 'Prefers a smoke-free environment');
INSERT INTO guest_preference VALUES (85, 29, 'Room Type', 'Suite', 'Perfect for extended stays with a kitchen');
INSERT INTO guest_preference VALUES (86, 29, 'Bed Type', 'King', 'Large, comfortable bed for a restful stay');
INSERT INTO guest_preference VALUES (87, 29, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke for health reasons');
INSERT INTO guest_preference VALUES (88, 30, 'Room Type', 'Studio', 'Compact with everything one needs');
INSERT INTO guest_preference VALUES (89, 30, 'Bed Type', 'Queen', 'Comfortable for two guests');
INSERT INTO guest_preference VALUES (90, 30, 'Smoking Preference', 'Non-Smoking', 'Health-conscious, smoke-free environment');
INSERT INTO guest_preference VALUES (91, 31, 'Room Type', 'Penthouse', 'Top-floor with an amazing view');
INSERT INTO guest_preference VALUES (92, 31, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (93, 31, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke due to health reasons');
INSERT INTO guest_preference VALUES (94, 32, 'Room Type', 'Suite', 'Spacious with a separate living area');
INSERT INTO guest_preference VALUES (95, 32, 'Bed Type', 'Queen', 'Comfortable for two guests');
INSERT INTO guest_preference VALUES (96, 32, 'Smoking Preference', 'Smoking', 'Occasionally enjoys smoking');
INSERT INTO guest_preference VALUES (97, 33, 'Room Type', 'Standard', 'Compact and functional for short stays');
INSERT INTO guest_preference VALUES (98, 33, 'Bed Type', 'Double', 'Perfect for a couple');
INSERT INTO guest_preference VALUES (99, 33, 'Smoking Preference', 'Non-Smoking', 'Health-conscious, prefers non-smoking');
INSERT INTO guest_preference VALUES (100, 34, 'Room Type', 'Deluxe', 'Spacious and luxurious');
INSERT INTO guest_preference VALUES (101, 34, 'Bed Type', 'King', 'Large bed for ultimate relaxation');
INSERT INTO guest_preference VALUES (102, 34, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (103, 35, 'Room Type', 'Studio', 'Compact and convenient for solo travelers');
INSERT INTO guest_preference VALUES (104, 35, 'Bed Type', 'Queen', 'Ideal for short stays');
INSERT INTO guest_preference VALUES (105, 35, 'Smoking Preference', 'Non-Smoking', 'Allergy to smoke');
INSERT INTO guest_preference VALUES (106, 36, 'Room Type', 'Suite', 'Spacious with a great view');
INSERT INTO guest_preference VALUES (107, 36, 'Bed Type', 'King', 'Perfect for comfort during long stays');
INSERT INTO guest_preference VALUES (108, 36, 'Smoking Preference', 'Smoking', 'Occasional smoker');
INSERT INTO guest_preference VALUES (109, 37, 'Room Type', 'Standard', 'Basic room with all essential amenities');
INSERT INTO guest_preference VALUES (110, 37, 'Bed Type', 'Single', 'For solo travelers');
INSERT INTO guest_preference VALUES (111, 37, 'Smoking Preference', 'Non-Smoking', 'Prefers no smoking due to allergies');
INSERT INTO guest_preference VALUES (112, 38, 'Room Type', 'Deluxe', 'Premium room with luxurious amenities');
INSERT INTO guest_preference VALUES (113, 38, 'Bed Type', 'Double', 'Comfortable for two people');
INSERT INTO guest_preference VALUES (114, 38, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke');
INSERT INTO guest_preference VALUES (115, 39, 'Room Type', 'Penthouse', 'Top-floor luxury with a great view');
INSERT INTO guest_preference VALUES (116, 39, 'Bed Type', 'King', 'Large bed for extra comfort');
INSERT INTO guest_preference VALUES (117, 39, 'Smoking Preference', 'Non-Smoking', 'No tolerance for smoke');
INSERT INTO guest_preference VALUES (118, 40, 'Room Type', 'Suite', 'Spacious with separate living areas');
INSERT INTO guest_preference VALUES (119, 40, 'Bed Type', 'Queen', 'Ideal for two guests');
INSERT INTO guest_preference VALUES (120, 40, 'Smoking Preference', 'Non-Smoking', 'Prefers a smoke-free environment');
INSERT INTO guest_preference VALUES (121, 41, 'Room Type', 'Standard', 'Functional and simple for a short stay');
INSERT INTO guest_preference VALUES (122, 41, 'Bed Type', 'Single', 'Compact and efficient');
INSERT INTO guest_preference VALUES (123, 41, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke');
INSERT INTO guest_preference VALUES (124, 42, 'Room Type', 'Deluxe', 'Luxury room with a scenic view');
INSERT INTO guest_preference VALUES (125, 42, 'Bed Type', 'King', 'Preferred for large spaces');
INSERT INTO guest_preference VALUES (126, 42, 'Smoking Preference', 'Non-Smoking', 'No smoking due to asthma');
INSERT INTO guest_preference VALUES (127, 43, 'Room Type', 'Studio', 'Compact and convenient');
INSERT INTO guest_preference VALUES (128, 43, 'Bed Type', 'Double', 'Comfortable for short stays');
INSERT INTO guest_preference VALUES (129, 43, 'Smoking Preference', 'Non-Smoking', 'Smoke-free environment preferred');
INSERT INTO guest_preference VALUES (130, 44, 'Room Type', 'Suite', 'Luxury with a lot of space');
INSERT INTO guest_preference VALUES (131, 44, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (132, 44, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke for health reasons');
INSERT INTO guest_preference VALUES (133, 45, 'Room Type', 'Standard', 'Basic room with necessary amenities');
INSERT INTO guest_preference VALUES (134, 45, 'Bed Type', 'Single', 'Perfect for one guest');
INSERT INTO guest_preference VALUES (135, 45, 'Smoking Preference', 'Non-Smoking', 'Prefers non-smoking areas');
INSERT INTO guest_preference VALUES (136, 46, 'Room Type', 'Deluxe', 'Spacious with premium features');
INSERT INTO guest_preference VALUES (137, 46, 'Bed Type', 'Double', 'Good for two guests');
INSERT INTO guest_preference VALUES (138, 46, 'Smoking Preference', 'Non-Smoking', 'No smoking');
INSERT INTO guest_preference VALUES (139, 47, 'Room Type', 'Penthouse', 'Top-floor suite with a view');
INSERT INTO guest_preference VALUES (140, 47, 'Bed Type', 'King', 'Extra-large bed');
INSERT INTO guest_preference VALUES (141, 47, 'Smoking Preference', 'Smoking', 'Occasional smoker');
INSERT INTO guest_preference VALUES (142, 48, 'Room Type', 'Suite', 'Perfect for long stays with ample space');
INSERT INTO guest_preference VALUES (143, 48, 'Bed Type', 'King', 'Spacious for ultimate comfort');
INSERT INTO guest_preference VALUES (144, 48, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke');
INSERT INTO guest_preference VALUES (145, 49, 'Room Type', 'Standard', 'Functional room for short stays');
INSERT INTO guest_preference VALUES (146, 49, 'Bed Type', 'Single', 'Simple for a solo traveler');
INSERT INTO guest_preference VALUES (147, 49, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke');
INSERT INTO guest_preference VALUES (148, 50, 'Room Type', 'Deluxe', 'Luxurious with additional features');
INSERT INTO guest_preference VALUES (149, 50, 'Bed Type', 'Queen', 'Comfortable for two guests');
INSERT INTO guest_preference VALUES (150, 50, 'Smoking Preference', 'Non-Smoking', 'Does not smoke');
INSERT INTO guest_preference VALUES (151, 51, 'Room Type', 'Suite', 'Spacious and perfect for business stays');
INSERT INTO guest_preference VALUES (152, 51, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (153, 51, 'Smoking Preference', 'Non-Smoking', 'No tolerance for smoke');
INSERT INTO guest_preference VALUES (154, 52, 'Room Type', 'Studio', 'Compact and functional for short stays');
INSERT INTO guest_preference VALUES (155, 52, 'Bed Type', 'Double', 'Good size for two people');
INSERT INTO guest_preference VALUES (156, 52, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (157, 53, 'Room Type', 'Standard', 'Efficient and basic for a short visit');
INSERT INTO guest_preference VALUES (158, 53, 'Bed Type', 'Single', 'Small but comfortable for one person');
INSERT INTO guest_preference VALUES (159, 53, 'Smoking Preference', 'Non-Smoking', 'Avoids smoking');
INSERT INTO guest_preference VALUES (160, 54, 'Room Type', 'Deluxe', 'Premium room with upscale amenities');
INSERT INTO guest_preference VALUES (161, 54, 'Bed Type', 'King', 'Extra-large bed for a good nights sleep');
INSERT INTO guest_preference VALUES (162, 54, 'Smoking Preference', 'Non-Smoking', 'Smoke-free for personal preference');
INSERT INTO guest_preference VALUES (163, 55, 'Room Type', 'Penthouse', 'Luxury suite with a top-floor view');
INSERT INTO guest_preference VALUES (164, 55, 'Bed Type', 'King', 'Large, luxurious bed');
INSERT INTO guest_preference VALUES (165, 55, 'Smoking Preference', 'Non-Smoking', 'No smoking');
INSERT INTO guest_preference VALUES (166, 56, 'Room Type', 'Suite', 'Great for business trips with office space');
INSERT INTO guest_preference VALUES (167, 56, 'Bed Type', 'Queen', 'Comfortable for two guests');
INSERT INTO guest_preference VALUES (168, 56, 'Smoking Preference', 'Non-Smoking', 'Prefers smoke-free environment');
INSERT INTO guest_preference VALUES (169, 57, 'Room Type', 'Standard', 'Basic room with essentials');
INSERT INTO guest_preference VALUES (170, 57, 'Bed Type', 'Single', 'For solo guests');
INSERT INTO guest_preference VALUES (171, 57, 'Smoking Preference', 'Non-Smoking', 'Prefers non-smoking rooms');
INSERT INTO guest_preference VALUES (172, 58, 'Room Type', 'Deluxe', 'Luxurious with scenic views');
INSERT INTO guest_preference VALUES (173, 58, 'Bed Type', 'Double', 'Comfortable for two guests');
INSERT INTO guest_preference VALUES (174, 58, 'Smoking Preference', 'Non-Smoking', 'No smoking allowed');
INSERT INTO guest_preference VALUES (175, 59, 'Room Type', 'Studio', 'Compact with necessary amenities');
INSERT INTO guest_preference VALUES (176, 59, 'Bed Type', 'Double', 'Great for a couple');
INSERT INTO guest_preference VALUES (177, 59, 'Smoking Preference', 'Non-Smoking', 'No smoking');
INSERT INTO guest_preference VALUES (178, 60, 'Room Type', 'Suite', 'Spacious and well-equipped for extended stays');
INSERT INTO guest_preference VALUES (179, 60, 'Bed Type', 'King', 'Large bed for long-term comfort');
INSERT INTO guest_preference VALUES (180, 60, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke due to health reasons');
INSERT INTO guest_preference VALUES (181, 61, 'Room Type', 'Standard', 'Simple room for a quick stay');
INSERT INTO guest_preference VALUES (182, 61, 'Bed Type', 'Single', 'Compact, perfect for one person');
INSERT INTO guest_preference VALUES (183, 61, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (184, 62, 'Room Type', 'Deluxe', 'Premium features and large space');
INSERT INTO guest_preference VALUES (185, 62, 'Bed Type', 'Queen', 'Comfortable for a couple');
INSERT INTO guest_preference VALUES (186, 62, 'Smoking Preference', 'Non-Smoking', 'Smoke-free preference');
INSERT INTO guest_preference VALUES (187, 63, 'Room Type', 'Suite', 'Perfect for business stays with a desk');
INSERT INTO guest_preference VALUES (188, 63, 'Bed Type', 'King', 'Large bed for relaxation');
INSERT INTO guest_preference VALUES (189, 63, 'Smoking Preference', 'Non-Smoking', 'No smoking due to health concerns');
INSERT INTO guest_preference VALUES (190, 64, 'Room Type', 'Standard', 'Efficient for short stays');
INSERT INTO guest_preference VALUES (191, 64, 'Bed Type', 'Single', 'Compact and comfortable');
INSERT INTO guest_preference VALUES (192, 64, 'Smoking Preference', 'Non-Smoking', 'Prefers non-smoking environment');
INSERT INTO guest_preference VALUES (193, 65, 'Room Type', 'Studio', 'Compact, great for solo travelers');
INSERT INTO guest_preference VALUES (194, 65, 'Bed Type', 'Queen', 'Comfortable for two people');
INSERT INTO guest_preference VALUES (195, 65, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (196, 66, 'Room Type', 'Deluxe', 'Luxurious room with premium features');
INSERT INTO guest_preference VALUES (197, 66, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (198, 66, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke due to asthma');
INSERT INTO guest_preference VALUES (199, 67, 'Room Type', 'Penthouse', 'Top floor with an amazing view');
INSERT INTO guest_preference VALUES (200, 67, 'Bed Type', 'King', 'Large, luxurious bed');
INSERT INTO guest_preference VALUES (201, 67, 'Smoking Preference', 'Non-Smoking', 'No smoking due to allergies');
INSERT INTO guest_preference VALUES (202, 68, 'Room Type', 'Suite', 'Spacious with multiple living areas');
INSERT INTO guest_preference VALUES (203, 68, 'Bed Type', 'Queen', 'Comfortable for two');
INSERT INTO guest_preference VALUES (204, 68, 'Smoking Preference', 'Non-Smoking', 'Prefers a smoke-free environment');
INSERT INTO guest_preference VALUES (205, 69, 'Room Type', 'Standard', 'Basic but comfortable');
INSERT INTO guest_preference VALUES (206, 69, 'Bed Type', 'Single', 'Ideal for solo travelers');
INSERT INTO guest_preference VALUES (207, 69, 'Smoking Preference', 'Non-Smoking', 'Does not smoke');
INSERT INTO guest_preference VALUES (208, 70, 'Room Type', 'Deluxe', 'Spacious with great amenities');
INSERT INTO guest_preference VALUES (209, 70, 'Bed Type', 'Queen', 'Comfortable for two guests');
INSERT INTO guest_preference VALUES (210, 70, 'Smoking Preference', 'Non-Smoking', 'Smoke-free preferred');
INSERT INTO guest_preference VALUES (211, 71, 'Room Type', 'Penthouse', 'Luxury with scenic views');
INSERT INTO guest_preference VALUES (212, 71, 'Bed Type', 'King', 'Large bed for extra comfort');
INSERT INTO guest_preference VALUES (213, 71, 'Smoking Preference', 'Non-Smoking', 'No smoking allowed');
INSERT INTO guest_preference VALUES (214, 72, 'Room Type', 'Suite', 'Ideal for extended stays with extra space');
INSERT INTO guest_preference VALUES (215, 72, 'Bed Type', 'King', 'Large, comfortable bed');
INSERT INTO guest_preference VALUES (216, 72, 'Smoking Preference', 'Non-Smoking', 'Avoids smoking');
INSERT INTO guest_preference VALUES (217, 73, 'Room Type', 'Standard', 'Compact and simple for short stays');
INSERT INTO guest_preference VALUES (218, 73, 'Bed Type', 'Single', 'Comfortable for one person');
INSERT INTO guest_preference VALUES (219, 73, 'Smoking Preference', 'Non-Smoking', 'Smoke-free preference');
INSERT INTO guest_preference VALUES (220, 74, 'Room Type', 'Deluxe', 'Premium with a great view');
INSERT INTO guest_preference VALUES (221, 74, 'Bed Type', 'King', 'Large bed for relaxation');
INSERT INTO guest_preference VALUES (222, 74, 'Smoking Preference', 'Non-Smoking', 'Sensitive to smoke');
INSERT INTO guest_preference VALUES (223, 75, 'Room Type', 'Penthouse', 'Top-floor luxury');
INSERT INTO guest_preference VALUES (224, 75, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (225, 75, 'Smoking Preference', 'Smoking', 'Occasional smoker');
INSERT INTO guest_preference VALUES (226, 76, 'Room Type', 'Suite', 'Great for long-term stays with extra space');
INSERT INTO guest_preference VALUES (227, 76, 'Bed Type', 'Queen', 'Comfortable for two people');
INSERT INTO guest_preference VALUES (228, 76, 'Smoking Preference', 'Non-Smoking', 'Smoke-free');
INSERT INTO guest_preference VALUES (229, 77, 'Room Type', 'Standard', 'Efficient for short stays');
INSERT INTO guest_preference VALUES (230, 77, 'Bed Type', 'Single', 'Perfect for one guest');
INSERT INTO guest_preference VALUES (231, 77, 'Smoking Preference', 'Non-Smoking', 'Avoids smoke');
INSERT INTO guest_preference VALUES (232, 78, 'Room Type', 'Deluxe', 'Spacious with luxurious amenities');
INSERT INTO guest_preference VALUES (233, 78, 'Bed Type', 'Double', 'Ideal for two guests');
INSERT INTO guest_preference VALUES (234, 78, 'Smoking Preference', 'Non-Smoking', 'No smoking allowed');
INSERT INTO guest_preference VALUES (235, 79, 'Room Type', 'Penthouse', 'Top-floor suite with great views');
INSERT INTO guest_preference VALUES (236, 79, 'Bed Type', 'King', 'Large and comfortable');
INSERT INTO guest_preference VALUES (237, 79, 'Smoking Preference', 'Non-Smoking', 'Smoke-free due to health concerns');
INSERT INTO guest_preference VALUES (238, 80, 'Room Type', 'Suite', 'Luxury with additional living space');
INSERT INTO guest_preference VALUES (239, 80, 'Bed Type', 'King', 'Large bed for ultimate comfort');
INSERT INTO guest_preference VALUES (240, 80, 'Smoking Preference', 'Non-Smoking', 'Avoids smoking for health reasons');
INSERT INTO guest_preference VALUES (241, 81, 'Room Type', 'Suite', 'Spacious for business trips');
INSERT INTO guest_preference VALUES (242, 81, 'Bed Type', 'Queen', 'Comfortable for two');
INSERT INTO guest_preference VALUES (243, 81, 'Smoking Preference', 'Non-Smoking', 'Prefers clean air');

INSERT INTO guest_preference VALUES (244, 82, 'Room Type', 'Deluxe', 'Premium room with modern design');
INSERT INTO guest_preference VALUES (245, 82, 'Bed Type', 'King', 'Extra comfort');
INSERT INTO guest_preference VALUES (246, 82, 'Smoking Preference', 'Non-Smoking', 'Allergic to smoke');
INSERT INTO guest_preference VALUES (247, 83, 'Room Type', 'Standard', 'Affordable and simple');
INSERT INTO guest_preference VALUES (248, 83, 'Bed Type', 'Single', 'Solo traveler');
INSERT INTO guest_preference VALUES (249, 83, 'Smoking Preference', 'Non-Smoking', 'Health-conscious guest');
INSERT INTO guest_preference VALUES (250, 84, 'Room Type', 'Studio', 'Ideal for short stays');
INSERT INTO guest_preference VALUES (251, 84, 'Bed Type', 'Double', 'Enough space for two');
INSERT INTO guest_preference VALUES (252, 84, 'Smoking Preference', 'Non-Smoking', 'Smoke-free zone preferred');
INSERT INTO guest_preference VALUES (253, 85, 'Room Type', 'Penthouse', 'Top-tier luxury');
INSERT INTO guest_preference VALUES (254, 85, 'Bed Type', 'King', 'High-end comfort');
INSERT INTO guest_preference VALUES (255, 85, 'Smoking Preference', 'Non-Smoking', 'Luxury without smoke');
INSERT INTO guest_preference VALUES (256, 86, 'Room Type', 'Suite', 'Spacious with working desk');
INSERT INTO guest_preference VALUES (257, 86, 'Bed Type', 'Queen', 'Comfortable and cozy');
INSERT INTO guest_preference VALUES (258, 86, 'Smoking Preference', 'Non-Smoking', 'Non-smoker');
INSERT INTO guest_preference VALUES (259, 87, 'Room Type', 'Standard', 'Basic with good value');
INSERT INTO guest_preference VALUES (260, 87, 'Bed Type', 'Single', 'Budget stay');
INSERT INTO guest_preference VALUES (261, 87, 'Smoking Preference', 'Non-Smoking', 'Prefers smoke-free lodging');
INSERT INTO guest_preference VALUES (262, 88, 'Room Type', 'Deluxe', 'Elegant with great view');
INSERT INTO guest_preference VALUES (263, 88, 'Bed Type', 'Double', 'Perfect for couple');
INSERT INTO guest_preference VALUES (264, 88, 'Smoking Preference', 'Non-Smoking', 'No smoking preferred');
INSERT INTO guest_preference VALUES (265, 89, 'Room Type', 'Penthouse', 'Top floor with panoramic view');
INSERT INTO guest_preference VALUES (266, 89, 'Bed Type', 'King', 'Ultimate luxury bed');
INSERT INTO guest_preference VALUES (267, 89, 'Smoking Preference', 'Non-Smoking', 'Clean air environment');
INSERT INTO guest_preference VALUES (268, 90, 'Room Type', 'Suite', 'Business-friendly with amenities');
INSERT INTO guest_preference VALUES (269, 90, 'Bed Type', 'Queen', 'Professional comfort');
INSERT INTO guest_preference VALUES (270, 90, 'Smoking Preference', 'Non-Smoking', 'Smoke-free workplace');
INSERT INTO guest_preference VALUES (271, 91, 'Room Type', 'Standard', 'Simple and efficient');
INSERT INTO guest_preference VALUES (272, 91, 'Bed Type', 'Single', 'Compact for solo guest');
INSERT INTO guest_preference VALUES (273, 91, 'Smoking Preference', 'Non-Smoking', 'No smoking tolerance');
INSERT INTO guest_preference VALUES (274, 92, 'Room Type', 'Deluxe', 'Premium with scenic views');
INSERT INTO guest_preference VALUES (275, 92, 'Bed Type', 'King', 'Spacious for relaxation');
INSERT INTO guest_preference VALUES (276, 92, 'Smoking Preference', 'Non-Smoking', 'Health-conscious choice');
INSERT INTO guest_preference VALUES (277, 93, 'Room Type', 'Studio', 'Compact and well-designed');
INSERT INTO guest_preference VALUES (278, 93, 'Bed Type', 'Double', 'Good for short stays');
INSERT INTO guest_preference VALUES (279, 93, 'Smoking Preference', 'Non-Smoking', 'Prefers fresh air');
INSERT INTO guest_preference VALUES (280, 94, 'Room Type', 'Suite', 'Luxury with separate living area');
INSERT INTO guest_preference VALUES (281, 94, 'Bed Type', 'King', 'Large bed for comfort');
INSERT INTO guest_preference VALUES (282, 94, 'Smoking Preference', 'Non-Smoking', 'No smoking policy');
INSERT INTO guest_preference VALUES (283, 95, 'Room Type', 'Standard', 'Basic accommodation needs');
INSERT INTO guest_preference VALUES (284, 95, 'Bed Type', 'Single', 'Perfect for one person');
INSERT INTO guest_preference VALUES (285, 95, 'Smoking Preference', 'Non-Smoking', 'Avoids cigarette smoke');
INSERT INTO guest_preference VALUES (286, 96, 'Room Type', 'Deluxe', 'High-quality with extras');
INSERT INTO guest_preference VALUES (287, 96, 'Bed Type', 'Queen', 'Comfortable for two');
INSERT INTO guest_preference VALUES (288, 96, 'Smoking Preference', 'Non-Smoking', 'Smoke-free environment');
INSERT INTO guest_preference VALUES (289, 97, 'Room Type', 'Penthouse', 'Top-floor premium suite');
INSERT INTO guest_preference VALUES (290, 97, 'Bed Type', 'King', 'Luxury bedding');
INSERT INTO guest_preference VALUES (291, 97, 'Smoking Preference', 'Non-Smoking', 'Clean air preferred');
INSERT INTO guest_preference VALUES (292, 98, 'Room Type', 'Suite', 'Spacious for extended stays');
INSERT INTO guest_preference VALUES (293, 98, 'Bed Type', 'Queen', 'Comfortable sleeping');
INSERT INTO guest_preference VALUES (294, 98, 'Smoking Preference', 'Non-Smoking', 'No smoking allowed');
INSERT INTO guest_preference VALUES (295, 99, 'Room Type', 'Standard', 'Functional and affordable');
INSERT INTO guest_preference VALUES (296, 99, 'Bed Type', 'Single', 'Solo traveler needs');
INSERT INTO guest_preference VALUES (297, 99, 'Smoking Preference', 'Non-Smoking', 'Prefers smoke-free rooms');
INSERT INTO guest_preference VALUES (298, 100, 'Room Type', 'Deluxe', 'Premium amenities included');
INSERT INTO guest_preference VALUES (299, 100, 'Bed Type', 'King', 'Large comfortable bed');
INSERT INTO guest_preference VALUES (300, 100, 'Smoking Preference', 'Non-Smoking', 'Health and comfort priority');


-- ---------Service-------------
-- service table INSERT STATEMENTS
-- INSERT statements for services data
-- Table structure: service_id, service_name, description, price, category, is_available

-- Insert statements for all services with doubled hourly rates
INSERT INTO service (service_id, service_name, description, price, category, is_available, hourly_rate) VALUES
(1, 'Pet Sitting', 'In-room pet sitting for up to 4 hours.', 20.00, 'Other', 1, 40.00),
(2, 'Babysitting Service', 'Professional babysitting (per hour).', 18.00, 'Other', 1, 36.00),
(3, 'Business Center Access', 'Access to computers, printing, and office equip...', 10.00, 'Business', 1, 20.00),
(4, 'Room Service', 'In-room dining with a selection of local and inter...', 25.00, 'Dining', 1, 50.00),
(5, 'Breakfast Buffet', 'All-you-can-eat breakfast served daily from 6a...', 15.00, 'Dining', 1, 30.00),
(6, 'Mini Bar Refill', 'Restock of in-room mini bar items.', 10.00, 'Dining', 1, 20.00),
(7, 'Private Chef Dinner', 'Custom 3-course meal prepared in-suite by a ch...', 120.00, 'Dining', 1, 240.00),
(8, 'Massage Therapy', '60-minute full-body massage by certified therap...', 60.00, 'Spa', 1, 120.00),
(9, 'Facial Treatment', 'Deep-cleansing facial with organic skincare prod...', 45.00, 'Spa', 1, 90.00),
(10, 'Sauna Access', 'All-day access to hotel sauna and steam room.', 20.00, 'Spa', 1, 40.00),
(11, 'Yoga Session', 'Guided morning yoga by the poolside.', 18.00, 'Wellness', 1, 36.00),
(12, 'Daily Housekeeping', 'Regular room cleaning and towel replacement.', 0.00, 'Housek...', 1, 0.00),
(13, 'Laundry Service', 'Washed, dried, and folded laundry within 24 hou...', 12.00, 'Housek...', 1, 24.00),
(14, 'Ironing Service', 'Clothes professionally ironed and pressed.', 8.00, 'Housek...', 1, 16.00),
(15, 'Movie Rental', 'On-demand access to latest HD movies.', 5.00, 'Entertain...', 1, 10.00),
(16, 'Live Band Access', 'Entrance to nightly live jazz performances.', 10.00, 'Entertain...', 1, 20.00),
(17, 'Gaming Console Rental', 'PlayStation 5 or Xbox with selection of games.', 15.00, 'Entertain...', 1, 30.00),
(18, 'Airport Shuttle', 'Round-trip shuttle service to and from airport.', 35.00, 'Transpo...', 1, 70.00),
(19, 'City Tour', 'Half-day guided city tour with group transport.', 50.00, 'Transpo...', 1, 100.00),
(20, 'Car Rental', 'Daily car rental including insurance and taxes.', 100.00, 'Transpo...', 1, 200.00),
(21, 'Pet Sitting', 'In-room pet sitting for up to 4 hours.', 20.00, 'Other', 1, 40.00),
(22, 'Babysitting Service', 'Professional babysitting (per hour).', 18.00, 'Other', 1, 36.00),
(23, 'Business Center Access', 'Access to computers, printing, and office equip...', 10.00, 'Business', 1, 20.00)
ON DUPLICATE KEY UPDATE hourly_rate = VALUES(hourly_rate);
select * from service;
-- Summary of inserted data:
-- Total services: 23
-- Price range: $0.00 (Daily Housekeeping) to $120.00 (Private Chef Dinner)
-- Categories: Other (4), Business (2), Dining (4), Spa (3), Wellness (1), Housekeeping (3), Entertainment (3), Transportation (3)
-- All services are currently available (is_available = 1)
-- Note: Services 1 & 21, 2 & 22, and 3 & 23 appear to be duplicates


-- -----Reservation------
-- Reservations table INSERT statements
TRUNCATE TABLE reservation;
DROP TABLE reservation;
INSERT INTO reservation VALUES (1, 54, 22, '2024-09-01', '2024-09-05', 2, 520.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (2, 8, 33, '2024-09-03', '2024-09-07', 1, 400.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (3, 21, 41, '2024-09-05', '2024-09-10', 2, 620.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (4, 37, 44, '2024-09-07', '2024-09-11', 1, 450.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (5, 12, 53, '2024-09-10', '2024-09-14', 3, 710.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (6, 96, 55, '2024-09-11', '2024-09-15', 2, 580.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (7, 4, 31, '2024-09-13', '2024-09-17', 4, 800.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (8, 89, 25, '2024-09-15', '2024-09-18', 1, 500.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (9, 70, 24, '2024-09-16', '2024-09-20', 2, 470.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (10, 43, 53, '2024-09-18', '2024-09-22', 2, 510.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (11, 51, 63, '2024-09-19', '2024-09-23', 1, 400.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (12, 23, 34, '2024-09-20', '2024-09-24', 3, 770.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (13, 14, 102, '2024-09-22', '2024-09-26', 1, 330.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (14, 35, 43, '2024-09-24', '2024-09-28', 1, 440.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (15, 7, 21, '2024-09-25', '2024-09-29', 2, 510.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (16, 100, 45, '2024-09-27', '2024-10-01', 2, 570.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (17, 18, 31, '2024-09-28', '2024-10-02', 4, 820.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (18, 85, 52, '2024-09-30', '2024-10-04', 2, 360.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (19, 65, 94, '2024-10-01', '2024-10-05', 2, 630.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (20, 56, 103, '2024-10-02', '2024-10-07', 3, 700.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (21, 1, 91, '2024-10-05', '2024-10-10', 2, 600.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (22, 28, 64, '2024-10-07', '2024-10-11', 1, 470.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (23, 77, 75, '2024-10-08', '2024-10-12', 3, 780.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (24, 60, 42, '2024-10-10', '2024-10-14', 1, 305.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (25, 45, 54, '2024-10-12', '2024-10-15', 2, 500.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (26, 90, 101, '2024-10-13', '2024-10-17', 4, 840.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (27, 32, 23, '2024-10-15', '2024-10-19', 2, 520.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (28, 41, 53, '2024-10-16', '2024-10-20', 1, 410.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (29, 73, 33, '2024-10-18', '2024-10-22', 3, 700.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (30, 15, 22, '2024-10-20', '2024-10-24', 2, 450.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (31, 87, 92, '2024-10-22', '2024-10-26', 1, 310.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (32, 26, 81, '2024-10-23', '2024-10-27', 2, 550.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (33, 69, 65, '2024-10-25', '2024-10-29', 3, 780.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (34, 98, 42, '2024-10-27', '2024-10-31', 1, 300.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (35, 6, 54, '2024-10-28', '2024-11-01', 4, 810.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (36, 84, 52, '2024-10-29', '2024-11-02', 2, 470.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (37, 50, 33, '2024-11-01', '2024-11-05', 1, 420.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (38, 9, 71, '2024-11-02', '2024-11-06', 3, 720.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (39, 38, 44, '2024-11-04', '2024-11-08', 2, 560.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (40, 64, 31, '2024-11-06', '2024-11-10', 1, 390.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (41, 77, 35, '2024-11-08', '2024-11-12', 2, 540.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (42, 30, 41, '2024-11-09', '2024-11-13', 1, 410.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (43, 58, 75, '2024-11-10', '2024-11-15', 3, 750.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (44, 22, 24, '2024-11-11', '2024-11-14', 2, 470.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (45, 39, 51, '2024-11-13', '2024-11-17', 1, 420.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);
INSERT INTO reservation VALUES (46, 11, 62, '2024-11-14', '2024-11-18', 2, 610.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 2);
INSERT INTO reservation VALUES (47, 84, 101, '2024-11-15', '2024-11-20', 4, 850.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 3);
INSERT INTO reservation VALUES (48, 48, 42, '2024-11-16', '2024-11-20', 2, 460.00, 'Cancelled', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 4);
INSERT INTO reservation VALUES (49, 67, 55, '2024-11-18', '2024-11-22', 3, 720.00, 'Confirmed', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 5);
INSERT INTO reservation VALUES (50, 5, 31, '2024-11-19', '2024-11-23', 1, 400.00, 'Pending', NULL, '2025-05-19 04:49:09', '2025-05-19 04:49:09', 1);

-- Update for my special_request column 
UPDATE reservation r
SET special_request = (
    SELECT GROUP_CONCAT(gp.preference_value SEPARATOR ', ')
    FROM Guest_Preference gp 
    WHERE gp.guest_id = r.guest_id
),
updated_at = NOW()
WHERE special_request IS NULL;

-- ================================================================================================================================

-- BOOKING_SERVICE 
-- booking_service
INSERT INTO booking_service VALUES (1, 54, 1, 1, '2024-09-01 10:30:00');
INSERT INTO booking_service VALUES (2, 8, 3, 2, '2024-09-03 14:15:00');
INSERT INTO booking_service VALUES (3, 21, 2, 3, '2024-09-05 09:45:00');
INSERT INTO booking_service VALUES (4, 37, 4, 4, '2024-09-07 16:20:00');
INSERT INTO booking_service VALUES (5, 12, 1, 5, '2024-09-10 11:00:00');
INSERT INTO booking_service VALUES (6, 96, 5, 6, '2024-09-11 13:30:00');
INSERT INTO booking_service VALUES (7, 4, 2, 7, '2024-09-13 08:15:00');
INSERT INTO booking_service VALUES (8, 89, 3, 8, '2024-09-15 15:45:00');
INSERT INTO booking_service VALUES (9, 70, 1, 9, '2024-09-16 12:20:00');
INSERT INTO booking_service VALUES (10, 43, 4, 10, '2024-09-18 17:00:00');
INSERT INTO booking_service VALUES (11, 51, 2, 11, '2024-09-19 10:15:00');
INSERT INTO booking_service VALUES (12, 23, 5, 12, '2024-09-20 14:30:00');
INSERT INTO booking_service VALUES (13, 14, 1, 13, '2024-09-22 09:00:00');
INSERT INTO booking_service VALUES (14, 35, 3, 14, '2024-09-24 16:45:00');
INSERT INTO booking_service VALUES (15, 7, 2, 15, '2024-09-25 11:30:00');
INSERT INTO booking_service VALUES (16, 100, 4, 16, '2024-09-27 13:15:00');
INSERT INTO booking_service VALUES (17, 18, 1, 17, '2024-09-28 08:45:00');
INSERT INTO booking_service VALUES (18, 85, 5, 18, '2024-09-30 15:20:00');
INSERT INTO booking_service VALUES (19, 65, 2, 19, '2024-10-01 12:00:00');
INSERT INTO booking_service VALUES (20, 56, 3, 20, '2024-10-02 17:30:00');
INSERT INTO booking_service VALUES (21, 1, 1, 21, '2024-10-05 10:45:00');
INSERT INTO booking_service VALUES (22, 28, 4, 22, '2024-10-07 14:15:00');
INSERT INTO booking_service VALUES (23, 77, 2, 23, '2024-10-08 09:30:00');
INSERT INTO booking_service VALUES (24, 60, 5, 24, '2024-10-10 16:00:00');
INSERT INTO booking_service VALUES (25, 45, 1, 25, '2024-10-12 11:15:00');
INSERT INTO booking_service VALUES (26, 90, 3, 26, '2024-10-13 13:45:00');
INSERT INTO booking_service VALUES (27, 32, 2, 27, '2024-10-15 08:30:00');
INSERT INTO booking_service VALUES (28, 41, 4, 28, '2024-10-16 15:00:00');
INSERT INTO booking_service VALUES (29, 73, 1, 29, '2024-10-18 12:30:00');
INSERT INTO booking_service VALUES (30, 15, 5, 30, '2024-10-20 17:15:00');
INSERT INTO booking_service VALUES (31, 87, 2, 31, '2024-10-22 10:00:00');
INSERT INTO booking_service VALUES (32, 26, 3, 32, '2024-10-23 14:45:00');
INSERT INTO booking_service VALUES (33, 69, 1, 33, '2024-10-25 09:15:00');
INSERT INTO booking_service VALUES (34, 98, 4, 34, '2024-10-27 16:30:00');
INSERT INTO booking_service VALUES (35, 6, 2, 35, '2024-10-28 11:45:00');
INSERT INTO booking_service VALUES (36, 84, 5, 36, '2024-10-29 13:00:00');
INSERT INTO booking_service VALUES (37, 50, 1, 37, '2024-11-01 08:15:00');
INSERT INTO booking_service VALUES (38, 9, 3, 38, '2024-11-02 15:30:00');
INSERT INTO booking_service VALUES (39, 38, 2, 39, '2024-11-04 12:15:00');
INSERT INTO booking_service VALUES (40, 64, 4, 40, '2024-11-06 17:45:00');
INSERT INTO booking_service VALUES (41, 77, 1, 41, '2024-11-08 10:30:00');
INSERT INTO booking_service VALUES (42, 30, 5, 42, '2024-11-09 14:00:00');
INSERT INTO booking_service VALUES (43, 58, 2, 43, '2024-11-10 09:45:00');
INSERT INTO booking_service VALUES (44, 22, 3, 44, '2024-11-11 16:15:00');
INSERT INTO booking_service VALUES (45, 39, 1, 45, '2024-11-13 11:00:00');
INSERT INTO booking_service VALUES (46, 11, 4, 46, '2024-11-14 13:30:00');
INSERT INTO booking_service VALUES (47, 81, 2, 47, '2024-11-15 08:45:00');
INSERT INTO booking_service VALUES (48, 48, 5, 48, '2024-11-16 15:15:00');
INSERT INTO booking_service VALUES (49, 67, 1, 49, '2024-11-18 12:45:00');
INSERT INTO booking_service VALUES (50, 5, 3, 50, '2024-11-19 17:00:00');

-- ================================================================================================================================

-- SERVICE_USAGE 
-- service_usage
INSERT INTO service_usage VALUES (1, 1, 1, '2024-09-01 11:00:00', '2024-09-01 13:00:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (2, 2, 3, '2024-09-03 15:00:00', '2024-09-03 16:30:00', 1, 75.00, 'completed');
INSERT INTO service_usage VALUES (3, 3, 2, '2024-09-05 10:30:00', '2024-09-05 12:30:00', 1, 100.00, 'completed');
INSERT INTO service_usage VALUES (4, 4, 4, '2024-09-07 17:00:00', '2024-09-07 18:00:00', 3, 90.00, 'completed');
INSERT INTO service_usage VALUES (5, 5, 1, '2024-09-10 12:00:00', '2024-09-10 14:30:00', 3, 150.00, 'completed');
INSERT INTO service_usage VALUES (6, 6, 5, '2024-09-11 14:00:00', '2024-09-11 15:00:00', 2, 80.00, 'completed');
INSERT INTO service_usage VALUES (7, 7, 2, '2024-09-13 09:00:00', '2024-09-13 11:00:00', 4, 200.00, 'completed');
INSERT INTO service_usage VALUES (8, 8, 3, '2024-09-15 16:30:00', '2024-09-15 17:30:00', 1, 50.00, 'completed');
INSERT INTO service_usage VALUES (9, 9, 1, '2024-09-16 13:00:00', '2024-09-16 15:00:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (10, 10, 4, '2024-09-18 18:00:00', '2024-09-18 19:30:00', 2, 90.00, 'completed');
INSERT INTO service_usage VALUES (11, 11, 2, '2024-09-19 11:00:00', '2024-09-19 12:00:00', 1, 50.00, 'completed');
INSERT INTO service_usage VALUES (12, 12, 5, '2024-09-20 15:00:00', '2024-09-20 16:30:00', 3, 120.00, 'completed');
INSERT INTO service_usage VALUES (13, 13, 1, '2024-09-22 10:00:00', '2024-09-22 11:30:00', 1, 60.00, 'completed');
INSERT INTO service_usage VALUES (14, 14, 3, '2024-09-24 17:30:00', '2024-09-24 18:30:00', 1, 50.00, 'completed');
INSERT INTO service_usage VALUES (15, 15, 2, '2024-09-25 12:15:00', '2024-09-25 14:15:00', 2, 100.00, 'completed');
INSERT INTO service_usage VALUES (16, 16, 4, '2024-09-27 14:00:00', '2024-09-27 16:00:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (17, 17, 1, '2024-09-28 09:30:00', '2024-09-28 12:00:00', 4, 240.00, 'completed');
INSERT INTO service_usage VALUES (18, 18, 5, '2024-09-30 16:00:00', '2024-09-30 17:00:00', 2, 80.00, 'completed');
INSERT INTO service_usage VALUES (19, 19, 2, '2024-10-01 12:45:00', '2024-10-01 14:45:00', 2, 100.00, 'completed');
INSERT INTO service_usage VALUES (20, 20, 3, '2024-10-02 18:15:00', '2024-10-02 19:45:00', 3, 112.50, 'completed');
INSERT INTO service_usage VALUES (21, 21, 1, '2024-10-05 11:30:00', '2024-10-05 13:30:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (22, 22, 4, '2024-10-07 15:00:00', '2024-10-07 16:00:00', 1, 30.00, 'completed');
INSERT INTO service_usage VALUES (23, 23, 2, '2024-10-08 10:15:00', '2024-10-08 13:15:00', 3, 150.00, 'completed');
INSERT INTO service_usage VALUES (24, 24, 5, '2024-10-10 16:45:00', '2024-10-10 18:15:00', 1, 40.00, 'completed');
INSERT INTO service_usage VALUES (25, 25, 1, '2024-10-12 12:00:00', '2024-10-12 14:00:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (26, 26, 3, '2024-10-13 14:30:00', '2024-10-13 16:00:00', 4, 225.00, 'completed');
INSERT INTO service_usage VALUES (27, 27, 2, '2024-10-15 09:15:00', '2024-10-15 10:15:00', 2, 50.00, 'completed');
INSERT INTO service_usage VALUES (28, 28, 4, '2024-10-16 15:45:00', '2024-10-16 17:15:00', 1, 45.00, 'completed');
INSERT INTO service_usage VALUES (29, 29, 1, '2024-10-18 13:15:00', '2024-10-18 15:45:00', 3, 180.00, 'completed');
INSERT INTO service_usage VALUES (30, 30, 5, '2024-10-20 18:00:00', '2024-10-20 19:00:00', 2, 80.00, 'completed');
INSERT INTO service_usage VALUES (31, 31, 2, '2024-10-22 10:45:00', '2024-10-22 12:45:00', 1, 100.00, 'completed');
INSERT INTO service_usage VALUES (32, 32, 3, '2024-10-23 15:30:00', '2024-10-23 16:30:00', 2, 75.00, 'completed');
INSERT INTO service_usage VALUES (33, 33, 1, '2024-10-25 10:00:00', '2024-10-25 12:30:00', 3, 180.00, 'completed');
INSERT INTO service_usage VALUES (34, 34, 4, '2024-10-27 17:15:00', '2024-10-27 18:15:00', 1, 30.00, 'completed');
INSERT INTO service_usage VALUES (35, 35, 2, '2024-10-28 12:30:00', '2024-10-28 14:30:00', 4, 200.00, 'completed');
INSERT INTO service_usage VALUES (36, 36, 5, '2024-10-29 13:45:00', '2024-10-29 15:15:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (37, 37, 1, '2024-11-01 09:00:00', '2024-11-01 10:30:00', 1, 60.00, 'completed');
INSERT INTO service_usage VALUES (38, 38, 3, '2024-11-02 16:15:00', '2024-11-02 18:15:00', 3, 225.00, 'completed');
INSERT INTO service_usage VALUES (39, 39, 2, '2024-11-04 13:00:00', '2024-11-04 14:00:00', 2, 50.00, 'completed');
INSERT INTO service_usage VALUES (40, 40, 4, '2024-11-06 18:30:00', '2024-11-06 20:00:00', 1, 45.00, 'completed');
INSERT INTO service_usage VALUES (41, 41, 1, '2024-11-08 11:15:00', '2024-11-08 13:15:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (42, 42, 5, '2024-11-09 14:45:00', '2024-11-09 16:15:00', 1, 40.00, 'completed');
INSERT INTO service_usage VALUES (43, 43, 2, '2024-11-10 10:30:00', '2024-11-10 13:30:00', 3, 150.00, 'completed');
INSERT INTO service_usage VALUES (44, 44, 3, '2024-11-11 17:00:00', '2024-11-11 18:00:00', 2, 75.00, 'completed');
INSERT INTO service_usage VALUES (45, 45, 1, '2024-11-13 11:45:00', '2024-11-13 14:15:00', 1, 90.00, 'completed');
INSERT INTO service_usage VALUES (46, 46, 4, '2024-11-14 14:15:00', '2024-11-14 15:45:00', 2, 90.00, 'completed');
INSERT INTO service_usage VALUES (47, 47, 2, '2024-11-15 09:30:00', '2024-11-15 11:30:00', 4, 200.00, 'completed');
INSERT INTO service_usage VALUES (48, 48, 5, '2024-11-16 16:00:00', '2024-11-16 17:30:00', 2, 120.00, 'completed');
INSERT INTO service_usage VALUES (49, 49, 1, '2024-11-18 13:30:00', '2024-11-18 15:00:00', 3, 135.00, 'completed');
INSERT INTO service_usage VALUES (50, 50, 3, '2024-11-19 17:45:00', '2024-11-19 19:15:00', 1, 112.50, 'completed');

-- ================================================================================================================================



-- BILL 
-- bill
INSERT INTO bill VALUES (1, 1, 520.00, 120.00, 64.00, 704.00, 'Paid', '2024-09-05 10:00:00', '2024-09-05 10:00:00', 'Bill for reservation 1');
INSERT INTO bill VALUES (2, 2, 400.00, 75.00, 47.50, 522.50, 'Pending', '2024-09-07 12:00:00', '2024-09-14 12:00:00', 'Bill for reservation 2');
INSERT INTO bill VALUES (3, 3, 620.00, 100.00, 72.00, 792.00, 'Pending', '2024-09-10 11:00:00', '2024-09-17 11:00:00', 'Bill for reservation 3');
INSERT INTO bill VALUES (4, 4, 450.00, 90.00, 54.00, 594.00, 'Cancelled', '2024-09-11 14:00:00', '2024-09-11 14:00:00', 'Bill for reservation 4');
INSERT INTO bill VALUES (5, 5, 710.00, 150.00, 86.00, 946.00, 'Paid', '2024-09-14 09:00:00', '2024-09-14 09:00:00', 'Bill for reservation 5');
INSERT INTO bill VALUES (6, 6, 580.00, 80.00, 66.00, 726.00, 'Pending', '2024-09-15 13:00:00', '2024-09-22 13:00:00', 'Bill for reservation 6');
INSERT INTO bill VALUES (7, 7, 800.00, 200.00, 100.00, 1100.00, 'Paid', '2024-09-17 15:00:00', '2024-09-17 15:00:00', 'Bill for reservation 7');
INSERT INTO bill VALUES (8, 8, 500.00, 50.00, 55.00, 605.00, 'Pending', '2024-09-18 16:00:00', '2024-09-25 16:00:00', 'Bill for reservation 8');
INSERT INTO bill VALUES (9, 9, 470.00, 120.00, 59.00, 649.00, 'Cancelled', '2024-09-20 12:00:00', '2024-09-20 12:00:00', 'Bill for reservation 9');
INSERT INTO bill VALUES (10, 10, 510.00, 90.00, 60.00, 660.00, 'Paid', '2024-09-22 14:00:00', '2024-09-22 14:00:00', 'Bill for reservation 10');
INSERT INTO bill VALUES (11, 11, 400.00, 50.00, 45.00, 495.00, 'Pending', '2024-09-23 11:00:00', '2024-09-30 11:00:00', 'Bill for reservation 11');
INSERT INTO bill VALUES (12, 12, 770.00, 120.00, 89.00, 979.00, 'Paid', '2024-09-24 13:00:00', '2024-09-24 13:00:00', 'Bill for reservation 12');
INSERT INTO bill VALUES (13, 13, 330.00, 60.00, 39.00, 429.00, 'Cancelled', '2024-09-26 10:00:00', '2024-09-26 10:00:00', 'Bill for reservation 13');
INSERT INTO bill VALUES (14, 14, 440.00, 50.00, 49.00, 539.00, 'Pending', '2024-09-28 12:00:00', '2024-10-05 12:00:00', 'Bill for reservation 14');
INSERT INTO bill VALUES (15, 15, 510.00, 100.00, 61.00, 671.00, 'Paid', '2024-09-29 14:00:00', '2024-09-29 14:00:00', 'Bill for reservation 15');
INSERT INTO bill VALUES (16, 16, 570.00, 120.00, 69.00, 759.00, 'Pending', '2024-10-01 15:00:00', '2024-10-08 15:00:00', 'Bill for reservation 16');
INSERT INTO bill VALUES (17, 17, 820.00, 240.00, 106.00, 1166.00, 'Paid', '2024-10-02 11:00:00', '2024-10-02 11:00:00', 'Bill for reservation 17');
INSERT INTO bill VALUES (18, 18, 360.00, 80.00, 44.00, 484.00, 'Pending', '2024-10-04 13:00:00', '2024-10-11 13:00:00', 'Bill for reservation 18');
INSERT INTO bill VALUES (19, 19, 630.00, 100.00, 73.00, 803.00, 'Cancelled', '2024-10-05 14:00:00', '2024-10-05 14:00:00', 'Bill for reservation 19');
INSERT INTO bill VALUES (20, 20, 700.00, 112.50, 81.25, 893.75, 'Paid', '2024-10-07 16:00:00', '2024-10-07 16:00:00', 'Bill for reservation 20');
INSERT INTO bill VALUES (21, 21, 600.00, 120.00, 72.00, 792.00, 'Pending', '2024-10-10 12:00:00', '2024-10-17 12:00:00', 'Bill for reservation 21');
INSERT INTO bill VALUES (22, 22, 470.00, 30.00, 50.00, 550.00, 'Paid', '2024-10-11 13:00:00', '2024-10-11 13:00:00', 'Bill for reservation 22');
INSERT INTO bill VALUES (23, 23, 780.00, 150.00, 93.00, 1023.00, 'Pending', '2024-10-12 15:00:00', '2024-10-19 15:00:00', 'Bill for reservation 23');
INSERT INTO bill VALUES (24, 24, 305.00, 40.00, 34.50, 379.50, 'Cancelled', '2024-10-14 14:00:00', '2024-10-14 14:00:00', 'Bill for reservation 24');
INSERT INTO bill VALUES (25, 25, 500.00, 120.00, 62.00, 682.00, 'Paid', '2024-10-15 16:00:00', '2024-10-15 16:00:00', 'Bill for reservation 25');
INSERT INTO bill VALUES (26, 26, 840.00, 225.00, 106.50, 1171.50, 'Pending', '2024-10-17 17:00:00', '2024-10-24 17:00:00', 'Bill for reservation 26');
INSERT INTO bill VALUES (27, 27, 520.00, 50.00, 57.00, 627.00, 'Paid', '2024-10-19 18:00:00', '2024-10-19 18:00:00', 'Bill for reservation 27');
INSERT INTO bill VALUES (28, 28, 410.00, 45.00, 45.50, 500.50, 'Pending', '2024-10-20 19:00:00', '2024-10-27 19:00:00', 'Bill for reservation 28');
INSERT INTO bill VALUES (29, 29, 700.00, 180.00, 88.00, 968.00, 'Cancelled', '2024-10-22 20:00:00', '2024-10-22 20:00:00', 'Bill for reservation 29');
INSERT INTO bill VALUES (30, 30, 450.00, 80.00, 53.00, 583.00, 'Paid', '2024-10-24 21:00:00', '2024-10-24 21:00:00', 'Bill for reservation 30');
INSERT INTO bill VALUES (31, 31, 310.00, 100.00, 41.00, 451.00, 'Pending', '2024-10-26 10:00:00', '2024-11-02 10:00:00', 'Bill for reservation 31');
INSERT INTO bill VALUES (32, 32, 550.00, 75.00, 62.50, 687.50, 'Paid', '2024-10-27 11:00:00', '2024-10-27 11:00:00', 'Bill for reservation 32');
INSERT INTO bill VALUES (33, 33, 780.00, 180.00, 96.00, 1056.00, 'Pending', '2024-10-29 12:00:00', '2024-11-05 12:00:00', 'Bill for reservation 33');
INSERT INTO bill VALUES (34, 34, 300.00, 30.00, 33.00, 363.00, 'Cancelled', '2024-10-31 13:00:00', '2024-10-31 13:00:00', 'Bill for reservation 34');
INSERT INTO bill VALUES (35, 35, 810.00, 200.00, 101.00, 1111.00, 'Paid', '2024-11-01 14:00:00', '2024-11-01 14:00:00', 'Bill for reservation 35');
INSERT INTO bill VALUES (36, 36, 470.00, 120.00, 59.00, 649.00, 'Pending', '2024-11-02 15:00:00', '2024-11-09 15:00:00', 'Bill for reservation 36');
INSERT INTO bill VALUES (37, 37, 420.00, 60.00, 48.00, 528.00, 'Paid', '2024-11-05 16:00:00', '2024-11-05 16:00:00', 'Bill for reservation 37');
INSERT INTO bill VALUES (38, 38, 720.00, 225.00, 94.50, 1039.50, 'Pending', '2024-11-06 17:00:00', '2024-11-13 17:00:00', 'Bill for reservation 38');
INSERT INTO bill VALUES (39, 39, 560.00, 50.00, 61.00, 671.00, 'Cancelled', '2024-11-08 18:00:00', '2024-11-08 18:00:00', 'Bill for reservation 39');
INSERT INTO bill VALUES (40, 40, 390.00, 45.00, 43.50, 478.50, 'Paid', '2024-11-10 19:00:00', '2024-11-10 19:00:00', 'Bill for reservation 40');
INSERT INTO bill VALUES (41, 41, 540.00, 120.00, 66.00, 726.00, 'Paid', '2024-11-12 20:00:00', '2024-11-12 20:00:00', 'Bill for reservation 41');
INSERT INTO bill VALUES (42, 42, 410.00, 40.00, 45.00, 495.00, 'Pending', '2024-11-13 21:00:00', '2024-11-20 21:00:00', 'Bill for reservation 42');
INSERT INTO bill VALUES (43, 43, 750.00, 150.00, 90.00, 990.00, 'Paid', '2024-11-15 10:00:00', '2024-11-15 10:00:00', 'Bill for reservation 43');
INSERT INTO bill VALUES (44, 44, 470.00, 75.00, 54.50, 599.50, 'Cancelled', '2024-11-14 11:00:00', '2024-11-14 11:00:00', 'Bill for reservation 44');
INSERT INTO bill VALUES (45, 45, 420.00, 90.00, 51.00, 561.00, 'Pending', '2024-11-17 12:00:00', '2024-11-24 12:00:00', 'Bill for reservation 45');
INSERT INTO bill VALUES (46, 46, 610.00, 90.00, 70.00, 770.00, 'Paid', '2024-11-18 13:00:00', '2024-11-18 13:00:00', 'Bill for reservation 46');
INSERT INTO bill VALUES (47, 47, 850.00, 200.00, 105.00, 1155.00, 'Pending', '2024-11-20 14:00:00', '2024-11-27 14:00:00', 'Bill for reservation 47');
INSERT INTO bill VALUES (48, 48, 460.00, 120.00, 58.00, 638.00, 'Cancelled', '2024-11-20 15:00:00', '2024-11-20 15:00:00', 'Bill for reservation 48');
INSERT INTO bill VALUES (49, 49, 720.00, 135.00, 85.50, 940.50, 'Paid', '2024-11-22 16:00:00', '2024-11-22 16:00:00', 'Bill for reservation 49');
INSERT INTO bill VALUES (50, 50, 400.00, 112.50, 51.25, 563.75, 'Pending', '2024-11-23 17:00:00', '2024-11-30 17:00:00', 'Bill for reservation 50');







-- =========================================
-- AUTO_INCREMENT SYNCHRONIZATION
-- Prevents future ID collisions
-- =========================================

SET @max_id = 0;

SELECT IFNULL(MAX(guest_id),0)+1 INTO @max_id FROM guest;
SET @sql = CONCAT('ALTER TABLE guest AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(staff_id),0)+1 INTO @max_id FROM staff;
SET @sql = CONCAT('ALTER TABLE staff AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(room_type_id),0)+1 INTO @max_id FROM room_type;
SET @sql = CONCAT('ALTER TABLE room_type AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(room_id),0)+1 INTO @max_id FROM rooms;
SET @sql = CONCAT('ALTER TABLE rooms AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(reservation_id),0)+1 INTO @max_id FROM reservation;
SET @sql = CONCAT('ALTER TABLE reservation AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(service_id),0)+1 INTO @max_id FROM service;
SET @sql = CONCAT('ALTER TABLE service AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(booking_id),0)+1 INTO @max_id FROM booking_service;
SET @sql = CONCAT('ALTER TABLE booking_service AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(usage_id),0)+1 INTO @max_id FROM service_usage;
SET @sql = CONCAT('ALTER TABLE service_usage AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(bill_id),0)+1 INTO @max_id FROM bill;
SET @sql = CONCAT('ALTER TABLE bill AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(preference_id),0)+1 INTO @max_id FROM guest_preference;
SET @sql = CONCAT('ALTER TABLE guest_preference AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

SELECT IFNULL(MAX(maintenance_id),0)+1 INTO @max_id FROM room_maintenance;
SET @sql = CONCAT('ALTER TABLE room_maintenance AUTO_INCREMENT=',@max_id);
PREPARE s FROM @sql; EXECUTE s; DEALLOCATE PREPARE s;

-- =========================================
-- Finish import safely
-- =========================================

COMMIT;
SET FOREIGN_KEY_CHECKS = 1;
