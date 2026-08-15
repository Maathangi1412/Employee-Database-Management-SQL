-- SQL ASSIGNMENT 02
-- DML, Filtering, Sorting, Aggregation, Grouping and Joins

USE Employee;


-- =========================================================
-- 1. DISTINCT VALUES
-- =========================================================

-- Retrieve distinct salaries from the Employees table

SELECT DISTINCT Salary
FROM Employees;


-- =========================================================
-- 2. ALIAS (AS)
-- =========================================================

-- Provide aliases for Age and Salary columns

SELECT Age AS Employee_Age,
       Salary AS Employee_Salary
FROM Employees;


-- =========================================================
-- 3. WHERE CLAUSE & OPERATORS
-- =========================================================

-- Retrieve employees with salary greater than 50000
-- and hired before 2016-01-01

SELECT *
FROM Employees
WHERE Salary > 50000
AND Hire_date < '2016-01-01';


-- Find employees whose designation is missing

SELECT employee_id,
       employee_name,
       Designation
FROM Employees
WHERE Designation IS NULL
   OR Designation = '';


-- Fill the missing designation with Data Scientist

UPDATE Employees
SET Designation = 'Data Scientist'
WHERE employee_id = 5004
AND Designation IS NULL;


-- Verify the updated designation

SELECT employee_id,
       employee_name,
       Designation
FROM Employees
WHERE employee_id = 5004;


-- =========================================================
-- 4. ORDER BY
-- =========================================================

-- Sort employees by department ID in ascending order
-- and salary in descending order

SELECT *
FROM Employees
ORDER BY department_id ASC,
         Salary DESC;


-- =========================================================
-- 5. LIMIT
-- =========================================================

-- Display the first 5 employees hired in the year 2018

SELECT *
FROM Employees
WHERE YEAR(Hire_date) = 2018
ORDER BY Hire_date ASC
LIMIT 5;


-- =========================================================
-- 6. AGGREGATE FUNCTIONS
-- =========================================================

-- Calculate the sum of all salaries in the Finance department

SELECT SUM(e.Salary) AS Total_Finance_Salary
FROM Employees e
INNER JOIN Departments d
    ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';


-- Find the minimum age among all employees

SELECT MIN(Age) AS Minimum_Age
FROM Employees;


-- =========================================================
-- 7. GROUP BY
-- =========================================================

-- List the maximum salary for each location

SELECT l.location_name,
       MAX(e.Salary) AS Maximum_Salary
FROM Employees e
INNER JOIN Locations l
    ON e.location_id = l.location_id
GROUP BY l.location_name;


-- Calculate the average salary for each designation
-- containing the word 'Analyst'

SELECT Designation,
       AVG(Salary) AS Average_Salary
FROM Employees
WHERE Designation LIKE '%Analyst%'
GROUP BY Designation;


-- =========================================================
-- 8. HAVING
-- =========================================================

-- Find departments with less than 3 employees

SELECT d.department_id,
       d.department_name,
       COUNT(e.employee_id) AS Employee_Count
FROM Departments d
LEFT JOIN Employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id,
         d.department_name
HAVING COUNT(e.employee_id) < 3;


-- Find locations with female employees
-- whose average age is below 30

SELECT l.location_id,
       l.location_name,
       AVG(e.Age) AS Average_Age
FROM Locations l
INNER JOIN Employees e
    ON l.location_id = e.location_id
WHERE e.Gender = 'F'
GROUP BY l.location_id,
         l.location_name
HAVING AVG(e.Age) < 30;


-- =========================================================
-- 9. INNER JOIN
-- =========================================================

-- List employee names, designations and department names
-- where employees are assigned to a department

SELECT e.employee_name,
       e.Designation,
       d.department_name
FROM Employees e
INNER JOIN Departments d
    ON e.department_id = d.department_id;


-- =========================================================
-- 10. LEFT JOIN
-- =========================================================

-- List all departments along with the total number
-- of employees in each department,
-- including departments with no employees

SELECT d.department_id,
       d.department_name,
       COUNT(e.employee_id) AS Total_Employees
FROM Departments d
LEFT JOIN Employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id,
         d.department_name;


-- =========================================================
-- 11. RIGHT JOIN
-- =========================================================

-- Display all locations along with the names
-- of employees assigned to each location.
-- If no employees are assigned, display NULL.

SELECT l.location_id,
       l.location_name,
       e.employee_name
FROM Employees e
RIGHT JOIN Locations l
    ON e.location_id = l.location_id;
