USE soumildb;

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

-- =========================
-- CUSTOMERS TABLE
-- =========================

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Aman', 'Mumbai'),
(3, 'Sneha', 'Bangalore'),
(4, 'Priya', 'Hyderabad');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mouse', 'Electronics', 700),
(103, 'Keyboard', 'Electronics', 1200),
(104, 'Smartphone', 'Electronics', 30000);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders VALUES
(1001, 1, '2026-05-10', 55700),
(1002, 2, '2026-05-11', 30000),
(1003, 3, '2026-05-12', 1200),
(1004, 1, '2026-05-15', 700);

SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Orders;

SELECT c.customer_name,
       o.order_id,
       o.total_amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT city,
       COUNT(*) AS total_customers
FROM Customers
GROUP BY city;

SELECT *
FROM Products
ORDER BY price DESC;

SELECT SUM(total_amount) AS overall_sales
FROM Orders;

SELECT c.customer_name,
       SUM(o.total_amount) AS total_spending
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spending DESC;

SELECT customer_name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE total_amount > 30000
);


CREATE VIEW High_Value_Orders AS
SELECT *
FROM Orders
WHERE total_amount > 30000;

SELECT * FROM High_Value_Orders;