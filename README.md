## Employee Participation Information System
A simple relational database project that manages employees, departments, projects, and employee roles in projects.
This repository includes:

* The Entity–Relationship Diagram (ERD)
* A full SQL script to create all four tables
* Sample INSERT statements to populate the tables
* Example SELECT queries to view the data

## Project Overview
This project models how employees participate in projects within an organization. It follows a clean relational structure based on the ERD, ensuring correct cardinalities, normalized tables, and referential integrity through primary and foreign keys.

The database tracks:

Departments — each department has a manager and can oversee many employees and projects

Employees — each employee belongs to exactly one department

Projects — each project is assigned to one department

Employee_Project — a junction table representing the many‑to‑many relationship between employees and projects, including each employee’s role in a project

## ERD Summary
The ERD contains the following main relationships:

* Department 1 → N Employee

* Department 1 → N Project

* Employee N → N Project (resolved through the Employee_Project table)

### Database Structure (SQL)
The following tables were implemented:

CREATE TABLE Department (
    Num_S INT PRIMARY KEY,
    Label VARCHAR(255),
    Manager_Name VARCHAR(255)
);

CREATE TABLE Employee (
    Num_E INT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(255),
    Salary DECIMAL(10, 2),
    Department_Num_S INT,
    FOREIGN KEY (Department_Num_S) REFERENCES Department(Num_S)
);

CREATE TABLE Project (
    Num_P INT PRIMARY KEY,
    Title VARCHAR(255),
    Start_Date DATE,
    End_Date DATE,
    Department_Num_S INT,
    FOREIGN KEY (Department_Num_S) REFERENCES Department(Num_S)
);

CREATE TABLE Employee_Project (
    Employee_Num_E INT,
    Project_Num_P INT,
    Role VARCHAR(255),
    PRIMARY KEY (Employee_Num_E, Project_Num_P),
    FOREIGN KEY (Employee_Num_E) REFERENCES Employee(Num_E),
    FOREIGN KEY (Project_Num_P) REFERENCES Project(Num_P)
);
## Sample Data Inserted
Sample data includes three departments, five employees, three major projects, and their assigned employee roles.

This provides a realistic dataset for:

testing queries

demonstrating relationships

validating the ERD

## How to Use
* Use draw.io to create the ERD model
* Clone the repository
* Open the SQL file in your preferred database tool (SQL Server, MySQL, etc.)
* Run the table creation commands
* Run the insert commands
* Execute the SELECT queries to view populated results

## Purpose of This Project
This system was developed as part of a database modeling and implementation exercise to demonstrate:

ERD design

Conversion from conceptual model → logical model → physical SQL model

Use of foreign keys

Many‑to‑many relationship handling

Practical SQL implementation

   
