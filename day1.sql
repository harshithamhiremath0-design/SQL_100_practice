# Q1.write a query to create a database named "college" only if it doesn't already exist, and switch to using it.
CREATE DATABASEIF NOT EXISTS college;
USE college;

# Q2.Create student table 
CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

#  Q3. View structure of student table
DESC student;

# Q4. List all tables
SHOW TABLES;

# Q5.Create temp_backup with same structure
CREATE TABLE temp_backup LIKE student;

# Q6. Insert one student
INSERT INTO student
VALUES (101,'Anil',78,'C','Pune');

# Q7. Insert 3 students
INSERT INTO student
VALUES
(102,'Bhumika',93,'A','Mumbai'),
(103,'Chetan',85,'B','Mumbai'),
(104,'Dhruv',96,'A','Delhi');

# Q8. Insert only rollno and name
INSERT INTO student (rollno, name)
VALUES (105,'Esha');

#Q9. Copy all data to temp_backup
INSERT INTO temp_backup
SELECT * FROM student;

# Q10. Display all students
SELECT * FROM student;

