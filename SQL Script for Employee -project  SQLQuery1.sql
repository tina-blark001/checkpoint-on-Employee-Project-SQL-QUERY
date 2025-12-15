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



SELECT * FROM Department;
SELECT * FROM Employee;
SELECT * FROM Project;
SELECT * FROM Employee_Project;


INSERT INTO Department
VALUES
(1, 'Finance', 'Alice Johnson'),
(2, 'IT', 'Michael Smith'),
(3, 'HR', 'Grace Brown');


INSERT INTO Employee
VALUES
(101, 'John Doe', 'Analyst', 4500.00, 1),
(102, 'Sarah Kim', 'Developer', 5200.00, 2),
(103, 'James Lee', 'HR Officer', 4000.00, 3),
(104, 'Maria Stone', 'Network Engineer', 5800.00, 2),
(105, 'Daniel Young', 'Accountant', 4700.00, 1);


INSERT INTO Project
VALUES
(201, 'Payroll Upgrade', '2025-01-10', '2025-06-30', 1),
(202, 'Mobile App', '2025-03-01', '2025-12-10', 2),
(203, 'Recruitment System', '2025-02-15', '2025-08-20', 3);


INSERT INTO Employee_Project
VALUES
(101, 201, 'Data Analyst'),
(105, 201, 'Financial Auditor'),
(102, 202, 'Frontend Developer'),
(104, 202, 'System Architect'),
(103, 203, 'Project Coordinator');








