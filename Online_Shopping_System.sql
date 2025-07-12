-- DATABASE NO 5

CREATE DATABASE Online_Shopping_System;

USE Online_Shopping_System;

-- Customer Table
CREATE TABLE Customer (
Customer_ID INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100)
);

-- Product Table
CREATE TABLE Product (
Product_ID INT PRIMARY KEY,
Name VARCHAR(100),
Price DECIMAL(10, 2)
);

-- Order Table
CREATE TABLE Order_Table (
Order_ID INT PRIMARY KEY,
Date DATE,
Total_Amount DECIMAL(12, 2)
);

-- Places Relationship (Customer = Order)
CREATE TABLE Places (
Customer_ID INT,
Order_ID INT,
CONSTRAINT FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
CONSTRAINT FOREIGN KEY (Order_ID) REFERENCES Order_Table(Order_ID)
);

-- Contains Relationship (Order = Product) with Quantity
CREATE TABLE Contains (
Order_ID INT,
Product_ID INT,
Quantity INT,
CONSTRAINT FOREIGN KEY (Order_ID) REFERENCES Order_Table(Order_ID),
CONSTRAINT FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

INSERT INTO Customer (Customer_ID, Name, Email) VALUES
(1, 'Mayank Bhatt', 'mayank@example.com'),
(2, 'Simran Kaur', 'simran@example.com'),
(3, 'Ravi Sharma', 'ravi@example.com'),
(4, 'Riya Mehra', 'riya@example.com'),
(5, 'Raj Patel', 'raj@example.com');

SELECT * FROM Customer;

INSERT INTO Product (Product_ID, Name, Price) VALUES
(101, 'Smartphone', 25000.00),
(102, 'Laptop', 65000.00),
(103, 'Headphones', 2000.00),
(104, 'Backpack', 1500.00),
(105, 'Keyboard', 1200.00);

SELECT * FROM Product;

INSERT INTO Order_Table (Order_ID, Date, Total_Amount) VALUES
(201, '2025-07-01', 26500.00),
(202, '2025-07-02', 67000.00),
(203, '2025-07-03', 3200.00),
(204, '2025-07-04', 1500.00),
(205, '2025-07-05', 1200.00);

SELECT * FROM Order_Table;

INSERT INTO Places (Customer_ID, Order_ID) VALUES
(1, 201),
(2, 202),
(3, 203),
(4, 204),
(5, 205);

SELECT * FROM Places;

INSERT INTO Contains (Order_ID, Product_ID, Quantity) VALUES
(201, 101, 1), 
(202, 102, 1),
(203, 103, 2), 
(204, 104, 1), 
(205, 105, 1); 

SELECT * FROM Contains;
