CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 101, '2023-10-10', 150.00),
    (2, 102, '2023-10-11', 200.00),
    (3, 101, '2023-10-12', 100.00),
    (4, 103, '2023-10-13', 300.00),
    (5, 102, '2023-10-14', 150.00);

SELECT SUM(TotalAmount) AS TotalSales FROM Orders;

SELECT AVG(TotalAmount) AS AvgOrderAmount FROM Orders;

SELECT CustomerID, COUNT(*) AS OrderCount FROM Orders GROUP BY CustomerID;

SELECT MAX(TotalAmount) AS MaxOrderAmount FROM Orders;

SELECT MIN(TotalAmount) AS MinOrderAmount FROM Orders;