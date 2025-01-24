CREATE DATABASE symposium_db2;
USE symposium_db2;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    college VARCHAR(100),
    year INT,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    accommodation ENUM('yes', 'no'),
    role ENUM('user', 'admin') DEFAULT 'user',
    qr_code_id VARCHAR(255) UNIQUE
);
CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    type ENUM('technical', 'non-technical', 'workshop'),
    venue VARCHAR(100),
    prize VARCHAR(100),
    date DATE,
    time TIME
);
CREATE TABLE registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    event_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (event_id) REFERENCES events(id)
);
CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    user_id INT NOT NULL,
    admin_id INT NOT NULL,
    attendance_status ENUM('present', 'absent') NOT NULL,
    marked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (admin_id) REFERENCES users(id)
);