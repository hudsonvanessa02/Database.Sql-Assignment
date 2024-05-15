/*
1. Database Creation and Table Setup (2 Marks)
• 1.1 Create a database named edu_institute. (0.5 Marks)
• 1.2 Within edu_institute, create a table named students with the following
structure: (1.5 Marks)
• student_id INT PRIMARY KEY,
• name VARCHAR(50),
• age INT,
• gender CHAR(1),
• enrollment_date DATE,
• program VARCHAR(50).
*/
CREATE database edu_institute;

USE edu_institute;

CREATE TABLE students (student_id INT PRIMARY KEY,
name VARCHAR(50), 
age INT,
gender CHAR(1),
enrollment_date DATE,
program VARCHAR(50)
);

/*
2. Data Insertion (2 Marks)
• 2.1 Insert at least 5 records into the students table, with diverse names, ages,
genders, enrolment dates, and programs. Ensure at least one student is enrolled in
"Data Science". (2 Marks)
*/

INSERT INTO students (student_id, name, age, gender, enrollment_date, program)
VALUES 
    (1, 'John Doe', 20, 'M', '2023-01-15', 'Computer Science'),
    (2, 'Jane Smith', 22, 'F', '2022-09-20', 'Engineering'),
    (3, 'Alice Johnson', 21, 'F', '2023-03-05', 'Mathematics'),
    (4, 'Bob Williams', 23, 'M', '2022-12-10', 'Data Science'),
    (5, 'Emily Brown', 24, 'F', '2022-11-25', 'Data Science'),
    (6, 'Michael Davis', 20, 'M', '2023-02-28', 'Computer Science'),
    (7, 'Jessica Martinez', 22, 'F', '2023-01-03', 'Data Science'),
    (8, 'David Rodriguez', 21, 'M', '2022-10-18', 'Engineering'),
    (9, 'Sarah Wilson', 23, 'F', '2023-04-15', 'Data Science'),
    (10, 'James Taylor', 22, 'M', '2022-08-30', 'Mathematics'),
    (11, 'Olivia Moore', 21, 'F', '2023-03-20', 'Data Science'),
    (12, 'William Anderson', 24, 'M', '2023-02-05', 'Data Science'),
    (13, 'Sophia Jackson', 20, 'F', '2022-12-01', 'Computer Science'),
    (14, 'Daniel White', 22, 'M', '2023-01-28', 'Engineering'),
    (15, 'Isabella Harris', 21, 'F', '2022-11-15', 'Data Science'),
    (16, 'Alexander Martin', 23, 'M', '2023-04-10', 'Mathematics'),
    (17, 'Mia Thompson', 24, 'F', '2023-03-25', 'Data Science'),
    (18, 'Ethan Garcia', 20, 'M', '2022-09-10', 'Data Science'),
    (19, 'Emma Martinez', 22, 'F', '2023-02-03', 'Computer Science'),
    (20, 'Ava Robinson', 21, 'F', '2022-10-20', 'Engineering'),
    (21, 'Noah Clark', 23, 'M', '2023-05-15', 'Data Science'),
    (22, 'Liam Hall', 24, 'M', '2023-01-30', 'Data Science'),
    (23, 'Charlotte Baker', 20, 'F', '2022-11-05', 'Computer Science'),
    (24, 'Benjamin Green', 22, 'M', '2023-03-10', 'Engineering'),
    (25, 'Amelia Nelson', 21, 'F', '2022-08-25', 'Data Science');

/*
3. Basic Queries (2 Marks)
• 3.1 Write a query to select all columns for all students in the "Data Science"
program. (1 Mark)
*/

SELECT * FROM students
WHERE program = 'Data Science';

/*
3.2 Write a query to find the total number of students and display it as Total
Students. (1 Mark)
*/

SELECT COUNT(*) AS 'Total Students'
FROM students;

/*
4. Function Usage (2 Marks)
• 4.1 Use an appropriate function to display the current date in a column named
Today's Date. (1 Mark)
Hint; Use CURRENT_DATE( )
*/

SELECT CURRENT_DATE() AS "Today's Date";

/*
• 4.2 Write a query to select the student names and their enrolment dates, but
display the name column in uppercase. (1 Mark)
*/

SELECT UPPER(name) AS names, enrollment_date
FROM students;

/*
5. Advanced Queries (2 Marks)
• 5.1 Write a query to count the number of students in each program and display the
results in descending order of count. Name the count column as Number of
Students. (1 Mark)
*/

SELECT program, COUNT(name) AS 'Number of Students'
FROM students
GROUP BY program
ORDER BY COUNT(name) DESC;

/*
• 5.2 Write a query to find the youngest student's name and age. (1 Mark)
*/
SELECT name, age
FROM students
ORDER BY age
LIMIT 1;
