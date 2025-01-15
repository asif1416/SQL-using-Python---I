CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
    (1, 'John', 'Doe', 'IT', 50000.00),
    (2, 'Jane', 'Smith', 'HR', 60000.00),
    (3, 'David', 'Lee', 'Marketing', 45000.00),
    (4, 'Sarah', 'Jones', 'IT', 55000.00),
    (5, 'Michael', 'Brown', 'Finance', 70000.00);

SELECT * FROM Employees;

SELECT * FROM Employees WHERE Department = 'IT';

SELECT * FROM Employees WHERE Salary > 50000;