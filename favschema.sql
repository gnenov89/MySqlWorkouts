DROP DATABASE IF EXISTS Bamazon;
CREATE DATABASE Bamazon;
USE Bamazon;


CREATE TABLE Products (
ItemId INT NOT NULL,
productName VARCHAR(50) NOT NULL,
departmentName VARCHAR(50)NOT NULL,
price DECIMAL (4 ,2)NOT NULL,
stockQuantity INT NOT NULL
);

INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity) 
VALUES (
12345,
'Duvet cover',
'Home',
89.99,
25);

INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity)
VALUES (
678591,
'Mens zip-up Hoodie',
'Mens clothing',
29.99,
25);

INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity)
VALUES (
78912,
'Record player',
'Electronics',
10.99,
8);

INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity)
VALUES (
34567,
'Skinny Jeans',
'Womens clothing',
59.99,
30);

INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity)
VALUES (
89123,
'T-shirt',
'Wonens clothing',
15.99,
8);

INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity)
VALUES (
45678,
'Beanie',
'Mens clothing',
21.99,
15);



INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity)
VALUES (
91234,
'Cotton sheets',
'Home',
49.99,
10);

INSERT INTO Products(itemID, productName, departmentName, price, stockQuantity)
VALUES (
56789,
'Shark Kitty bed',
'Pets',
25.99,
5);


USE Bamazon;
CREATE TABLE Departments(
departmentID INT AUTO_INCREMENT,
PRIMARY KEY(departmentID),
departmentName VARCHAR(50)NOT NULL,
overHeadCosts DECIMAL(11, 2) NOT NULL,
totalSales DECIMAL(11, 2) NOT NULL
);

INSERT INTO Departments (departmentName, overHeadCosts, totalSales) 
VALUES (
'Mens Clothing',
10000,
0);

INSERT INTO Departments (departmentName, overHeadCosts, totalSales) 
VALUES (
'Home',
20000,
0);

INSERT INTO Departments (departmentName, overHeadCosts, totalSales) 
VALUES (
'Shoes',
15000,
0);

INSERT INTO Departments (departmentName, overHeadCosts, totalSales) 
VALUES (
'Electronics',
50000,
0);

INSERT INTO Departments (departmentName, overHeadCosts, totalSales) 
VALUES (
'Womens Clothing',
25000,
0);

-- a table TotalProfits for the Managers request
SHOW TABLES;
CREATE VIEW Bamazon.TotalProfits AS SELECT departmentID, departmentName, overHeadCosts, totalSales, totalSales-overHeadCosts AS TotalProfit FROM Departments;




















