

-- DDL COMMANDS

-- Create Database
CREATE DATABASE Employee;

-- Create a table 
Create table Departments(
 department_id INT,
 department_name VARCHAR(50)
);

-- Create a table
Create table Location(
location_id INT,
location_name VARCHAR(50)
);

-- Create a table
Create table Employees(
employee_id INT,
employee_name VARCHAR(50),
Gender VARCHAR(10),
Age INT,
Hire_date DATE,
Designation VARCHAR(50),
Salary DECIMAL(10,2),
department_id INT,
location_id INT
);

-- Describe Employees
DESC Employees;

-- Alter - Modify/change
Alter table Employees
Add column Email VARCHAR(100);

-- Alter - Modify/change
Alter table Employees
Modify column Designation VARCHAR(100);

-- Alter - Modify/change
Alter table Employees
Drop Column Age;

-- Alter - Modify/change
Alter table Employees
Change Column Hire_date Date_of_Joining DATE;

-- to rename a table
rename table Departments to Departments_Info;

-- to rename a table
rename table Location to Locations;

-- Table truncate
Truncate Table Employees;

-- Drop Table
Drop Table Employees;

-- Drop Database
Drop Database Employee;

-- Constraints
Create Database Employee;
Use Employee;

-- Create a table 
Create table Departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
NOT NULL
UNIQUE
);

-- Create a table 
Create table Locations(
location_id INT AUTO_INCREMENT PRIMARY KEY,
location_name VARCHAR(50)
NOT NULL
UNIQUE
);

-- Create a table 
Create table Employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100)
NOT NULL,
Gender CHAR(1)
CHECK (Gender IN ('M','F')),
Age INT
CHECK (Age >=18),
Hire_date DATE
DEFAULT (CURRENT_DATE),
Designation VARCHAR(100),
Salary DECIMAL(10,2),
department_id INT,
location_id INT,
FOREIGN KEY (department_id)
REFERENCES Departments(department_id),
FOREIGN KEY (location_id)
REFERENCES Locations(location_id)
);

DESC Departments;
DESC Locations;
DESC Employees;

-- 1. DISTINCT VALUES
-- Retrieve distinct salaries from the Employees table

SELECT DISTINCT Salary
FROM Employees;

-- 2. ALIAS (AS)
-- Display Age and Salary with aliases

SELECT Age AS Employee_Age,
       Salary AS Employee_Salary
FROM Employees;

-- 3. WHERE CLAUSE & OPERATORS
-- Retrieve employees with salary greater than 50000
-- and hired before 2016-01-01

SELECT *
FROM Employees
WHERE Salary > 50000
AND Hire_date < '2016-01-01';

-- Find employees whose designation is missing

SELECT *
FROM Employees
WHERE Designation IS NULL;

-- Fill missing designation with Data Scientist

UPDATE Employees
SET Designation = 'Data Scientist'
WHERE Designation IS NULL;

-- Find the employee ID for the missing designation

SELECT employee_id, employee_name, Designation
FROM Employees
WHERE Designation IS NULL;

-- Check for NULL or empty designation

SELECT employee_id, employee_name, Designation
FROM Employees
WHERE Designation IS NULL
   OR Designation = '';
   
-- 4. ORDER BY
-- Sort employees by department ID ascending
-- and salary descending

SELECT *
FROM Employees
ORDER BY department_id ASC,
         Salary DESC;

         
-- 5. LIMIT
-- Display the first 5 employees hired in 2018

SELECT *
FROM Employees
WHERE YEAR(Hire_date) = 2018
ORDER BY Hire_date ASC
LIMIT 5;         

-- Check the available hiring years

SELECT DISTINCT YEAR(Hire_date) AS Hire_Year
FROM Employees
ORDER BY Hire_Year;

-- Insert department data

USE Employee;

-- Insert department data

USE Employee;

INSERT INTO Departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');


-- Verify department data

SELECT * FROM Departments;

-- Insert location data

INSERT INTO Locations (location_name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

-- Verify location data

SELECT *
FROM Locations;


-- Insert employee data

INSERT INTO Employees
(employee_id, employee_name, Gender, Age, Hire_date, Designation, Salary, department_id, location_id)
VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 60000, 3, 4),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 80000, 12, 1),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 45000, 10, 2),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 70000, 8, 3),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 55000, 11, 1),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 65000, 8, 2),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 90000, 2, 3),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 70000, 8, 4),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 55000, 11, 3),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 80000, 12, 4),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 60000, 2, 1),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 95000, 13, 2),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 75000, 10, 3),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 60000, 10, 2),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 85000, 7, 1),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 100000, 4, 4),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 80000, 12, 2),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 75000, 9, 3),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 55000, 4, 4),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 90000, 1, 1),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 85000, 7, 3),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 60000, 4, 4),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 70000, 2, 2),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 95000, 5, 1),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 100000, 3, 4),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 75000, 3, 2),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 60000, 6, 3),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 60000, 6, 1),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 80000, 12, 2),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 90000, 5, 1);

-- Verify employee data

SELECT *
FROM Employees;

-- 5. LIMIT
-- Display the first 5 employees hired in 2018

SELECT *
FROM Employees
WHERE YEAR(Hire_date) = 2018
ORDER BY Hire_date ASC
LIMIT 5;

-- 6. AGGREGATE FUNCTIONS
-- Calculate total salary in the Finance department

SELECT SUM(e.Salary) AS Total_Finance_Salary
FROM Employees e
INNER JOIN Departments d
    ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';

-- Find the minimum age among all employees

SELECT MIN(Age) AS Minimum_Age
FROM Employees;

-- 7. GROUP BY
-- Find the maximum salary for each location

SELECT l.location_name,
       MAX(e.Salary) AS Maximum_Salary
FROM Employees e
INNER JOIN Locations l
    ON e.location_id = l.location_id
GROUP BY l.location_name;

-- Calculate average salary for each designation containing 'Analyst'

SELECT Designation,
       AVG(Salary) AS Average_Salary
FROM Employees
WHERE Designation LIKE '%Analyst%'
GROUP BY Designation;

-- 8. HAVING
-- Find departments with less than 3 employees

SELECT d.department_id,
       d.department_name,
       COUNT(e.employee_id) AS Employee_Count
FROM Departments d
LEFT JOIN Employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) < 3;

-- Find locations where female employees have an average age below 30

SELECT l.location_id,
       l.location_name,
       AVG(e.Age) AS Average_Age
FROM Locations l
INNER JOIN Employees e
    ON l.location_id = e.location_id
WHERE e.Gender = 'F'
GROUP BY l.location_id, l.location_name
HAVING AVG(e.Age) < 30;

-- 9. INNER JOIN
-- List employee names, designations and department names

SELECT e.employee_name,
       e.Designation,
       d.department_name
FROM Employees e
INNER JOIN Departments d
    ON e.department_id = d.department_id;
    
-- 10. LEFT JOIN
-- List all departments with total employee count

SELECT d.department_id,
       d.department_name,
       COUNT(e.employee_id) AS Total_Employees
FROM Departments d
LEFT JOIN Employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

-- 11. RIGHT JOIN
-- Display all locations and employees assigned to each location

SELECT l.location_id,
       l.location_name,
       e.employee_name
FROM Employees e
RIGHT JOIN Locations l
    ON e.location_id = l.location_id;
    
-- Update missing designation

UPDATE Employees
SET Designation = 'Data Scientist'
WHERE employee_id = 5004
AND Designation IS NULL;

-- Verify updated designation

SELECT employee_id, employee_name, Designation
FROM Employees
WHERE employee_id = 5004;    