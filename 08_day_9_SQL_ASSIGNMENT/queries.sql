INSERT INTO students (name, age, marks)
VALUES ('Ravi', 20, 85);

INSERT INTO students (name, age, marks)
VALUES ('Sita', 21, 90);

INSERT INTO students (name, age, marks)
VALUES ('Ram', 19, 78);

INSERT INTO students (name, age, marks)
VALUES ('Anu', 20, 88);

INSERT INTO students (name, age, marks)
VALUES ('Kiran', 22, 92);

select *from students

SELECT * FROM students
WHERE marks > 85;

SELECT * FROM students
ORDER BY marks DESC;
SELECT NAME,AGE FROM STUDENTS

SELECT NAME, COUNT(*) AS AGE
FROM STUDENTS
GROUP BY MARKS;
SELECT DISTINCT MARKS
FROM STUDENTS;






INSERT INTO employees (NAME, AGE, SALARY, RANK)
VALUES ('Ravi', 25, 30000, 1);

INSERT INTO employees (NAME, AGE, SALARY, RANK)
VALUES ('Sita', 28, 45000, 2);

INSERT INTO employees (NAME, AGE, SALARY, RANK)
VALUES ('Ram', 23, 25000, 3);

INSERT INTO employees (NAME, AGE, SALARY, RANK)
VALUES ('Anu', 30, 50000, 1);

INSERT INTO employees (NAME, AGE, SALARY, RANK)
VALUES ('Kiran', 27, 40000, 2);

SELECT * FROM employees;

SELECT * FROM employees
WHERE SALARY > 30000;

SELECT * FROM employees
ORDER BY SALARY DESC;

SELECT NAME, SALARY
FROM employees;

SELECT COUNT(*) as total
FROM employees;

SELECT AVG(SALARY)
FROM employees;

SELECT MAX(SALARY)
FROM employees;

SELECT * FROM Employees
WHERE Age BETWEEN 22 AND 24;

SELECT * FROM Employees
WHERE Name LIKE 'R%';

SELECT Name FROM Employees
WHERE Age IN (21,23);


SELECT ID, Name, age, Salary
FROM Employees
ORDER BY
Salary DESC;


DELETE FROM employees
WHERE NAME = 'Ram';


UPDATE employees
SET SALARY = 35000
WHERE NAME = 'Ravi';

SELECT * FROM employees
WHERE SALARY BETWEEN 30000 AND 50000;
SELECT * FROM employees
WHERE NAME LIKE 'R%';


SELECT * FROM employees
WHERE NAME LIKE '%a';


SELECT * FROM employees
WHERE AGE IN (25, 30);



SELECT * FROM employees
WHERE AGE NOT IN (25);

SELECT DISTINCT RANK
FROM employees;

SELECT * FROM employees
LIMIT 3;


SELECT RANK, COUNT(*) AS total_employees
FROM employees
GROUP BY RANK;


SELECT RANK, COUNT(*) AS total
FROM employees
GROUP BY RANK
HAVING COUNT(*) > 1;



