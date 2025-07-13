
-- DATABASE NO 10

CREATE DATABASE School_Management_System;

USE School_Management_System;

-- Student Table
CREATE TABLE Student (
Student_ID INT PRIMARY KEY,
Name VARCHAR(100),
Grade VARCHAR(10)
);

-- Teacher Table
CREATE TABLE Teacher (
Teacher_ID INT PRIMARY KEY,
Name VARCHAR(100),
Subject VARCHAR(50)
);

-- Classroom Table
CREATE TABLE Classroom (
Classroom_ID INT PRIMARY KEY,
Room_No VARCHAR(10),
Capacity INT
);

-- Assigned Relationship (Teacher = Classroom)
CREATE TABLE Assigned (
Teacher_ID INT,
Classroom_ID INT,
CONSTRAINT FOREIGN KEY (Teacher_ID) REFERENCES Teacher(Teacher_ID),
CONSTRAINT FOREIGN KEY (Classroom_ID) REFERENCES Classroom(Classroom_ID)
);

-- Studies Relationship (Student ↔ Classroom)
CREATE TABLE Studies (
Student_ID INT,
Classroom_ID INT,
CONSTRAINT FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
CONSTRAINT FOREIGN KEY (Classroom_ID) REFERENCES Classroom(Classroom_ID)
);


INSERT INTO Student (Student_ID, Name, Grade) VALUES
(1, 'Mayank Bhatt', '10th'),
(2, 'Simran Kaur', '9th'),
(3, 'Ravi Sharma', '8th'),
(4, 'Riya Mehra', '10th'),
(5, 'Raj Patel', '9th');

SELECT * FROM Student;

INSERT INTO Teacher (Teacher_ID, Name, Subject) VALUES
(101, 'Mr. Sharma', 'Math'),
(102, 'Ms. Ritu', 'Science'),
(103, 'Mr. Khan', 'English'),
(104, 'Mrs. Das', 'History'),
(105, 'Mr. Iyer', 'Computer');

SELECT * FROM Teacher;

INSERT INTO Classroom (Classroom_ID, Room_No, Capacity) VALUES
(201, 'A101', 30),
(202, 'B102', 25),
(203, 'C103', 20),
(204, 'D104', 35),
(205, 'E105', 40);

SELECT * FROM Classroom;

INSERT INTO Assigned (Teacher_ID, Classroom_ID) VALUES
(101, 201),
(102, 202),
(103, 203),
(104, 204),
(105, 205);

SELECT * FROM Assigned;

INSERT INTO Studies (Student_ID, Classroom_ID) VALUES
(1, 201),
(2, 202),
(3, 203),
(4, 204),
(5, 205);

SELECT * FROM Studies;

