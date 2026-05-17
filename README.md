# E-Commerce Database Management System using SQL

## Overview

This project demonstrates the implementation of a relational database management system for an e-commerce platform using SQL. The system is designed to simulate real-world backend database operations such as customer management, product management, order processing, and sales analysis.

The project showcases practical SQL skills including table creation, data insertion, joins, aggregate functions, subqueries, views, and business-oriented analytical queries commonly used in backend and full stack development.

## Project Objective

The objective of this project is to design and manage a structured relational database system while demonstrating practical SQL concepts used in real-world software development and database management environments.

## Technologies Used

* SQL
* MySQL Workbench

## Database Schema

### Customers Table

Stores customer-related information including customer ID, customer name, and city.

### Products Table

Stores product details such as product name, category, and price.

### Orders Table

Stores customer order transactions and maintains relationships between customers and orders using foreign keys.

## SQL Concepts Demonstrated

* Database Creation
* Table Creation
* Primary Keys
* Foreign Keys
* Data Insertion
* SELECT Queries
* INNER JOIN
* GROUP BY
* ORDER BY
* Aggregate Functions
* Subqueries
* Views

## Sample Queries

### Retrieve Customer Order Details using INNER JOIN

SELECT c.customer_name,
o.order_id,
o.total_amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

### Count Total Customers by City

SELECT city,
COUNT(*) AS total_customers
FROM Customers
GROUP BY city;

### Display Products in Descending Order of Price

SELECT *
FROM Products
ORDER BY price DESC;

### Calculate Overall Sales using Aggregate Function

SELECT SUM(total_amount) AS overall_sales
FROM Orders;

### Top Customers by Total Spending

SELECT c.customer_name,
SUM(o.total_amount) AS total_spending
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spending DESC;

## Project Features

* Designed a structured relational database system
* Implemented relationships using primary and foreign keys
* Performed customer spending and sales analysis
* Generated business insights using SQL queries
* Simulated backend database operations used in e-commerce applications

## Output Screenshots

Screenshots of query execution and outputs are included in the screenshots folder for reference.

## Key Learnings

* Learned how relational databases are structured and managed using SQL
* Gained practical experience in writing optimized SQL queries
* Improved understanding of joins, aggregate functions, and subqueries
* Developed analytical thinking through sales and customer analysis
* Enhanced backend database management and querying skills

## Conclusion

This project demonstrates practical SQL and database management skills including relational database design, data manipulation, analytical querying, and backend-oriented database operations commonly used in full stack development environments.
