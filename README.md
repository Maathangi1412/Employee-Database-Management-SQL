# 🗄️ Employee Database Management & SQL Analysis

## 📌 Project Overview

This project demonstrates the design, creation, population, and analysis of a relational **Employee Database using MySQL**.

The project covers SQL concepts from **Database Definition Language (DDL)** and database design to **Data Manipulation Language (DML), data filtering, sorting, aggregation, grouping, and joins**.

It was developed as a practical SQL learning project to build a strong foundation in database management and data analysis.

---

## 🎯 Objectives

- Design and create a relational employee database.
- Create and manage tables using SQL.
- Apply database constraints and relationships.
- Populate tables with employee, department, and location data.
- Retrieve and filter employee records.
- Sort and limit query results.
- Perform aggregate calculations.
- Analyze grouped data using `GROUP BY` and `HAVING`.
- Combine information from multiple tables using SQL joins.
- Practice SQL concepts relevant to data analytics.

---

## 🗃️ Database Details

### Database Name

**Employee**

### Tables

The database consists of three main tables:

- **Departments**
- **Locations**
- **Employees**

---

## 🏢 Departments Table

| Column | Data Type | Constraint |
|---|---|---|
| department_id | INT | Primary Key |
| department_name | VARCHAR(50) | NOT NULL, UNIQUE |

---

## 📍 Locations Table

| Column | Data Type | Constraint |
|---|---|---|
| location_id | INT | AUTO_INCREMENT, Primary Key |
| location_name | VARCHAR(50) | NOT NULL, UNIQUE |

---

## 👥 Employees Table

| Column | Data Type | Constraint |
|---|---|---|
| employee_id | INT | Primary Key |
| employee_name | VARCHAR(100) | NOT NULL |
| Gender | CHAR(1) | CHECK (M/F) |
| Age | INT | CHECK (Age >= 18) |
| Hire_date | DATE | DEFAULT CURRENT_DATE |
| Designation | VARCHAR(100) | — |
| Salary | DECIMAL(10,2) | — |
| department_id | INT | Foreign Key |
| location_id | INT | Foreign Key |

---

## 🔗 Entity Relationships

The database follows a relational structure where:

- One department can have multiple employees.
- One location can have multiple employees.
- Each employee is associated with a department.
- Each employee is associated with a location.
- Relationships are established using foreign keys.

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

📚 SQL Concepts Covered

🏗️ DDL & Database Management
CREATE DATABASE
USE
CREATE TABLE
DESC
ALTER TABLE
RENAME TABLE
TRUNCATE TABLE
DROP TABLE
DROP DATABASE

🔐 Constraints
PRIMARY KEY
FOREIGN KEY
AUTO_INCREMENT
NOT NULL
UNIQUE
CHECK
DEFAULT

📝 DML & Data Manipulation
INSERT
UPDATE

🔎 Data Retrieval & Filtering
SELECT
DISTINCT
AS
WHERE
AND
OR
IS NULL
LIKE

📊 Sorting & Limiting
ORDER BY
LIMIT

📈 Aggregate Functions
SUM()
MIN()
MAX()
AVG()
COUNT()

🗂️ Grouping
GROUP BY
HAVING

🔗 Joins
INNER JOIN
LEFT JOIN
RIGHT JOIN

📊 SQL Analysis Performed
1. Distinct Salaries

Retrieved unique salary values from the Employees table using DISTINCT.

Purpose: Identify different salary levels within the organization.

2. Column Aliases

Used AS to provide meaningful names to query output columns.

Employee_Age
Employee_Salary

Purpose: Improve readability of query results.

3. Employee Filtering

Retrieved employees who:

Earn more than ₹50,000
Were hired before 2016-01-01

Purpose: Filter employee records using multiple conditions.

4. Missing Data Handling

Identified employees with missing designations and updated the missing value.

Employee: Kiara Malhotra
Employee ID: 5004
Updated Designation: Data Scientist

Purpose: Demonstrate basic data-quality handling using SQL.

5. Employee Sorting

Sorted employees by:

Department ID — Ascending
Salary — Descending

Purpose: Organize employee records based on multiple sorting conditions.

6. 2018 Hiring Analysis

Retrieved the first five employees hired during 2018.

Purpose: Demonstrate filtering by year, sorting by hire date, and limiting results.

7. Finance Department Salary Analysis

Calculated the total salary of employees in the Finance department.

Result: ₹170,000

Purpose: Demonstrate the use of SUM() with filtering and joins.

8. Minimum Employee Age

Calculated the minimum age among all employees.

Result: 25 years

Purpose: Demonstrate the MIN() aggregate function.

9. Maximum Salary by Location

Calculated the maximum salary for each location.

Purpose: Compare the highest salary levels across different office locations.

10. Average Salary for Analyst Roles

Calculated the average salary for designations containing the word "Analyst".

Purpose: Analyze salary levels across different Analyst-related roles.

11. Departments with Fewer Than 3 Employees

Identified departments with fewer than three employees.

Purpose: Analyze department size using GROUP BY, COUNT(), and HAVING.

12. Female Employee Age Analysis

Identified locations where female employees have an average age below 30.

Purpose: Analyze workforce demographics by location and gender.

13. INNER JOIN

Combined employee information with department information.

Output includes:

Employee Name
Designation
Department Name

Purpose: Retrieve matching records from related tables.

14. LEFT JOIN

Displayed all departments along with their total employee count, including departments with no employees.

Purpose: Demonstrate how LEFT JOIN preserves all records from the left table.

15. RIGHT JOIN

Displayed all locations along with employees assigned to each location.

If a location has no employees, the employee name appears as NULL.

Purpose: Demonstrate how RIGHT JOIN preserves all records from the right table.

🔑 Key Findings
The Finance department has a total salary of ₹170,000.
The minimum employee age is 25 years.
Employee salaries vary across departments and locations.
Analyst-related roles can be compared using average salary.
Department size can be analyzed using employee counts.
Female employee age patterns can be compared across locations.
Employee, department, and location information can be combined using relational joins.
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
Data Analysis
Data Filtering
Data Cleaning
Data Aggregation
Data Grouping
SQL Joins
Data Integrity
Primary & Foreign Keys
Problem Solving
Analytical Thinking

📂 Repository Structure
Employee-Database-SQL/
│
├── Assignment-01-DDL-Constraints/
│   └── Employee_DDL.sql
│
├── Assignment-02-DML-Queries/
│   └── Employee_DML_Queries.sql
│
└── README.md

📈 Learning Progression
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
Data Retrieval
        ↓
Filtering & Sorting
        ↓
Aggregation
        ↓
GROUP BY & HAVING
        ↓
SQL JOINS
        ↓
Data Analysis
📚 Learning Outcomes

Through this project, I gained practical experience in:

Designing relational databases.
Creating structured tables.
Implementing database constraints.
Establishing relationships using primary and foreign keys.
Populating relational tables with data.
Filtering and sorting records.
Handling missing data using SQL.
Performing aggregate calculations.
Grouping data for analysis.
Filtering grouped results using HAVING.
Combining multiple tables using SQL joins.
Applying SQL concepts to practical data analysis scenarios.
🚀 Project Progression

This project demonstrates my progression from basic database creation to analytical SQL:


1. DDL & Database Design

Covered:

Database creation
Table creation
Schema modification
Table management
Primary Keys
Foreign Keys
Database constraints

2. DML & SQL Analysis

Covered:

Data insertion
Data updating
DISTINCT
Aliases
WHERE
ORDER BY
LIMIT
Aggregate Functions
GROUP BY
HAVING
INNER JOIN
LEFT JOIN
RIGHT JOIN

This progression demonstrates how SQL can be used to create, manage, retrieve, transform, and analyze structured data.

👩‍💻 Author

Maathangi

Aspiring Data Analyst

Skills

SQL • Excel • Power BI • Power Query • Looker Studio

Connect With Me

🔗 GitHub:
https://github.com/Maathangi1412

🔗 LinkedIn:
https://www.linkedin.com/in/maathangi-p-analyst

⭐ Conclusion

This project provided hands-on experience in building and analyzing a relational Employee Database using MySQL.

Starting with DDL and database design, the project progressed into DML, data retrieval, filtering, sorting, aggregation, grouping, and SQL joins.

The project strengthened my understanding of relational databases and demonstrated how SQL can be applied to data management, data quality, analysis, and data-driven decision-making.



