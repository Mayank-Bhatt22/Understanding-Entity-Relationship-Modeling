-- DATABASE 4

CREATE DATABASE Banking_System;

USE Banking_System;

-- Customer Table
CREATE TABLE Customer (
Customer_ID INT PRIMARY KEY,
Name VARCHAR(100),
Address VARCHAR(200)
);

-- Account Table
CREATE TABLE Account (
Account_No INT PRIMARY KEY,
Type VARCHAR(50),
Balance DECIMAL(12, 2)
);

-- Branch Table
CREATE TABLE Branch (
Branch_ID INT PRIMARY KEY,
Location VARCHAR(100)
);

-- Owns Relationship (Customer = Account)
CREATE TABLE Owns (
Customer_ID INT,
Account_No INT,
CONSTRAINT FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
CONSTRAINT FOREIGN KEY (Account_No) REFERENCES Account(Account_No)
);

-- Operates Relationship (Account = Branch)
CREATE TABLE Operates (
Account_No INT,
Branch_ID INT,
CONSTRAINT FOREIGN KEY (Account_No) REFERENCES Account(Account_No),
CONSTRAINT FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

INSERT INTO Customer (Customer_ID, Name, Address) VALUES
(1, 'Mayank Bhatt', 'Delhi'),
(2, 'Ravi Sharma', 'Noida'),
(3, 'Simran Kaur', 'Mumbai'),
(4, 'Raj Patel', 'Ahmedabad'),
(5, 'Riya Mehra', 'Chandigarh');

SELECT * FROM Customer;

INSERT INTO Account (Account_No, Type, Balance) VALUES
(10001, 'Savings', 25000.00),
(10002, 'Current', 150000.00),
(10003, 'Savings', 5000.00),
(10004, 'Fixed Deposit', 200000.00),
(10005, 'Savings', 80000.00);

SELECT * FROM Account;

INSERT INTO Branch (Branch_ID, Location) VALUES
(201, 'Connaught Place'),
(202, 'MG Road'),
(203, 'Bandra'),
(204, 'Satellite'),
(205, 'Sector 17');

SELECT * FROM Branch;

INSERT INTO Owns (Customer_ID, Account_No) VALUES
(1, 10001),
(2, 10002),
(3, 10003),
(4, 10004),
(5, 10005);

SELECT * FROM Owns;

INSERT INTO Operates (Account_No, Branch_ID) VALUES
(10001, 201),
(10002, 202),
(10003, 203),
(10004, 204),
(10005, 205);

SELECT * FROM Operates;
