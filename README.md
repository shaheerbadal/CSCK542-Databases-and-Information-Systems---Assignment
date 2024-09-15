College Management System - Database Design and Implementation


This project implements a database system for managing college administration, including the management of students, teachers, courses, and enrollments. The system allows college admins to assign courses to teachers, teachers to manage student grades, and students to enroll in available courses for each semester.

Features:
Admin Management: Admins can assign teachers to courses and manage course availability per semester.
Teacher Management: Teachers can view assigned courses and update student grades.
Student Enrollment: Students can enroll in courses that are available for a given semester.
Course Offerings: Courses are offered for specific semesters and taught by assigned teachers.
Grade Management: Teachers can pass or fail students enrolled in their courses.


Database Entities:
Admin: Admins managing course offerings and teacher assignments.
Teacher: Teachers assigned to teach courses.
Student: Students enrolling in courses.
Course: Courses offered in different semesters.
Semester: Tracks course availability for each semester.
CourseOffering: Represents a specific course offered in a particular semester.
Enrollment: Manages student enrollment in courses and records grades.
CourseAssignment: Tracks admin assignments of teachers to courses.


Key Features:
Normalised database design (up to 2NF) to ensure efficient data management and integrity.
Referential integrity enforced through foreign keys.
SQL scripts to create, populate, and manage the database.
Technologies:
MySQL Database
MySQL Workbench
SQL

Getting Started:
Clone the repository.
Run the provided SQL scripts to create the database schema and populate sample data.
Use MySQL Workbench to interact with the database.


Contributions:
Feel free to fork this repository and submit pull requests for any improvements, optimizations, or new features.

