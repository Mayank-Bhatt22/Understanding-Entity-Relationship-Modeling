-- DATABASE NO 8

CREATE DATABASE Employee_Payroll_System;

USE Employee_Payroll_System;

-- Employee Table
CREATE TABLE Employee (
Emp_ID INT PRIMARY KEY,
Name VARCHAR(100),
Designation VARCHAR(100),
Salary DECIMAL(12, 2)
);

-- Department Table
CREATE TABLE Department (
Dept_ID INT PRIMARY KEY,
Name VARCHAR(100)
);

-- Payslip Table
CREATE TABLE Payslip (
Payslip_ID INT PRIMARY KEY,
Date DATE,
Net_Salary DECIMAL(12, 2)
);

-- BelongsTo Relationship (Employee = Department)
CREATE TABLE BelongsTo (
Emp_ID INT,
Dept_ID INT,
CONSTRAINT FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
CONSTRAINT FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

-- Receives Relationship (Employee ↔ Payslip)
CREATE TABLE Receives (
Emp_ID INT,
Payslip_ID INT,
CONSTRAINT FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
CONSTRAINT FOREIGN KEY (Payslip_ID) REFERENCES Payslip(Payslip_ID)
);


INSERT INTO Employee (Emp_ID, Name, Designation, Salary) VALUES
(1, 'Mayank Bhatt', 'Data Analyst', 45000.00),
(2, 'Riya Mehra', 'HR Executive', 40000.00),
(3, 'Raj Patel', 'Software Engineer', 60000.00),
(4, 'Simran Kaur', 'Marketing Manager', 55000.00),
(5, 'Ravi Sharma', 'Accountant', 42000.00);

SELECT * FROM Employee; 

INSERT INTO Department (Dept_ID, Name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Operations');

SELECT * FROM Department;

INSERT INTO Payslip (Payslip_ID, Date, Net_Salary) VALUES
(1001, '2025-07-01', 43000.00),
(1002, '2025-07-01', 39000.00),
(1003, '2025-07-01', 59000.00),
(1004, '2025-07-01', 53000.00),
(1005, '2025-07-01', 41000.00);

SELECT * FROM Payslip;

INSERT INTO BelongsTo (Emp_ID, Dept_ID) VALUES
(1, 101),
(2, 102),
(3, 101),
(4, 104),
(5, 103);

SELECT * FROM BelongsTo;

INSERT INTO Receives (Emp_ID, Payslip_ID) VALUES
(1, 1001),
(2, 1002),
(3, 1003),
(4, 1004),
(5, 1005);

SELECT * FROM Receives;

