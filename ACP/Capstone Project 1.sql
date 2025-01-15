CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, City, Country)
VALUES
    (1, 'John', 'Doe', 'New York', 'USA'),
    (2, 'Jane', 'Smith', 'London', 'UK'),
    (3, 'David', 'Lee', 'Paris', 'France'),
    (4, 'Sarah', 'Jones', 'Sydney', 'Australia'),
    (5, 'Michael', 'Brown', 'New York', 'USA'),
    (6, 'Emily', 'Davis', 'London', 'UK');

SELECT * FROM Customers WHERE Country = 'USA';

SELECT Country, COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Country;

SELECT * FROM Customers
WHERE Country = 'UK'
ORDER BY LastName DESC
LIMIT 2;

CREATE TABLE US_UK_Customers AS
SELECT * FROM Customers WHERE Country IN ('USA', 'UK');

UPDATE Customers SET City = 'Los Angeles' WHERE CustomerID = 1;

DELETE FROM Customers WHERE CustomerID = 2;

CREATE VIEW FrenchCustomers AS
SELECT * FROM Customers WHERE Country = 'France';

SELECT * FROM FrenchCustomers;