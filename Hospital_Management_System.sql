-- DATABASE NO 3 

CREATE DATABASE Hospital_Management_System;

USE Hospital_Management_System;

 -- Patient Table
CREATE TABLE Patient (
Patient_ID INT PRIMARY KEY,
Name VARCHAR(100),
DOB DATE,
Gender VARCHAR(10)
);

-- Doctor Table
CREATE TABLE Doctor (
Doctor_ID INT PRIMARY KEY,
Name VARCHAR(100),
Specialization VARCHAR(100)
);

-- Appointment Table
CREATE TABLE Appointment (
Appointment_ID INT PRIMARY KEY,
Date DATE,
Time TIME
);

-- Visits Relationship (Patient = Doctor) via Appointment
CREATE TABLE Visits (
Patient_ID INT,
Doctor_ID INT,
Appointment_ID INT,
CONSTRAINT FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
CONSTRAINT FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
CONSTRAINT FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID)
);

-- Prescribes Relationship (Doctor = Patient) with attribute: Prescription_Details
CREATE TABLE Prescribes (
Doctor_ID INT,
Patient_ID INT,
Prescription_Details TEXT,
CONSTRAINT FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
CONSTRAINT FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

-- INSERTING DATA 

INSERT INTO Patient (Patient_ID, Name, DOB, Gender) VALUES
(1, 'Aman Verma', '2000-05-12', 'Male'),
(2, 'Riya Mehra', '1999-08-25', 'Female'),
(3, 'Raj Patel', '2002-03-15', 'Male'),
(4, 'Simran Kaur', '2001-10-10', 'Female'),
(5, 'Mayank Bhatt', '2000-11-20', 'Male');

SELECT * FROM Patient;

INSERT INTO Doctor (Doctor_ID, Name, Specialization) VALUES
(101, 'Dr. Sharma', 'Cardiology'),
(102, 'Dr. Ritu', 'Dermatology'),
(103, 'Dr. Khan', 'Orthopedics'),
(104, 'Dr. Das', 'Pediatrics'),
(105, 'Dr. Iyer', 'General Medicine');

SELECT * FROM Doctor;

INSERT INTO Appointment (Appointment_ID, Date, Time) VALUES
(1001, '2025-07-10', '10:00:00'),
(1002, '2025-07-11', '11:00:00'),
(1003, '2025-07-12', '12:30:00'),
(1004, '2025-07-13', '09:15:00'),
(1005, '2025-07-14', '14:00:00');

SELECT * FROM Appointment;

INSERT INTO Visits (Patient_ID, Doctor_ID, Appointment_ID) VALUES
(1, 101, 1001),
(2, 102, 1002),
(3, 103, 1003),
(4, 104, 1004),
(5, 105, 1005);

SELECT * FROM Visits;

INSERT INTO Prescribes (Doctor_ID, Patient_ID, Prescription_Details) VALUES
(101, 1, 'Prescribed ECG and blood pressure medicine'),
(102, 2, 'Ointment for skin rash for 7 days'),
(103, 3, 'Advised X-ray and calcium supplements'),
(104, 4, 'Vitamin syrup and regular checkups'),
(105, 5, 'Paracetamol for fever and rest');

SELECT * FROM Prescribes;

