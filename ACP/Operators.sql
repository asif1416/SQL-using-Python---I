CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT
);

INSERT INTO Products (ProductID, ProductName, UnitPrice, UnitsInStock)
VALUES
    (1, 'Laptop', 1200.00, 50),
    (2, 'Mouse', 20.00, 100),
    (3, 'Keyboard', 50.00, 75),
    (4, 'Monitor', 300.00, 25),
    (5, 'Headphones', 80.00, 120);

SELECT ProductName, UnitPrice * UnitsInStock AS TotalPrice
FROM Products;

SELECT * FROM Products WHERE UnitPrice > 100;

SELECT * FROM Products WHERE UnitsInStock = 0 OR UnitPrice < 50;

SELECT * FROM Products WHERE UnitPrice BETWEEN 50 AND 200;

SELECT * FROM Products WHERE ProductName LIKE 'K%';

SELECT * FROM Products WHERE ProductID IN (1, 3, 5);

SELECT * FROM Products WHERE UnitsInStock IS NULL;