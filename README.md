# 🗄️ Employee Database Management System using SQL

## 📌 Project Title

Employee Database Management System using MySQL

---

# 📖 Problem Statement

Organizations require a structured database to efficiently manage employee information, departments, and office locations. Manually maintaining employee records can lead to redundancy, inconsistency, and data integrity issues.

The objective of this project is to design and manage a relational Employee Database using SQL by implementing database creation, table management, constraints, schema modifications, and data integrity rules. This project demonstrates fundamental Database Definition Language (DDL) concepts and relational database design using MySQL.

---

# 🗃️ Database Details

### Database Name

**Employee**

### Tables Created

### 1. Departments

| Column | Data Type | Constraint |
|---------|-----------|------------|
| department_id | INT | Primary Key |
| department_name | VARCHAR(50) | NOT NULL, UNIQUE |

---

### 2. Locations

| Column | Data Type | Constraint |
|---------|-----------|------------|
| location_id | INT | AUTO_INCREMENT, Primary Key |
| location_name | VARCHAR(50) | NOT NULL, UNIQUE |

---

### 3. Employees

| Column | Data Type | Constraint |
|---------|-----------|------------|
| employee_id | INT | Primary Key |
| employee_name | VARCHAR(100) | NOT NULL |
| Gender | CHAR(1) | CHECK ('M','F') |
| Age | INT | CHECK (Age >=18) |
| Hire_date | DATE | DEFAULT CURRENT_DATE |
| Designation | VARCHAR(100) | |
| Salary | DECIMAL(10,2) | |
| department_id | INT | Foreign Key |
| location_id | INT | Foreign Key |

---

## Entity Relationship

- One Department can have multiple Employees.
- One Location can have multiple Employees.
- Employees are linked to Departments and Locations using Foreign Keys.

---

# 🎯 Project Objectives

- Create a relational database using MySQL.
- Design normalized tables for employee management.
- Apply database constraints to ensure data integrity.
- Modify database schema using ALTER commands.
- Implement relationships using Primary and Foreign Keys.
- Practice SQL Database Definition Language (DDL) commands.

---

# 🛠️ SQL Concepts Used

## Database Commands
- CREATE DATABASE
- USE DATABASE
- DROP DATABASE

## Table Commands
- CREATE TABLE
- DESC
- RENAME TABLE
- TRUNCATE TABLE
- DROP TABLE

## ALTER TABLE Operations
- ADD COLUMN
- MODIFY COLUMN
- DROP COLUMN
- CHANGE COLUMN

## Constraints
- PRIMARY KEY
- FOREIGN KEY
- AUTO_INCREMENT
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT

## Data Types
- INT
- VARCHAR
- CHAR
- DATE
- DECIMAL

---

# 📝 Query Explanations

## 1. Database Creation

Created the **Employee** database to store all employee-related information.

```sql
CREATE DATABASE Employee;
```

Purpose:
- Initializes a new relational database.

---

## 2. Table Creation

Created three relational tables:

- Departments
- Locations
- Employees

Purpose:
- Store employee, department, and location information in separate normalized tables.

---

## 3. DESCRIBE Command

```sql
DESC Employees;
```

Purpose:
- Displays table structure, columns, data types, and constraints.

---

## 4. ALTER TABLE Operations

Performed multiple schema modifications including:

### Add Column

Added Email column.

```sql
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(100);
```

### Modify Column

Changed Designation column size.

```sql
ALTER TABLE Employees
MODIFY COLUMN Designation VARCHAR(100);
```

### Drop Column

Removed Age column.

```sql
ALTER TABLE Employees
DROP COLUMN Age;
```

### Rename Column

Changed Hire_date to Date_of_Joining.

```sql
ALTER TABLE Employees
CHANGE COLUMN Hire_date Date_of_Joining DATE;
```

Purpose:
- Demonstrates schema evolution without recreating the table.

---

## 5. Rename Tables

Renamed tables to improve naming consistency.

```sql
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
```

Purpose:
- Demonstrates table maintenance.

---

## 6. TRUNCATE TABLE

```sql
TRUNCATE TABLE Employees;
```

Purpose:
- Removes all records while preserving table structure.

---

## 7. DROP TABLE

```sql
DROP TABLE Employees;
```

Purpose:
- Permanently deletes the table from the database.

---

## 8. DROP DATABASE

```sql
DROP DATABASE Employee;
```

Purpose:
- Deletes the complete database.

---

## 9. Implementing Constraints

Created tables with multiple integrity constraints.

Implemented:

- Primary Key
- Foreign Key
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT
- AUTO_INCREMENT

Purpose:
- Ensure data accuracy, consistency, and relational integrity.

---

# 🔑 Key Features

- Relational Database Design
- Table Creation
- Schema Modification
- Database Maintenance
- Data Integrity
- Primary & Foreign Keys
- Constraint Implementation
- Database Normalization

---

# 💻 Skills Demonstrated

- SQL
- MySQL
- Database Design
- Relational Database Management
- DDL Commands
- Schema Design
- Constraint Implementation
- Database Normalization
- Data Integrity
- Problem Solving

---

# 🛠️ Tools Used

- MySQL
- MySQL Workbench

---

# 📂 Repository Structure

```
Employee-Database-SQL/

│── Employee_Database.sql
│── README.md
```

---

# 📚 Learning Outcomes

Through this project, I learned to:

- Design relational databases from scratch.
- Create normalized tables.
- Apply SQL constraints effectively.
- Modify database schemas using ALTER commands.
- Maintain database structures using DDL operations.
- Establish relationships using Primary and Foreign Keys.
- Improve data integrity through constraints.

---

# ✅ Conclusion

This project provided hands-on experience in designing and managing a relational database using MySQL. It strengthened my understanding of Database Definition Language (DDL), table creation, schema modification, relational modeling, and constraint implementation. By building an Employee Database Management System, I gained practical knowledge of database design principles and developed a solid foundation in SQL for real-world data management applications.

---

## 👩‍💻 Author

**Maathangi**

Aspiring Data Analyst

📌 Skills: SQL • Excel • Power BI • Power Query • Looker Studio

🔗 GitHub: https://github.com/Maathangi1412

🔗 LinkedIn: www.linkedin.com/in/maathangi-p-analyst
