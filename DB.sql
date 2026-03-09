CREATE DATABASE hospital_attendance;
USE hospital_attendance;
CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255),
    role VARCHAR(20)
);

CREATE TABLE staff (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    mobile VARCHAR(15),
    department VARCHAR(50),
    qr_code VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE attendance (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    staff_id BIGINT,
    entry_time DATETIME,
    exit_time DATETIME,
    total_hours DOUBLE,
    FOREIGN KEY (staff_id) REFERENCES staff(id)
);
