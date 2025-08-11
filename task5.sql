CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    MembershipDate DATE,
    Address VARCHAR(255)
);
SELECT * FROM librarydb.customers;
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, MembershipDate, Address) VALUES (201,'Amit', 'Sharma', 'amit.sharma@gmail.com', '9876543210', '2022-03-15', 'MG Road, Delhi');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, MembershipDate, Address) VALUES (202,'Priya', 'Iyer', 'priyaiyer@gmail.com', '9823456789', '2023-06-22', 'Anna Nagar, Chennai');
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, MembershipDate, Address) VALUES (203,'Rahul', 'Patel', 'patelrahul@gmail.com', '9812345678', '2021-11-05', 'Law Garden, Ahmedabad');
INSERT INTO Customers ( CustomerID, FirstName, LastName, Email, Phone, MembershipDate, Address) VALUES (204,'', 'Pvvatel', 'patel.rahul@gmail.com', '9812300078', '2021-10-05', 'mjchLaw Garden, Ahmedabad');
update Customers set FirstName='Parth' where CustomerID=204;
update Customers set LastName='Sharma' where CustomerID=204;
update Customers set Address='Viman Nagar, Pune' where CustomerID=204;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    BookTitle VARCHAR(255),
    OrderDate DATE,
    Status ENUM('Borrowed'),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
SELECT * FROM librarydb.orders;
INSERT INTO Orders (OrderID, CustomerID, BookTitle, OrderDate, Status) VALUES (301, 201, 'Too Good To Be True', '2024-12-01', 'Borrowed');
INSERT INTO Orders (OrderID, CustomerID, BookTitle, OrderDate, Status) VALUES (302, 202, 'The White Tiger', '2025-01-10', 'Borrowed');
INSERT INTO Orders (OrderID, CustomerID, BookTitle, OrderDate, Status) VALUES (303, 203, 'The Art of Not Overthinking', '2025-02-06', 'Borrowed');
INSERT INTO Orders (OrderID, CustomerID, BookTitle, OrderDate, Status) VALUES (304, 204, 'The Palace of Illusions', '2025-02-14', 'Borrowed');

-- Inner Join
SELECT c.CustomerID, c.FirstName, c.LastName, o.BookTitle, o.Status
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Left Join
SELECT c.CustomerID, c.FirstName, c.LastName, o.BookTitle, o.Status
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Right Join
SELECT c.CustomerID, c.FirstName, c.LastName, o.BookTitle, o.Status
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Full Join
SELECT c.CustomerID, c.FirstName, c.LastName, o.BookTitle, o.Status
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerID, c.FirstName, c.LastName, o.BookTitle, o.Status
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

