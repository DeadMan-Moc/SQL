CREATE DATABASE umuzi;

CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY NOT NULL,
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

INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(1, 'John', 'Hibert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'South Africa');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(2, 'Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(3, 'Leon', 'Glen', 'Male', '81 Everton Rd, Gillits', 0820832830, 'leaon@gmail.com', 'Durban', 'South Africa');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(4, 'Charl', 'Muller', 'Male', '290 Dorset Ecke', +44856872553, 'Charl.muller@yahoo.com', 'Berlin', 'Germany');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(5, 'Julia', 'Stein', 'Female', '2 Wernerring', +448672445058, 'Js234@yahoo.com', 'Frankfurt', 'Germany');

-- results after inserting data in Customers table

 Modify	customerid	firstname	lastname	gender	address	phone	email	city	country
 edit	1	John	Hibert	Male	284 chaucer st	84789657	john@gmail.com	Johannesburg	South Africa
 edit	2	Thando	Sithole	Female	240 Sect 1	794445584	thando@gmail.com	Cape Town	South Africa
 edit	3	Leon	Glen	Male	81 Everton Rd, Gillits	820832830	leaon@gmail.com	Durban	South Africa
 edit	4	Charl	Muller	Male	290 Dorset Ecke	44856872553	Charl.muller@yahoo.com	Berlin	Germany
 edit	5	Julia	Stein	Female	2 Wernerring	448672445058	Js234@yahoo.com	Frankfurt	Germany



CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    JobTitle VARCHAR(20)
);

-- Inserting values in the Employees table.

INSERT INTO Employees(EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES (1,'Kani','Matthew','mat@gmail.com','Manager');
INSERT INTO Employees(EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES (2,'Lesly','Cronje','LesC@gmail.com','Clerk');
INSERT INTO Employees(EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES (3,'Gideon','Maduku','m@gmail.com','Accountant');

-- Results from the Employees table on the server

 Modify	employeeid	firstname	lastname	email	jobtitle
 edit	1	Kani	Matthew	mat@gmail.com	Manager
 edit	2	Lesly	Cronje	LesC@gmail.com	Clerk
 edit	3	Gideon	Maduku	m@gmail.com	Accountant




CREATE TABLE Orders (
    OrderID INT PRIMARY KEY NOT NULL,
    ProductID INT NOT NULL,
    PaymentID INT NOT NULL,
    FulfilledByEmployeeID INT NOT NULL,
    DateRequired DATE NOT NULL,
    DateShipped DATE,
    status VARCHAR(20)
);
--Inserting data in the orders table

INSERT INTO Orders (OrderID,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired ,DateShipped,status)
VALUES (1,1,1,2,'05-09-2018', NULL,'Not shipped');
INSERT INTO Orders (OrderID,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired ,DateShipped,status)
VALUES (2,1,2,2,'04-09-2018','03-09-2018','Shipped');
INSERT INTO Orders (OrderID,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired ,DateShipped,status)
VALUES (3,3,3,3,'06-09-2018', NULL,'Not shipped');

--results for added data in the orders table

 Modify	orderid	productid	paymentid	fulfilledbyemployeeid	daterequired	dateshipped	status
 edit	2	1	2	2	2018-04-09	2018-03-09	Shipped
 edit	1	1	1	2	2018-05-09	NULL	Not shipped
 edit	3	3	3	3	2018-06-09	NULL	Not shipped

CREATE TABLE Payments(
    CustomerId INT PRIMARY KEY NOT NULL,
    PaymentID INT NOT NULL,
    PaymentDate DATE NOT NULL, 
    Amount DECIMAL
);

--Inserting data in the Payments table

INSERT INTO Payments(CustomerId, PaymentID, PaymentDate, Amount)
VALUES (1,1,'01-09-2018', 150.75);
INSERT INTO Payments(CustomerId, PaymentID, PaymentDate, Amount)
VALUES (5,2,'03-09-2018',150.75);
INSERT INTO Payments(CustomerId, PaymentID, PaymentDate, Amount)
VALUES (4,3,'03-09-2018',700.60);

--results for added data in the Payments table

	customerid	paymentid	paymentdate	  amount
	   1	      1	        2018-01-09	  150.75
	   5	      2	        2018-03-09	  150.75
 	   4	      3	        2018-03-09	  700.60

CREATE TABLE Products(
    ProductId INT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(100),
    Desrciption VARCHAR(300),
    Amount DECIMAL
);

--Inserting data in the Products table

INSERT INTO Products(ProductId,ProductName,Desrciption,Amount)
VALUES (1,'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever',150.75);
INSERT INTO Products(ProductId,ProductName,Desrciption,Amount)
VALUES (2,'Classic Car','Turnable front wheels, steering function',550.75);
INSERT INTO Products(ProductId,ProductName,Desrciption,Amount)
VALUES (3,'Sports car','Turnable front wheels, steering function',700.60)

--results for added data in the Products table

	productid  productname  	        desrciption	                                                                   amount
	1	       Harley Davidson Chopper	This replica features working kickstand, front suspension, gear-shift lever	    150.75
	2	       Classic Car	            Turnable front wheels, steering function	                                    550.75
	3	       Sports car	            Turnable front wheels, steering function                                        700.60
-- PART2
-- Selecting all data from customer table
SELECT * FROM Customers;

customerid	firstname	lastname	gender	address	phone	email	city	country
1	John	Hibert	Male	284 chaucer st	84789657	john@gmail.com	Johannesburg	South Africa
2	Thando	Sithole	Female	240 Sect 1	794445584	thando@gmail.com	Cape Town	South Africa
3	Leon	Glen	Male	81 Everton Rd, Gillits	820832830	leaon@gmail.com	Durban	South Africa
4	Charl	Muller	Male	290 Dorset Ecke	44856872553	Charl.muller@yahoo.com	Berlin	Germany
5	Julia	Stein	Female	2 Wernerring	448672445058	Js234@yahoo.com	Frankfurt	Germany

-- Selecting Name from customers

SELECT FirstName FROM Customers;

-- Results
firstname
John
Thando
Leon
Charl
Julia

-- Select name where ID of the customer equals 1
SELECT FirstName FROM Customers WHERE CustomerID = 1;
--Results
firstname
John

-- Delete name where ID of the customer equals 2
DELETE FROM Customers WHERE CustomerID = 2;
--Results

 customerid	firstname	lastname	gender	address	phone	email	city	country
 edit	1	John	Hibert	Male	284 chaucer st	84789657	john@gmail.com	Johannesburg	South Africa
 edit	3	Leon	Glen	Male	81 Everton Rd, Gillits	820832830	leaon@gmail.com	Durban	South Africa
 edit	4	Charl	Muller	Male	290 Dorset Ecke	44856872553	Charl.muller@yahoo.com	Berlin	Germany
 edit	5	Julia	Stein	Female	2 Wernerring	448672445058	Js234@yahoo.com	Frankfurt	Germany


--Counting unique status
SELECT COUNT(DISTINCT status) From Orders;
-- Results
count
2
-- Returning max price from payments
SELECT MAX(Amount) FROM Payments;
--results
max
700.60

--Selecting all and ordering by country
SELECT * FROM Customers ORDER BY Country;
--Results

customerid	firstname	lastname	gender	address	                  phone	      email	                    city	      country
4	          Charl     Muller	     Male	290 Dorset Ecke	        44856872553	  Charl.muller@yahoo.com	Berlin	       Germany
5	          Julia	    Stein	    Female	2 Wernerring	        448672445058  Js234@yahoo.com	        Frankfurt	   Germany
1	          John	    Hibert	     Male	284 chaucer st	        84789657	  john@gmail.com	        Johannesburg   South Africa
3	          Leon	    Glen	     Male	81 Everton Rd, Gillits	820832830	  leaon@gmail.com	        Durban	       South Africa


-- Selecting the products of the prices between 100 and 600
SELECT * FROM Products WHERE Amount BETWEEN 100 AND 600;
--results
productid	productname	            desrciption	                                                                 amount
1	        Harley Davidson Chopper	This replica features working kickstand, front suspension, gear-shift lever	 150.75
2	        Classic Car	            Turnable front wheels, steering function	                                 550.75

-- Selecting from customers where country is germany and city is Berlin
SELECT * FROM Customers WHERE Country ='Germany' AND City='Berlin';
--Results 


customerid	firstname	lastname	gender	address	phone	             email	                city	country
4	         Charl	      Muller	Male	290 Dorset Ecke	44856872553	 Charl.muller@yahoo.com	Berlin	Germany

-- Selecting from customers where country is city is Cape town or durban
SELECT * FROM Customers WHERE City ='Durban' OR City='Cape Town';
--Results
customerid	firstname	lastname	gender	address	                      phone	      email	         city	country
3	         Leon	      Glen      	Male	81 Everton Rd, Gillits	820832830	leaon@gmail.com	Durban	South Africa

--Select from products where price is greater than 1000
SELECT * FROM Products WHERE Amount > 1000;
--Results
No rows.

--returning the sum of the Price from the payments table
SELECT SUM(Amount) FROM Payments;
--Results

sum
1002.10

--Counting where status of the orders is shipped
SELECT COUNT(status) FROM Orders WHERE status='Shipped';

--Results

count
1

--Calculated average of price by 12
SELECT AVG(Amount / 12) FROM Products;
--Results
avg
38.9472222222222222


-- INNER JOIN create a query that selects all Payments with Customer information.
SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.Gender, Customers.Address, Customers.Phone, Customers.Email, Customers.Country, Customers.City FROM Customers
INNER JOIN Payments ON Payments.CustomerID=Customers.CustomerID;
-- Reaults
customerid	firstname	lastname	gender	address	phone	email	country	city
1	John	Hibert	Male	284 chaucer st	84789657	john@gmail.com	South Africa	Johannesburg
5	Julia	Stein	Female	2 Wernerring	448672445058	Js234@yahoo.com	Germany	Frankfurt
4	Charl	Muller	Male	290 Dorset Ecke	44856872553	Charl.muller@yahoo.com	Germany	Berlin


-- 
SELECT * FROM Products WHERE description > 'Turnable front wheels steering function';
--results
productid	productname	 desrciption	                            amount
2	        Classic Car	 Turnable front wheels, steering function	550.75
3	        Sports car 	 Turnable front wheels, steering function	700.60
