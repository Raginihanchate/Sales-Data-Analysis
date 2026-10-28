
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    SaleDate DATE,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    Region VARCHAR(50)
);

INSERT INTO Sales VALUES
(1, '2026-01-05', 'Laptop', 'Electronics', 2, 45000, 'South'),
(2, '2026-01-08', 'Mouse', 'Accessories', 5, 500, 'North'),
(3, '2026-01-12', 'Keyboard', 'Accessories', 3, 1200, 'South'),
(4, '2026-02-03', 'Laptop', 'Electronics', 1, 45000, 'East'),
(5, '2026-02-10', 'Monitor', 'Electronics', 2, 12000, 'West'),
(6, '2026-02-15', 'Mouse', 'Accessories', 10, 500, 'South'),
(7, '2026-03-01', 'Keyboard', 'Accessories', 4, 1200, 'North'),
(8, '2026-03-05', 'Monitor', 'Electronics', 3, 12000, 'South'),
(9, '2026-03-12', 'Laptop', 'Electronics', 2, 45000, 'West'),
(10, '2026-03-20', 'Mouse', 'Accessories', 8, 500, 'East');
