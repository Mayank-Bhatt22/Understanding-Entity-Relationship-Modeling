-- Database no 2 
CREATE DATABASE Library_Management_System;
USE  Library_Management_System;

-- Book Table
CREATE TABLE Book (
Book_ID INT PRIMARY KEY,
Title VARCHAR(100),
ISBN VARCHAR(20),
Genre VARCHAR(50)
);

-- Member Table
CREATE TABLE Member (
Member_ID INT PRIMARY KEY,
Name VARCHAR(100),
Address VARCHAR(200)
);

-- Librarian Table
CREATE TABLE Librarian (
Librarian_ID INT PRIMARY KEY,
Name VARCHAR(100)
);

-- Borrows Relationship (Member = Book) with Borrow_Date and Return_Date
CREATE TABLE Borrows (
Member_ID INT,
Book_ID INT,
Borrow_Date DATE,
Return_Date DATE,
CONSTRAINT FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
CONSTRAINT FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID)
);

-- Manages Relationship (Librarian ↔ Book)
CREATE TABLE Manages (
Librarian_ID INT,
Book_ID INT,
CONSTRAINT FOREIGN KEY (Librarian_ID) REFERENCES Librarian(Librarian_ID),
CONSTRAINT FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID)
);

-- INSERTING DATA
INSERT INTO Book (Book_ID, Title, ISBN, Genre) VALUES
(1, 'The Alchemist', '9780061122415', 'Fiction'),
(2, 'Python Crash Course', '9781593276034', 'Programming'),
(3, 'Rich Dad Poor Dad', '9781612680194', 'Finance'),
(4, 'Atomic Habits', '9780735211292', 'Self-help'),
(5, 'Database System Concepts', '9780073523323', 'Education');

SELECT * FROM Book;

INSERT INTO Member (Member_ID, Name, Address) VALUES
(1, 'Ravi Sharma', 'Delhi'),
(2, 'Pooja Mehra', 'Mumbai'),
(3, 'Aman Verma', 'Lucknow'),
(4, 'Simran Kaur', 'Chandigarh'),
(5, 'Mayank Bhatt', 'Noida');

SELECT * FROM Memder;

INSERT INTO Librarian (Librarian_ID, Name) VALUES
(101, 'Mr. Arora'),
(102, 'Ms. Ritu'),
(103, 'Mr. Khan'),
(104, 'Mrs. Das'),
(105, 'Mr. Iyer');

SELECT * FROM Librarian;

INSERT INTO Borrows (Member_ID, Book_ID, Borrow_Date, Return_Date) VALUES
(1, 1, '2025-07-01', '2025-07-10'),
(2, 3, '2025-07-03', '2025-07-13'),
(3, 5, '2025-07-05', '2025-07-15'),
(4, 2, '2025-07-07', '2025-07-17'),
(5, 4, '2025-07-09', '2025-07-19');

SELECT * FROM Borrowe;

INSERT INTO Manages (Librarian_ID, Book_ID) VALUES
(101, 1),
(102, 2),
(103, 3),
(104, 4),
(105, 5);

SELECT * FROM Manages;

