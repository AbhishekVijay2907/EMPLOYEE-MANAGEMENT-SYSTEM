-- Employee Management System database setup
-- Run this SQL file in MySQL to create the required database and employee table.

CREATE DATABASE IF NOT EXISTS employeemanagement;
USE employeemanagement;

CREATE TABLE IF NOT EXISTS employee (
    name VARCHAR(255),
    fname VARCHAR(255),
    dob VARCHAR(50),
    salary VARCHAR(50),
    address VARCHAR(255),
    phone VARCHAR(50),
    email VARCHAR(255),
    education VARCHAR(100),
    designation VARCHAR(100),
    addhar VARCHAR(50),
    empId VARCHAR(50) PRIMARY KEY
);

-- Example data
INSERT INTO employee (name, fname, dob, salary, address, phone, email, education, designation, addhar, empId) VALUES
('John Doe', 'Robert Doe', '1990-01-01', '50000', '123 Main Street', '9876543210', 'john.doe@example.com', 'MBA', 'Manager', '123412341234', '100001');
