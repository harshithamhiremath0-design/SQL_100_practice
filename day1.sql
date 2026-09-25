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

# Day 2

# Q11. Display only name and marks
SELECT name, marks
FROM student;

# Q12. Students scoring more than 80
SELECT *
FROM student
WHERE marks > 80;

# Q13. Students from Mumbai
SELECT *
FROM student
WHERE city = 'Mumbai';

# Q14. Marks > 80 AND city is Mumbai
SELECT *
FROM student
WHERE marks > 80 AND city = 'Mumbai';

# Q15. Marks > 90 OR city is Delhi
SELECT *
FROM student
WHERE marks > 90 OR city = 'Delhi';

#Q16. Marks between 70 and 90
SELECT *
FROM student
WHERE marks BETWEEN 70 AND 90;

#Q17. Students from Delhi or Mumbai
SELECT *
FROM student
WHERE city IN ('Delhi','Mumbai');

# Q18. Name starts with A
SELECT *
FROM student
WHERE name LIKE 'A%';

# Q19. Students NOT from Delhi
SELECT *
FROM student
WHERE NOT city = 'Delhi';

# Q20. Sort by highest marks
SELECT *
FROM student
ORDER BY marks DESC;