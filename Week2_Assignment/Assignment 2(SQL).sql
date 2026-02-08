CREATE DATABASE CollegeDB;
GO
USE CollegeDB;
GO
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT,
    Department VARCHAR(50)
);
INSERT INTO Students VALUES
(1, 'Amit', 21, 'Computer Science'),
(2, 'Neha', 22, 'Electronics'),
(3, 'Rahul', 20, 'Computer Science'),
(4, 'Priya', 23, 'Mechanical'),
(5, 'Anjali', 21, 'Computer Science');
INSERT INTO Courses VALUES
(101, 'Data Structures', 4, 'Computer Science'),
(102, 'Digital Circuits', 3, 'Electronics'),
(103, 'Thermodynamics', 4, 'Mechanical'),
(104, 'Machine Learning', 4, 'Computer Science');
SELECT * 
FROM Students
WHERE Department = 'Computer Science' AND Age > 20;
SELECT * 
FROM Students
WHERE Department = 'Electronics' OR Department = 'Mechanical';
SELECT * 
FROM Students
WHERE NOT Department = 'Computer Science';
SELECT * 
FROM Students
ORDER BY Age DESC;
SELECT * 
FROM Students
WHERE Name LIKE 'A%';
SELECT * 
FROM Courses
WHERE CourseName LIKE '%Data%';
