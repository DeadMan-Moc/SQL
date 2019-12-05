CREATE DATABASE umuzi;

CREATE TABLE Customers(
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR,
    Address VARCHAR(200),
    Phone BIGINT,
    Email VARCHAR(100),
    City VARCHAR(20),
    Country VARCHAR(50)
);
  
-- Inserting values in the Customers table.

INSERT INTO Customers(FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES('John', 'Hibert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'South Africa');
INSERT INTO Customers(FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES('Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa');
INSERT INTO Customers( FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES('Leon', 'Glen', 'Male', '81 Everton Rd, Gillits', 0820832830, 'leaon@gmail.com', 'Durban', 'South Africa');
INSERT INTO Customers(FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES('Charl', 'Muller', 'Male', '290 Dorset Ecke', +44856872553, 'Charl.muller@yahoo.com', 'Berlin', 'Germany');
INSERT INTO Customers(FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES('Julia', 'Stein', 'Female', '2 Wernerring', +448672445058, 'Js234@yahoo.com', 'Frankfurt', 'Germany');

-- Creating table employees

CREATE TABLE Employees(
    EmployeeID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    JobTitle VARCHAR(20)
);

-- Inserting values in the Employees table.

INSERT INTO Employees(FirstName, LastName, Email, JobTitle)
VALUES ('Kani','Matthew','mat@gmail.com','Manager');
INSERT INTO Employees(FirstName, LastName, Email, JobTitle)
VALUES ('Lesly','Cronje','LesC@gmail.com','Clerk');
INSERT INTO Employees(FirstName, LastName, Email, JobTitle)
VALUES ('Gideon','Maduku','m@gmail.com','Accountant');


CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    ProductID INTEGER REFERENCES Products(ProductID),
    PaymentID INTEGER REFERENCES Payments(PaymentID),
    FulfilledByEmployeeID INTEGER REFERENCES Employees(EmployeeID),
    DateRequired DATE NOT NULL,
    DateShipped DATE,
    status VARCHAR(20)
);

--Inserting data into orders table

INSERT INTO Orders (DateRequired ,DateShipped,status)
VALUES ('05-09-2018', NULL,'Not shipped');
INSERT INTO Orders (DateRequired ,DateShipped,status)
VALUES ('04-09-2018','03-09-2018','Shipped');
INSERT INTO Orders (DateRequired ,DateShipped,status)
VALUES ('06-09-2018', NULL,'Not shipped');

CREATE TABLE Payments(
    PaymentID SERIAL PRIMARY KEY,
    CustomerId INTEGER REFERENCES Customers(CustomerID),
    PaymentDate DATE NOT NULL, 
    Amount DECIMAL
);

INSERT INTO Payments(PaymentDate, Amount)
VALUES ('01-09-2018', 150.75);
INSERT INTO Payments(PaymentDate, Amount)
VALUES ('03-09-2018',150.75);
INSERT INTO Payments(PaymentDate, Amount)
VALUES ('03-09-2018',700.60);

CREATE TABLE Products(
    ProductId SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Desrciption VARCHAR(300),
    Amount DECIMAL
);

--Inserting data in the Products table

INSERT INTO Products(ProductName,Desrciption,Amount)
VALUES ('Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever',150.75);
INSERT INTO Products(ProductName,Desrciption,Amount)
VALUES ('Classic Car','Turnable front wheels, steering function',550.75);
INSERT INTO Products(ProductName,Desrciption,Amount)
VALUES ('Sports car','Turnable front wheels, steering function',700.60)

-- Select everything in customers table
SELECT * FROM Customers;

-- Selecting Name from customers

SELECT FirstName FROM Customers;

-- Select name where ID of the customer equals 1
SELECT FirstName FROM Customers WHERE CustomerID = 1;

-- Delete name where ID of the customer equals 2
DELETE FROM Customers WHERE CustomerID = 2;

--Counting unique status
SELECT COUNT(DISTINCT status) From Orders;

-- Returning max price from payments
SELECT MAX(Amount) FROM Payments;

--Selecting all and ordering by country
SELECT * FROM Customers ORDER BY Country;

--

-- Selecting the products of the prices between 100 and 600
SELECT * FROM Products WHERE Amount BETWEEN 100 AND 600;
--results

-- Selecting from customers where country is germany and city is Berlin
SELECT * FROM Customers WHERE Country ='Germany' AND City='Berlin';

-- Selecting from customers where country is city is Cape town or durban
SELECT * FROM Customers WHERE City ='Durban' OR City='Cape Town';

--Select from products where price is greater than 1000
SELECT * FROM Products WHERE Amount > 1000;

--returning the sum of the Price from the payments table
SELECT SUM(Amount) FROM Payments;

--Counting where status of the orders is shipped
SELECT COUNT(status) FROM Orders WHERE status='Shipped';

--Calculated average of price by 12
SELECT AVG(Amount / 12) FROM Products;


-- INNER JOIN create a query that selects all Payments with Customer information.
SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.Gender, Customers.Address, Customers.Phone, Customers.Email, Customers.Country, Customers.City FROM Customers
INNER JOIN Payments ON Payments.CustomerID=Customers.CustomerID;

-- 
SELECT * FROM Products WHERE Desrciption > 'Turnable front wheels steering function';
