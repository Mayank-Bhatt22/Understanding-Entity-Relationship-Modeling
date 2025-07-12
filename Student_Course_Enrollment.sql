/*
 1. Student-Course Enrollment System = database name
Entities:
 •Student(Student_ID, Name, Age, Email) = 1 table
 •Course(Course_ID, Title, Credits) = 2 table
 •Instructor(Instructor_ID, Name, Department)

Relationships:
 •Enrolls(Student = Course) → with attribute: Enrollment_Date
 •Teaches(Instructor = Course)
*/

-- DATABASE NO 1
-- STEP NO 1 CREATE DATABASE
CREATE DATABASE Student_Course_Enrollment;

USE Student_Course_Enrollment;

-- STEP 2 CREAATE TABLE
-- Student Table
CREATE TABLE Student (
Student_ID INT PRIMARY KEY,
Name VARCHAR(100),
Age INT,
Email VARCHAR(100)
);

-- Course Table
CREATE TABLE Course (
Course_ID INT PRIMARY KEY,
Title VARCHAR(100),
Credits INT
);

-- Instructor Table
CREATE TABLE Instructor (
Instructor_ID INT PRIMARY KEY,
Name VARCHAR(100),
Department VARCHAR(100)
);

-- Relationship (Student = Course) with attribute: Enrollment_Date
CREATE TABLE Enrolls (
Student_ID INT,
Course_ID INT,
Enrollment_Date DATE,
CONSTRAINT FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
CONSTRAINT FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

-- Teaches Relationship (Instructor ↔ Course)
CREATE TABLE Teaches (
Instructor_ID INT,
Course_ID INT,
CONSTRAINT FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID),
CONSTRAINT FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

-- SETP NO 3
-- INSERTING DATA 
INSERT INTO Student (Student_ID, Name, Age, Email) VALUES
(1, 'Mayank Bhatt', 19, 'mayank@example.com'),
(2, 'Simran Sharma', 20, 'simran@example.com'),
(3, 'Aman Verma', 21, 'aman@example.com'),
(4, 'Riya Mehra', 18, 'riya@example.com'),
(5, 'Raj Patel', 22, 'raj@example.com');

SELECT * FROM Student;

INSERT INTO Course (Course_ID, Title, Credits) VALUES
(101, 'Data Structures', 4),
(102, 'Database Systems', 3),
(103, 'Operating Systems', 4),
(104, 'Computer Networks', 3),
(105, 'Machine Learning', 5);

SELECT * FROM Course;

INSERT INTO Instructor (Instructor_ID, Name, Department) VALUES
(1001, 'Dr. Sharma', 'Computer Science'),
(1002, 'Ms. Kapoor', 'Information Technology'),
(1003, 'Mr. Raghav', 'Computer Applications'),
(1004, 'Mrs. Das', 'Data Science'),
(1005, 'Mr. Singh', 'Artificial Intelligence');

SELECT * FROM Instructor;

INSERT INTO Enrolls (Student_ID, Course_ID, Enrollment_Date) VALUES
(1, 101, '2025-06-01'),
(2, 102, '2025-06-02'),
(3, 103, '2025-06-03'),
(4, 104, '2025-06-04'),
(5, 105, '2025-06-05');

SELECT * FROM Enrolls;

INSERT INTO Teaches (Instructor_ID, Course_ID) VALUES
(1001, 101),
(1002, 102),
(1003, 103),
(1004, 104),
(1005, 105);

SELECT * FROM Teaches;

