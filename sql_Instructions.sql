CREATE DATABASE umuzi;

CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR,
    Address VARCHAR(200),
    Phone INT(10),
    Email VARCHAR(100),
    City VARCHAR(20),
    Country VARCHAR(50)
);

CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    JobTitle VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY NOT NULL,
    ProductID INT NOT NULL,
    PaymentID INT NOT NULL,
    FulfilledByEmployeeID INT NOT NULL,
    DateRequired DATE NOT NULL,
    DateShipped DATE,
    Status VARCHAR(20)
);

CREATE TABLE Payments(
    CustomerId INT PRIMARY KEY NOT NULL,
    PaymentID INT NOT NULL,
    PaymentDate DATE NOT NULL, 
    Amount DECIMAL
);

CREATE TABLE Products(
    ProductId INT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(100),
    Desrciption VARCHAR(300),
    Amount DECIMAL
);
-- PART2

SELECT * FROM Customers;

SELECT FirstName FROM Customers;



