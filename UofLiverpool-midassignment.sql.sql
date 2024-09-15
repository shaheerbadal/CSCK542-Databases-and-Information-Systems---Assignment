-- Create Database
CREATE DATABASE `liverpool` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE liverpool;

-- Admin Table
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

-- Teacher Table
CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

-- Semester Table (Normalized semester information)
CREATE TABLE Semester (
    SemesterID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);

-- Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Description TEXT
);

-- CourseOffering Table (Link courses to specific semesters and assign teachers)
CREATE TABLE CourseOffering (
    OfferingID INT PRIMARY KEY AUTO_INCREMENT,
    CourseID INT,
    SemesterID INT,
    TeacherID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID),
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);

-- Enrollment Table (Track student enrollments and grades)
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    OfferingID INT,
    Grade ENUM('Pass', 'Fail'),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (OfferingID) REFERENCES CourseOffering(OfferingID)
);

-- CourseAssignment Table (Track course assignments made by admins)
CREATE TABLE CourseAssignment (
    AssignmentID INT PRIMARY KEY AUTO_INCREMENT,
    AdminID INT,
    TeacherID INT,
    CourseID INT,
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID),
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert Admins (2 Admins)
INSERT INTO Admin (Name, Email) VALUES ('John Doe', 'jdoe@example.com');
INSERT INTO Admin (Name, Email) VALUES ('Jane Smith', 'jsmith@example.com');

-- Insert Teachers (7 Teachers)
INSERT INTO Teacher (Name, Email) VALUES ('Alice Brown', 'abrown@example.com');
INSERT INTO Teacher (Name, Email) VALUES ('Charlie Davis', 'cdavis@example.com');
INSERT INTO Teacher (Name, Email) VALUES ('Emily Harris', 'eharris@example.com');
INSERT INTO Teacher (Name, Email) VALUES ('George Jones', 'gjones@example.com');
INSERT INTO Teacher (Name, Email) VALUES ('Hannah King', 'hking@example.com');
INSERT INTO Teacher (Name, Email) VALUES ('Isabella Lee', 'ilee@example.com');
INSERT INTO Teacher (Name, Email) VALUES ('Jack Martin', 'jmartin@example.com');

-- Insert Students (20 Students)
INSERT INTO Student (Name, Email) VALUES ('Michael Allen', 'mallen@example.com');
INSERT INTO Student (Name, Email) VALUES ('Nina Baker', 'nbaker@example.com');
INSERT INTO Student (Name, Email) VALUES ('Olivia Carter', 'ocarter@example.com');
INSERT INTO Student (Name, Email) VALUES ('Paul Davis', 'pdavis@example.com');
INSERT INTO Student (Name, Email) VALUES ('Quincy Evans', 'qevans@example.com');
INSERT INTO Student (Name, Email) VALUES ('Rachel Foster', 'rfoster@example.com');
INSERT INTO Student (Name, Email) VALUES ('Samuel Green', 'sgreen@example.com');
INSERT INTO Student (Name, Email) VALUES ('Tina Hill', 'thill@example.com');
INSERT INTO Student (Name, Email) VALUES ('Uma Ivey', 'uivey@example.com');
INSERT INTO Student (Name, Email) VALUES ('Victor Jones', 'vjones@example.com');
INSERT INTO Student (Name, Email) VALUES ('Wendy King', 'wking@example.com');
INSERT INTO Student (Name, Email) VALUES ('Xander Lewis', 'xlewis@example.com');
INSERT INTO Student (Name, Email) VALUES ('Yara Miller', 'ymiller@example.com');
INSERT INTO Student (Name, Email) VALUES ('Zane Nelson', 'znelson@example.com');
INSERT INTO Student (Name, Email) VALUES ('Adam ONeil', 'aoneil@example.com');
INSERT INTO Student (Name, Email) VALUES ('Bella Parker', 'bparker@example.com');
INSERT INTO Student (Name, Email) VALUES ('Carter Quinn', 'cquinn@example.com');
INSERT INTO Student (Name, Email) VALUES ('Diana Ross', 'dross@example.com');
INSERT INTO Student (Name, Email) VALUES ('Ethan Stone', 'estone@example.com');
INSERT INTO Student (Name, Email) VALUES ('Fiona Turner', 'fturner@example.com');

-- Insert Semesters
INSERT INTO Semester (Name, StartDate, EndDate) VALUES ('Fall 2024', '2024-09-01', '2024-12-15');
INSERT INTO Semester (Name, StartDate, EndDate) VALUES ('Spring 2025', '2025-01-15', '2025-05-15');

-- Insert Courses (10 Courses)
INSERT INTO Course (Name, Description) VALUES ('Database Systems', 'Introduction to Databases');
INSERT INTO Course (Name, Description) VALUES ('Operating Systems', 'Fundamentals of Operating Systems');
INSERT INTO Course (Name, Description) VALUES ('Data Structures', 'Data Organization Techniques');
INSERT INTO Course (Name, Description) VALUES ('Computer Networks', 'Basics of Networking');
INSERT INTO Course (Name, Description) VALUES ('Algorithms', 'Algorithm Design and Analysis');
INSERT INTO Course (Name, Description) VALUES ('Software Engineering', 'Software Development Practices');
INSERT INTO Course (Name, Description) VALUES ('Artificial Intelligence', 'Introduction to AI');
INSERT INTO Course (Name, Description) VALUES ('Web Development', 'Fundamentals of Web Technologies');
INSERT INTO Course (Name, Description) VALUES ('Machine Learning', 'Introduction to Machine Learning Concepts');
INSERT INTO Course (Name, Description) VALUES ('Cybersecurity', 'Principles of Cybersecurity');

-- Link Courses to Semesters and Assign Teachers
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (1, 1, 1); -- Database Systems, Fall 2024, Alice Brown
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (2, 1, 2); -- Operating Systems, Fall 2024, Charlie Davis
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (3, 1, 3); -- Data Structures, Fall 2024, Emily Harris
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (4, 1, 4); -- Computer Networks, Fall 2024, George Jones
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (5, 1, 5); -- Algorithms, Fall 2024, Hannah King
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (6, 1, 6); -- Software Engineering, Fall 2024, Isabella Lee
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (7, 1, 7); -- Artificial Intelligence, Fall 2024, Jack Martin
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (8, 1, 1); -- Web Development, Fall 2024, Alice Brown
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (9, 1, 2); -- Machine Learning, Fall 2024, Charlie Davis
INSERT INTO CourseOffering (CourseID, SemesterID, TeacherID) VALUES (10, 1, 3); -- Cybersecurity, Fall 2024, Emily Harris

-- Enroll Students in Courses (full enrollments)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (1, 1, 'Pass'); -- Michael Allen enrolls in Database Systems (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (2, 1, 'Pass'); -- Nina Baker enrolls in Database Systems (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (3, 2, 'Fail'); -- Olivia Carter enrolls in Operating Systems (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (4, 2, 'Pass'); -- Paul Davis enrolls in Operating Systems (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (5, 3, 'Fail'); -- Rachel Foster enrolls in Data Structures (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (7, 4, 'Pass'); -- Samuel Green enrolls in Computer Networks (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (8, 4, 'Pass'); -- Tina Hill enrolls in Computer Networks (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (9, 5, 'Fail'); -- Uma Ivey enrolls in Algorithms (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (10, 5, 'Pass'); -- Victor Jones enrolls in Algorithms (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (11, 6, 'Pass'); -- Wendy King enrolls in Software Engineering (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (12, 6, 'Fail'); -- Xander Lewis enrolls in Software Engineering (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (13, 7, 'Pass'); -- Yara Miller enrolls in Artificial Intelligence (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (14, 7, 'Fail'); -- Zane Nelson enrolls in Artificial Intelligence (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (15, 8, 'Pass'); -- Adam ONeil enrolls in Web Development (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (16, 8, 'Pass'); -- Bella Parker enrolls in Web Development (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (17, 9, 'Pass'); -- Carter Quinn enrolls in Machine Learning (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (18, 9, 'Fail'); -- Diana Ross enrolls in Machine Learning (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (19, 10, 'Pass'); -- Ethan Stone enrolls in Cybersecurity (Fall 2024)
INSERT INTO Enrollment (StudentID, OfferingID, Grade) VALUES (20, 10, 'Fail'); -- Fiona Turner enrolls in Cybersecurity (Fall 2024)

-- Assign Courses to Teachers by Admin (Completed assignments)
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (1, 1, 1); -- John Doe assigns Alice Brown to Database Systems
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (2, 2, 2); -- Jane Smith assigns Charlie Davis to Operating Systems
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (1, 3, 3); -- John Doe assigns Emily Harris to Data Structures
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (2, 4, 4); -- Jane Smith assigns George Jones to Computer Networks
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (1, 5, 5); -- John Doe assigns Hannah King to Algorithms
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (2, 6, 6); -- Jane Smith assigns Isabella Lee to Software Engineering
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (1, 7, 7); -- John Doe assigns Jack Martin to Artificial Intelligence
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (2, 1, 8); -- Jane Smith assigns Alice Brown to Web Development
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (1, 2, 9); -- John Doe assigns Charlie Davis to Machine Learning
INSERT INTO CourseAssignment (AdminID, TeacherID, CourseID) VALUES (2, 3, 10); -- Jane Smith assigns Emily Harris to Cybersecurity

-- Select statements to view data
SELECT * FROM Course;
SELECT * FROM Teacher;
SELECT * FROM Student;
SELECT * FROM Enrollment;
SELECT * FROM CourseOffering;
SELECT * FROM CourseAssignment;
SELECT * FROM Admin;
SELECT * FROM Semester;
