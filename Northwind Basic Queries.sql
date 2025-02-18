USE northwind;
SELECT * 
FROM customers;

SELECT CustomerName, City 
FROM Customers;

SELECT DISTINCT City 
FROM Customers;
SELECT * 
FROM Products 
WHERE Price > 50;

SELECT * 
FROM Customers 
WHERE Country 
LIKE 'USA' or 'UK';

SELECT * 
FROM Orders 
ORDER BY OrderDate DESC;

SELECT * 
FROM Products 
WHERE Price 
BETWEEN 20 and 50;

SELECT * 
FROM Customers 
WHERE Country LIKE 'USA' AND City LIKE 'Portland' OR 'Kirkland';

SELECT * 
FROM Customers 
WHERE Country LIKE 'UK' OR city LIKE 'London';

SELECT * 
FROM Products 
WHERE CategoryID = 1 
OR CategoryID = 2;

SELECT max(ProductName) 
FROM Products;

SELECT * 
FROM Customers 
WHERE City = 'Portland' or city ='Kirkland';

SELECT * 
FROM Customers 
ORDER BY City DESC;

SELECT * 
FROM Products 
ORDER By Price;

SELECT ProductName, Price 
FROM Products 
ORDER By Price;

SELECT * 
FROM Suppliers 
ORDER BY City DESC;

SELECT * FROM Customers
ORDER BY Country, CustomerName;

SELECT * FROM Customers
ORDER BY CustomerName DESC, Country ASC;

SELECT * FROM Employees 
ORDER BY LastName DESC, BirthDate DESC;

SELECT * FROM Customers 
WHERE Country = 'USA' Order BY CustomerName;

SELECT * FROM Customers LIMIT 3;

SELECT * FROM Employees 
ORDER BY LastName DESC, BirthDate DESC LIMIT 5;

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;
SELECT * FROM Products Order By Price Limit 5;

SELECT * FROM Products WHERE Price > 20 LIMIT 10;

SELECT * 
FROM Customers 
WHERE City = 'London';
SELECT MAX(OrderDate) AS RecentOrder FROM Orders;
SELECT MIN(Quantity) FROM Order_details;
USE northwind;
SELECT COUNT(*) FROM products;

SELECT AVG(quantity) AS Average FROM order_details;

SELECT COUNT(employeeID) FROM employees;

SELECT SUM(quantity) FROM order_details;

SELECT SUM(price) FROM products;

SELECT * FROM Customers WHERE CustomerName NOT LIKE 'a%';

SELECT * FROM suppliers WHERE Country LIKE '%land%';

SELECT * FROM Employees WHERE FirstName LIKE '_n%';

SELECt * FROM shippers WHERE ShipperName LIKE '%express%';

SELECT * FROM Customers 
WHERE City IN ('Paris', 'London', 'Madrid');

SELECT * FROM Customers 
WHERE Country IN ('Berlin' OR 'Paris' Or 'Madrid');

SELECT * FROM Orders 
WHERE ShipperID = 1 or 3;
SELECT * FROM Products 
WHERE Price IN (10, 20, 30);

SELECT * FROM Customers 
WHERE CustomerID IN (SELECT CustomerID FROM orders);
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3)
ORDER BY Price DESC;
SELECT * FROM Products Where Price BETWEEN 50 AND 100;
SELECT * FROM Orders 
WHERE OderDate BETWEEN '1999.01.01' and '1996.12.31';

SELECT * FROM order_details 
WHERE quantity BETWEEN 5 AND 15 ORDER BY quantity;

SELECT * FROM Customers 
WHERE Country = 'USA' OR Country = 'UK';

SELECT * FROM Orders ORDER BY OrderDate DESC;
SELECT * FROM Products 
WHERE CategoryID IN (1,2) ORDER BY ProductName;

-- Write a query to list each product category and the total quantity of products sold in that category.
select c.categoryname as total_sold, sum(od.quantity)
from products as p
join categories as c
on p.categoryid = c.categoryid
join order_details as od
on p.productid = od.productid
group by c.categoryname;

-- Write SQL query to list the number of customers in each country.
select count(customerid) as totalcustomers, country
from customers
group by country
order by totalcustomers desc;

SELECT Suppliers.SupplierName, Products.ProductName FROM Products JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID;

SELECT ProductName AS Product, CategoryName AS Category FROM Products JOIN Categories ON Categories.CategoryID = Products.CategoryID;

SELECT ProductName AS Product, CategoryName AS Category FROM Products JOIN Categories ON Categories.CategoryID = Products.CategoryID WHERE CategoryName = 'meat/poultry';

SELECT ProductName, CategoryName, SupplierName FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID;

SELECT ProductName AS Product, CategoryName AS Category FROM Products JOIN Categories ON Categories.CategoryID = Products.CategoryID;

-- The following SQL statement lists the total sales by product:
select sum(od.quantity*p.price) as totalsales, p.productname as products
from products as p
join order_details as od 
on p.productid = od.productid
group by p.productname
order by totalsales desc;

