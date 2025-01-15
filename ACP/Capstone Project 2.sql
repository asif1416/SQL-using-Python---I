CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT
);

INSERT INTO Products (ProductID, ProductName, Category, UnitPrice, UnitsInStock)
VALUES
    (1, 'Laptop', 'Electronics', 1200.00, 50),
    (2, 'Mouse', 'Electronics', 20.00, 100),
    (3, 'Keyboard', 'Electronics', 50.00, 75),
    (4, 'Monitor', 'Electronics', 300.00, 25),
    (5, 'Headphones', 'Electronics', 80.00, 120),
    (6, 'Table', 'Furniture', 150.00, 30),
    (7, 'Chair', 'Furniture', 80.00, 50),
    (8, 'Book', 'Books', 25.00, 100),
    (9, 'Pen', 'Stationery', 5.00, 200);

SELECT * FROM Products WHERE ProductName LIKE 'K%';

SELECT * FROM Products WHERE ProductName LIKE '%a%';

SELECT DISTINCT Category FROM Products;

SELECT * FROM Products ORDER BY UnitPrice DESC LIMIT 3;

SELECT * FROM Products WHERE UnitPrice BETWEEN 50 AND 200;

SELECT * FROM Products WHERE UnitPrice > 100 AND UnitsInStock > 0;

SELECT * FROM Products WHERE Category = 'Electronics' OR UnitPrice < 50;