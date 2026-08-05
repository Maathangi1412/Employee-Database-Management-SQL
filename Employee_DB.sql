

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
















