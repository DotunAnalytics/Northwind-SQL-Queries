# Northwind-SQL-Queries
# Northwind Database SQL Queries

## Overview
This project explores the **Northwind database** using SQL queries to extract meaningful insights. The queries focus on analyzing employee performance, product demand, and supply chain metrics using various SQL techniques, including joins, aggregations, and filtering.

## Features
- **Employee Analysis:** Counted the number of employees and evaluated their performance.
- **Product Insights:** Identified the most ordered products and the least supplied products.
- **Advanced SQL Joins:** Utilized INNER JOIN, CROSS JOIN, LEFT JOIN, and RIGHT JOIN to link multiple tables.
- **Aggregations & Grouping:** Used `GROUP BY` and `ORDER BY` to organize data meaningfully.
- **Time-based Queries:** Filtered data within specific timeframes using `WHERE`, `BETWEEN`, `AND`, and `OR` clauses.

## Technologies Used
- SQL
- Northwind Database (Sample Database for SQL Practice)
- SQL Query Tools (e.g., MySQL, PostgreSQL, SQL Server, or SQLite)
  
- SQL Techniques Used

I utilized the following SQL techniques to interact with the database effectively:

Joins
INNER JOIN – To find matching records between tables.
CROSS JOIN – To create combinations of records.
LEFT JOIN – To retrieve all records from the left table and matching ones from the right.
RIGHT JOIN – To retrieve all records from the right table and matching ones from the left.

## Getting Started
1. Install a database management system that supports SQL (MySQL, PostgreSQL, etc.).
2. Download and import the **Northwind database**.
3. Run the SQL queries included in this project to extract insights.

## Example Queries
```sql
-- Count the number of employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Find the most ordered products
SELECT ProductID, ProductName, COUNT(*) AS OrderCount
FROM OrderDetails
GROUP BY ProductID, ProductName
ORDER BY OrderCount DESC;

-- Products that were least supplied
SELECT ProductID, ProductName, SUM(QuantityPerUnit) AS TotalSupplied
FROM Products
GROUP BY ProductID, ProductName
ORDER BY TotalSupplied ASC;
```
![Screenshot 2025-02-17 231025](https://github.com/user-attachments/assets/d4351587-5aab-48d7-808c-b790cb06ebc0)


## Contributing
Feel free to fork this repository and submit pull requests with improvements or additional SQL queries.

## License
This project is open-source and available under the [MIT License](LICENSE).

---
Happy Querying! 🚀

