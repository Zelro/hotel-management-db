CREATE DATABASE IF NOT EXISTS hotel_management
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE hotel_management;

SET sql_mode = 'STRICT_ALL_TABLES';
SET time_zone = '+00:00';

-- =====================================================
-- File: schema/create_database.sql
-- Project: Hotel Management Database
-- Description: Creates the main database and sets
--              global configuration.
-- =====================================================

-- DROP DATABASE IF EXISTS hotel_management;



-- ------------------------------- TABLES ----------------------------------------


-- =====================================
-- GUEST
-- =====================================
CREATE TABLE guest (
    guest_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    address VARCHAR(50),
    registration_date DATE,
    loyalty_tier VARCHAR(50),
    is_active TINYINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
) ENGINE=InnoDB;

-- =====================================
-- SERVICE
-- =====================================
CREATE TABLE service (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(50),
    description LONGTEXT,
    price DECIMAL(10,2),
    category VARCHAR(50),
    is_available TINYINT,
    hourly_rate DECIMAL(10,2)
) ENGINE=InnoDB;

-- =====================================
-- ROOM TYPE
-- =====================================
CREATE TABLE room_type (
    room_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50),
    description LONGTEXT,
    base_price DECIMAL(10,2),
    max_occupancy INT,
    bed_count INT,
    bed_type VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
) ENGINE=InnoDB;

-- =====================================
-- ROOMS
-- =====================================
CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(50),
    room_type_id INT,
    floor_level INT,
    status VARCHAR(50),
    special_features VARCHAR(500),
    last_maintenance DATE,
    is_smoking TINYINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    FOREIGN KEY (room_type_id) REFERENCES room_type(room_type_id)
) ENGINE=InnoDB;

-- =====================================
-- STAFF
-- =====================================
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    staff_position VARCHAR(50),
    department VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    hire_date DATE,
    is_active TINYINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
) ENGINE=InnoDB;

-- =====================================
-- RESERVATION
-- =====================================
CREATE TABLE reservation (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    staff_id INT,
    check_in_date DATE,
    check_out_date DATE,
    number_of_guests INT,
    total_price DECIMAL(10,2),
    reservation_status VARCHAR(50),
    special_request VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    FOREIGN KEY (guest_id) REFERENCES guest(guest_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
) ENGINE=InnoDB;

-- =====================================
-- BOOKING SERVICE
-- =====================================
CREATE TABLE booking_service (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT,
    service_id INT,
    reservation_id INT,
    requested_at DATETIME,
    FOREIGN KEY (guest_id) REFERENCES guest(guest_id),
    FOREIGN KEY (service_id) REFERENCES service(service_id),
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id)
) ENGINE=InnoDB;

-- =====================================
-- SERVICE USAGE
-- =====================================
CREATE TABLE service_usage (
    usage_id INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT,
    service_id INT,
    usage_time TIMESTAMP,
    end_time TIMESTAMP NULL,
    quantity INT,
    charges DECIMAL(10,2),
    status VARCHAR(50),
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id),
    FOREIGN KEY (service_id) REFERENCES service(service_id)
) ENGINE=InnoDB;

-- =====================================
-- BILL
-- =====================================
CREATE TABLE bill (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT,
    room_charges DECIMAL(12,2),
    service_charges DECIMAL(12,2),
    tax_amount DECIMAL(12,2),
    total_amount DECIMAL(12,2),
    bill_status VARCHAR(20),
    issue_datetime DATETIME,
    due_datetime DATETIME,
    notes TEXT,
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id)
) ENGINE=InnoDB;

-- =====================================
-- GUEST PREFERENCE
-- =====================================
CREATE TABLE guest_preference (
    preference_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT,
    preference_type VARCHAR(50),
    preference_value VARCHAR(100),
    notes TEXT,
    FOREIGN KEY (guest_id) REFERENCES guest(guest_id)
) ENGINE=InnoDB;

-- =====================================
-- ROOM MAINTENANCE
-- =====================================
CREATE TABLE room_maintenance (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT,
    staff_id INT,
    maintenance_date DATE,
    description TEXT,
    status VARCHAR(20),
    cost DECIMAL(10,2),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
) ENGINE=InnoDB;
