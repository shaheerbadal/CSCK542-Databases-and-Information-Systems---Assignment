<h1>College Management System - Database Design and Implementation</h1>

<p>This project implements a database system for managing college administration, including the management of students, teachers, courses, and enrollments. The system allows college admins to assign courses to teachers, teachers to manage student grades, and students to enroll in available courses for each semester.</p>

<h2>Features:</h2>
<ul>
  <li><strong>Admin Management</strong>: Admins can assign teachers to courses and manage course availability per semester.</li>
  <li><strong>Teacher Management</strong>: Teachers can view assigned courses and update student grades.</li>
  <li><strong>Student Enrollment</strong>: Students can enroll in courses that are available for a given semester.</li>
  <li><strong>Course Offerings</strong>: Courses are offered for specific semesters and taught by assigned teachers.</li>
  <li><strong>Grade Management</strong>: Teachers can pass or fail students enrolled in their courses.</li>
</ul>

<h2>Database Entities:</h2>
<ul>
  <li><strong>Admin</strong>: Admins managing course offerings and teacher assignments.</li>
  <li><strong>Teacher</strong>: Teachers assigned to teach courses.</li>
  <li><strong>Student</strong>: Students enrolling in courses.</li>
  <li><strong>Course</strong>: Courses offered in different semesters.</li>
  <li><strong>Semester</strong>: Tracks course availability for each semester.</li>
  <li><strong>CourseOffering</strong>: Represents a specific course offered in a particular semester.</li>
  <li><strong>Enrollment</strong>: Manages student enrollment in courses and records grades.</li>
  <li><strong>CourseAssignment</strong>: Tracks admin assignments of teachers to courses.</li>
</ul>

<h2>Key Features:</h2>
<ul>
  <li>Normalised database design (up to 2NF) to ensure efficient data management and integrity.</li>
  <li>Referential integrity enforced through foreign keys.</li>
  <li>SQL scripts to create, populate, and manage the database.</li>
</ul>

<h2>Technologies:</h2>
<ul>
  <li>MySQL Database</li>
  <li>MySQL Workbench</li>
  <li>SQL</li>
</ul>

<h2>Getting Started:</h2>
<ol>
  <li>Clone the repository.</li>
  <li>Run the provided SQL scripts to create the database schema and populate sample data.</li>
  <li>Use MySQL Workbench to interact with the database.</li>
</ol>

<h2>Contributions:</h2>
<p>Feel free to fork this repository and submit pull requests for any improvements, optimizations, or new features.</p>

