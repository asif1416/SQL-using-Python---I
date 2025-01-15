CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    Amount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductID, Quantity, SaleDate, Amount)
VALUES
    (1, 101, 10, '2023-10-10', 150.00),
    (2, 102, 5, '2023-10-11', 100.00),
    (3, 101, 8, '2023-10-12', 120.00),
    (4, 103, 15, '2023-10-13', 300.00),
    (5, 102, 2, '2023-10-14', 40.00),
    (6, 101, 5, '2023-10-15', 75.00);

SELECT ProductID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY ProductID
ORDER BY TotalSales DESC;

SELECT ProductID, SUM(Amount) AS TotalSales
FROM Sales
WHERE SaleDate >= '2023-01-01' AND SaleDate <= '2023-12-31'
GROUP BY ProductID
ORDER BY ProductID;

SELECT ProductID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY ProductID
HAVING TotalSales > 200;