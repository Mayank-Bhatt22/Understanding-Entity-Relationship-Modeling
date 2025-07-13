
CREATE DATABASE Airline_Reservation_System;

USE Airline_Reservation_System;

-- Passenger Table
CREATE TABLE Passenger (
Passenger_ID INT PRIMARY KEY,
Name VARCHAR(100),
Passport_No VARCHAR(50)
);

-- Flight Table
CREATE TABLE Flight (
Flight_ID INT PRIMARY KEY,
Origin VARCHAR(100),
Destination VARCHAR(100)
);

-- Ticket Table
CREATE TABLE Ticket (
Ticket_No INT PRIMARY KEY,
Seat_No VARCHAR(10),
Price DECIMAL(10, 2)
);

-- Books Relationship (Passenger = Flight) via Ticket
CREATE TABLE Books (
Passenger_ID INT,
Flight_ID INT,
Ticket_No INT,
CONSTRAINT FOREIGN KEY (Passenger_ID) REFERENCES Passenger(Passenger_ID),
CONSTRAINT FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID),
CONSTRAINT FOREIGN KEY (Ticket_No) REFERENCES Ticket(Ticket_No)
);


INSERT INTO Passenger (Passenger_ID, Name, Passport_No) VALUES
(1, 'Mayank Bhatt', 'P123456'),
(2, 'Simran Kaur', 'P234567'),
(3, 'Ravi Sharma', 'P345678'),
(4, 'Riya Mehra', 'P456789'),
(5, 'Raj Patel', 'P567890');

SELECT * FROM Passenger;

INSERT INTO Flight (Flight_ID, Origin, Destination) VALUES
(101, 'Delhi', 'Mumbai'),
(102, 'Mumbai', 'Chennai'),
(103, 'Bangalore', 'Hyderabad'),
(104, 'Kolkata', 'Delhi'),
(105, 'Jaipur', 'Goa');

SELECT * FROM Flight;

INSERT INTO Ticket (Ticket_No, Seat_No, Price) VALUES
(1001, '12A', 4500.00),
(1002, '14B', 5200.00),
(1003, '10C', 6100.00),
(1004, '18D', 4800.00),
(1005, '22E', 5300.00);

SELECT * FROM Ticket;

INSERT INTO Books (Passenger_ID, Flight_ID, Ticket_No) VALUES
(1, 101, 1001),
(2, 102, 1002),
(3, 103, 1003),
(4, 104, 1004),
(5, 105, 1005);

SELECT * FROM Books;

