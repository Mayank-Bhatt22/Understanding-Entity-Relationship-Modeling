-- DATABASE NO 9

CREATE DATABASE Hotel_Booking_System;

USE Hotel_Booking_System;

-- Guest Table
CREATE TABLE Guest (
Guest_ID INT PRIMARY KEY,
Name VARCHAR(100),
Phone VARCHAR(15)
);

-- Room Table
CREATE TABLE Room (
Room_ID INT PRIMARY KEY,
Type VARCHAR(50),
Rate DECIMAL(10, 2)
);

-- Booking Table
CREATE TABLE Booking (
Booking_ID INT PRIMARY KEY,
Checkin DATE,
Checkout DATE
);

-- Books Relationship (Guest = Room) via Booking
CREATE TABLE Books (
Guest_ID INT,
Room_ID INT,
Booking_ID INT,
CONSTRAINT FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
CONSTRAINT FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID),
CONSTRAINT FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID)
);

INSERT INTO Guest (Guest_ID, Name, Phone) VALUES
(1, 'Mayank Bhatt', '9876543210'),
(2, 'Simran Kaur', '9123456780'),
(3, 'Ravi Sharma', '9012345678'),
(4, 'Riya Mehra', '9090909090'),
(5, 'Raj Patel', '9988776655');

SELECT * FROM Guest;

INSERT INTO Room (Room_ID, Type, Rate) VALUES
(101, 'Single', 2000.00),
(102, 'Double', 3500.00),
(103, 'Suite', 7000.00),
(104, 'Deluxe', 5000.00),
(105, 'Family', 6000.00);

SELECT * FROM Room;

INSERT INTO Booking (Booking_ID, Checkin, Checkout) VALUES
(201, '2025-07-10', '2025-07-12'),
(202, '2025-07-11', '2025-07-14'),
(203, '2025-07-12', '2025-07-13'),
(204, '2025-07-13', '2025-07-16'),
(205, '2025-07-14', '2025-07-17');

SELECT * FROM Booking;

INSERT INTO Books (Guest_ID, Room_ID, Booking_ID) VALUES
(1, 101, 201),
(2, 102, 202),
(3, 103, 203),
(4, 104, 204),
(5, 105, 205);

SELECT * FROM Books;

