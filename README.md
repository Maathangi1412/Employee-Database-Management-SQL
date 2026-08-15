# 🗄️ Employee Database Management & SQL Analysis

## 📌 Project Overview

This project demonstrates the design, creation, population, and analysis of a relational **Employee Database using MySQL**.

The project covers the complete SQL workflow, starting from **Database Definition Language (DDL)** and database design, followed by **Data Manipulation Language (DML)**, data retrieval, filtering, sorting, aggregation, grouping, and joins.

The objective is to build practical SQL skills by working with employee, department, and location data in a relational database environment.

---

# 🎯 Project Objectives

- Create and manage a relational database using MySQL.
- Design structured tables for employees, departments, and locations.
- Implement Primary Key and Foreign Key relationships.
- Apply constraints to maintain data integrity.
- Modify database schemas using `ALTER TABLE`.
- Populate tables using `INSERT`.
- Update records using `UPDATE`.
- Retrieve unique values using `DISTINCT`.
- Filter data using `WHERE` and SQL operators.
- Sort and limit query results.
- Perform calculations using aggregate functions.
- Analyze grouped data using `GROUP BY` and `HAVING`.
- Combine related tables using SQL joins.
- Apply SQL concepts to practical data analysis scenarios.

---

# 🗃️ Database Details

### Database Name

**Employee**

### Tables

The database consists of three relational tables:

1. **Departments**
2. **Locations**
3. **Employees**

---

# 🏢 Departments Table

| Column | Data Type | Constraint |
|---|---|---|
| department_id | INT | PRIMARY KEY |
| department_name | VARCHAR(50) | NOT NULL, UNIQUE |

---

# 📍 Locations Table

| Column | Data Type | Constraint |
|---|---|---|
| location_id | INT | AUTO_INCREMENT, PRIMARY KEY |
| location_name | VARCHAR(50) | NOT NULL, UNIQUE |

---

# 👥 Employees Table

| Column | Data Type | Constraint |
|---|---|---|
| employee_id | INT | PRIMARY KEY |
| employee_name | VARCHAR(100) | NOT NULL |
| Gender | CHAR(1) | CHECK (M/F) |
| Age | INT | CHECK (Age >= 18) |
| Hire_date | DATE | DEFAULT CURRENT_DATE |
| Designation | VARCHAR(100) | — |
| Salary | DECIMAL(10,2) | — |
| department_id | INT | FOREIGN KEY |
| location_id | INT | FOREIGN KEY |

---

# 🔗 Database Relationships

The database follows a relational structure:

```text
Departments
     │
     │ department_id
     ▼
Employees
     │
     │ location_id
     ▼
Locations


One department can have multiple employees.
One location can have multiple employees.
Employees are linked to departments using department_id.
Employees are linked to locations using location_id.
Foreign Keys establish relationships between the tables.

🏗️ DDL — Database Definition Language

The first stage of the project focuses on database and schema creation.

Database Commands
CREATE DATABASE
USE
DROP DATABASE

Table Commands
CREATE TABLE
DESC
RENAME TABLE
TRUNCATE TABLE
DROP TABLE

ALTER TABLE Operations
ADD COLUMN
MODIFY COLUMN
DROP COLUMN
CHANGE COLUMN

Constraints
PRIMARY KEY
FOREIGN KEY
AUTO_INCREMENT
NOT NULL
UNIQUE
CHECK
DEFAULT

These operations demonstrate database creation, schema modification, table management, and data integrity.

📝 DML — Data Manipulation Language

The database was populated with employee, department, and location data.

DML Commands Used
INSERT
UPDATE

Employee records include:

Employee ID
Employee Name
Gender
Age
Hire Date
Designation
Salary
Department
Location

🔎 Data Retrieval & Filtering
DISTINCT

Retrieved unique salary values from the Employees table.

Purpose: Identify different salary levels within the organization.

ALIAS — AS

Used column aliases for easier interpretation of query results.

Examples:

Employee_Age
Employee_Salary

Purpose: Improve the readability of query outputs.

WHERE Clause

Retrieved employees with:

Salary greater than ₹50,000
Hire date before 2016-01-01

Purpose: Filter employee records using multiple conditions.

🧹 Data Quality Handling

The project also demonstrates basic data cleaning using SQL.

A missing employee designation was identified and updated.

Employee Updated
Employee ID	Employee Name	Updated Designation
5004	Kiara Malhotra	Data Scientist

This demonstrates how SQL can be used to identify and correct missing values in structured data.

📊 Sorting & Limiting

ORDER BY
Employees were sorted by:
Department ID — Ascending
Salary — Descending

Purpose: Organize records based on multiple sorting conditions.

LIMIT
Retrieved the first five employees hired during 2018.
Purpose: Demonstrate filtering, sorting, and limiting query results.

📈 Aggregate Functions
The project uses SQL aggregate functions to summarize employee data.
Functions Used
SUM()
MIN()
MAX()
AVG()
COUNT()

Finance Department Salary
Calculated the total salary of employees in the Finance department.
Result
₹170,000

Minimum Employee Age
Calculated the minimum age among all employees.
Result
25 years

🗂️ GROUP BY Analysis
Maximum Salary by Location
Calculated the maximum salary for each location.
Purpose: Compare the highest salary levels across different office locations.

Average Salary for Analyst Roles
Calculated the average salary for designations containing the word "Analyst".
Purpose: Analyze salary levels across different Analyst-related roles.

🔎 HAVING Analysis
Departments with Fewer Than 3 Employees
Identified departments with fewer than three employees.
Purpose: Analyze department size using COUNT(), GROUP BY, and HAVING.

Female Employees with Average Age Below 30
Identified locations where female employees have an average age below 30.
Purpose: Analyze workforce demographics by gender and location.

🔗 SQL JOINS
The project demonstrates three major types of joins.

INNER JOIN
Combined employee information with department information.
Output
Employee Name
Designation
Department Name
Purpose: Retrieve records where matching department information exists.

LEFT JOIN
Displayed all departments along with their total number of employees.
This also includes departments with no employees.
Purpose: Demonstrate how LEFT JOIN preserves all records from the left table.

RIGHT JOIN
Displayed all locations along with employees assigned to each location.
If a location has no employees, the employee name appears as NULL.
Purpose: Demonstrate how RIGHT JOIN preserves all records from the right table.

📊 SQL Analysis Summary
Analysis	SQL Concept
Unique salary levels	DISTINCT
Employee age & salary aliases	AS
Salary and hire-date filtering	WHERE
Missing designation handling	UPDATE
Employee sorting	ORDER BY
First 5 employees hired in 2018	LIMIT
Finance salary total	SUM()
Minimum employee age	MIN()
Maximum salary by location	MAX() + GROUP BY
Analyst average salary	AVG() + GROUP BY
Small departments	COUNT() + HAVING
Female employee age analysis	AVG() + HAVING
Employee & department analysis	INNER JOIN
Department employee count	LEFT JOIN
Location & employee analysis	RIGHT JOIN

🔑 Key Findings
The Finance department has a total salary of ₹170,000.
The minimum employee age is 25 years.
Salary levels vary across departments and locations.
Analyst-related roles can be compared using average salary.
Department size can be evaluated using employee counts.
Female employee age patterns can be analyzed across locations.
Employee, department, and location information can be combined using SQL joins.
Missing employee information can be identified and corrected using SQL.

🛠️ Tools Used
MySQL
MySQL Workbench
GitHub

💻 Skills Demonstrated
SQL
MySQL
Relational Database Design
Database Management
DDL
DML
Data Retrieval
Data Filtering
Data Cleaning
Data Aggregation
Data Grouping
SQL Joins
Data Integrity
Primary & Foreign Keys
Analytical Thinking
Problem Solving

📚 SQL Concepts Covered
DDL
│
├── CREATE DATABASE
├── CREATE TABLE
├── ALTER TABLE
├── RENAME TABLE
├── TRUNCATE TABLE
└── DROP


Constraints
│
├── PRIMARY KEY
├── FOREIGN KEY
├── NOT NULL
├── UNIQUE
├── CHECK
├── DEFAULT
└── AUTO_INCREMENT


DML
│
├── INSERT
└── UPDATE


Data Analysis
│
├── SELECT
├── DISTINCT
├── AS
├── WHERE
├── ORDER BY
├── LIMIT
├── SUM()
├── MIN()
├── MAX()
├── AVG()
├── COUNT()
├── GROUP BY
└── HAVING


Joins
│
├── INNER JOIN
├── LEFT JOIN
└── RIGHT JOIN
📈 Learning Progression

The project demonstrates my progression from database creation to SQL-based data analysis:

Database Creation
        ↓
Table Design
        ↓
Constraints
        ↓
Schema Modification
        ↓
Data Insertion
        ↓
Data Updating
        ↓
Data Retrieval
        ↓
Filtering & Sorting
        ↓
Aggregation
        ↓
GROUP BY
        ↓
HAVING
        ↓
SQL JOINS
        ↓
Data Analysis

📂 Repository Structure
Employee-Database-SQL/
│
├── Employee_Database_SQL.sql
│
└── README.md

The Employee_Database_SQL.sql file contains the complete project, including:

Database creation
Table creation
Constraints
Schema modifications
Data insertion
Data updating
Data retrieval
Filtering
Sorting
Aggregation
Grouping
HAVING
INNER JOIN
LEFT JOIN
RIGHT JOIN

📚 Learning Outcomes

Through this project, I gained practical experience in:

Designing relational databases.
Creating structured tables.
Applying database constraints.
Establishing relationships using Primary and Foreign Keys.
Populating relational tables with data.
Updating and maintaining records.
Filtering and sorting data.
Handling missing data using SQL.
Performing aggregate calculations.
Grouping data for analysis.
Filtering grouped results using HAVING.
Combining multiple tables using SQL joins.
Applying SQL to practical data analysis scenarios.

🚀 Project Highlights
Database Design

Designed a relational Employee database with interconnected tables for employees, departments, and locations.

Data Integrity

Applied multiple SQL constraints to maintain accurate and consistent data.

Data Manipulation

Populated and updated employee records using DML commands.

Data Analysis

Performed analytical queries using filtering, aggregation, grouping, and conditional analysis.

Relational Analysis

Used multiple SQL joins to combine information across related tables.

👩‍💻 Author

Maathangi

Aspiring Data Analyst

Skills:
SQL • Excel • Power BI • Power Query • Looker Studio

Connect With Me

🔗 GitHub:
https://github.com/Maathangi1412

🔗 LinkedIn:
https://www.linkedin.com/in/maathangip

⭐ Conclusion

This project provided hands-on experience in building and analyzing a relational Employee Database using MySQL.

Starting with DDL and database design, the project progressed through constraints, data insertion, data manipulation, filtering, sorting, aggregation, grouping, HAVING, and SQL joins.

The project strengthened my understanding of relational databases and demonstrated how SQL can be used to create, manage, retrieve, transform, and analyze structured data for data-driven decision-making.




