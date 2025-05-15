CREATE USER 'Men3m'@'localhost' IDENTIFIED BY '1608';
GRANT ALL PRIVILEGES ON *.* TO 'Men3m'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE USER 'user'@'localhost' IDENTIFIED BY '4105';
GRANT SELECT, INSERT, UPDATE, DELETE ON ProjectDB.* TO 'user'@'localhost';
FLUSH PRIVILEGES;

CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL);


  CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL );


CREATE TABLE Products (
         ProductID INT PRIMARY KEY,
         CategoryID INT,
         Name VARCHAR(100) NOT NULL,
         Price DECIMAL(10, 2),
         Stock INT,
         FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID));


 CREATE TABLE Orders (
         OrderID INT PRIMARY KEY,
         Status VARCHAR(50),
         Total DECIMAL(10, 2),
         CustomerID INT,
         FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));


CREATE TABLE Sales (
         SaleID INT PRIMARY KEY,
         OrderID INT,
         ProductID INT,
         OrderDate DATE,
         Quantity INT,
         FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
         FOREIGN KEY (ProductID) REFERENCES Products(ProductID));


CREATE TABLE NumbersPhone (
        ID INT PRIMARY KEY,
        CustomerID INT,
        Phone VARCHAR(15),
        FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));


INSERT INTO Customer (CustomerID, Name) VALUES
(1, 'Ahmed Ali'),
(2, 'Sara Mohamed'),
(3, 'Omar Hassan'),
(4, 'Mona Sami'),
(5, 'Khaled Youssef'),
(6, 'Laila Adel'),
(7, 'Tamer Fawzy'),
(8, 'Nourhan Samir'),
(9, 'Hassan Magdy'),
(10, 'Fatma Nabil'),
(11, 'Youssef Hamed'),
(12, 'Dina Khalil'),
(13, 'Fady Adel'),
(14, 'Nadia Hassan'),
(15, 'Ali Mahmoud'),
(16, 'Rania Sami'),
(17, 'Khaled Samir'),
(18, 'Mona Farouk'),
(19, 'Samiha Nour'),
(20, 'Adel Tarek');



INSERT INTO Categories (CategoryID, Name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Toys'),
(5, 'Furniture'),
(6, 'Sports'),
(7, 'Beauty'),
(8, 'Food'),
(9, 'Stationery'),
(10, 'Automotive'),
(11, 'Health'),
(12, 'Jewelry'),
(13, 'Baby Products'),
(14, 'Music'),
(15, 'Gardening'),
(16, 'Pet Supplies'),
(17, 'Travel'),
(18, 'Computers'),
(19, 'Home Appliances'),
(20, 'Office Supplies');



INSERT INTO Products (ProductID, CategoryID, Name, Price, Stock) VALUES
(1, 1, 'Smartphone', 3000.00, 50),
(2, 2, 'Jeans', 400.00, 100),
(3, 3, 'Novel Book', 120.00, 200),
(4, 4, 'Toy Car', 150.00, 80),
(5, 5, 'Office Chair', 700.00, 30),
(6, 6, 'Football', 180.00, 60),
(7, 7, 'Lipstick', 90.00, 150),
(8, 8, 'Chocolate Box', 100.00, 120),
(9, 9, 'Notebook', 40.00, 200),
(10, 10, 'Car Tire', 1200.00, 15),
(11, 11, 'Vitamin C', 150.00, 80),
(12, 12, 'Gold Necklace', 5000.00, 10),
(13, 13, 'Baby Stroller', 3500.00, 5),
(14, 14, 'Guitar', 2500.00, 8),
(15, 15, 'Garden Hose', 180.00, 30),
(16, 16, 'Dog Food', 120.00, 100),
(17, 17, 'Suitcase', 700.00, 25),
(18, 18, 'Laptop', 8000.00, 20),
(19, 19, 'Microwave Oven', 2000.00, 10),
(20, 20, 'Desk Lamp', 150.00, 40);





INSERT INTO Orders (OrderID, Status, Total, CustomerID) VALUES
(1, 'Pending', 3000.00, 1),
(2, 'Completed', 400.00, 2),
(3, 'Shipped', 120.00, 3),
(4, 'Cancelled', 150.00, 4),
(5, 'Pending', 700.00, 5),
(6, 'Completed', 180.00, 6),
(7, 'Shipped', 90.00, 7),
(8, 'Pending', 100.00, 8),
(9, 'Completed', 40.00, 9),
(10, 'Shipped', 1200.00, 10),
(11, 'Pending', 150.00, 11),
(12, 'Completed', 5000.00, 12),
(13, 'Shipped', 3500.00, 13),
(14, 'Cancelled', 2500.00, 14),
(15, 'Pending', 180.00, 15),
(16, 'Completed', 120.00, 16),
(17, 'Shipped', 700.00, 17),
(18, 'Pending', 8000.00, 18),
(19, 'Completed', 2000.00, 19),
(20, 'Shipped', 150.00, 20);




INSERT INTO Sales (SaleID, OrderID, ProductID, OrderDate, Quantity) VALUES
(1, 1, 1, '2025-05-01', 1),
(2, 2, 2, '2025-05-01', 1),
(3, 3, 3, '2025-05-02', 1),
(4, 4, 4, '2025-05-02', 1),
(5, 5, 5, '2025-05-03', 1),
(6, 6, 6, '2025-05-03', 1),
(7, 7, 7, '2025-05-04', 1),
(8, 8, 8, '2025-05-04', 1),
(9, 9, 9, '2025-05-05', 1),
(10, 10, 10, '2025-05-05', 1),
(11, 11, 11, '2025-05-06', 1),
(12, 12, 12, '2025-05-06', 1),
(13, 13, 13, '2025-05-07', 1),
(14, 14, 14, '2025-05-07', 1),
(15, 15, 15, '2025-05-08', 1),
(16, 16, 16, '2025-05-08', 1),
(17, 17, 17, '2025-05-09', 1),
(18, 18, 18, '2025-05-09', 1),
(19, 19, 19, '2025-05-10', 1),
(20, 20, 20, '2025-05-10', 1);




INSERT INTO NumbersPhone (ID, CustomerID, Phone) VALUES
(1, 1, '01000000001'),
(2, 2, '01000000002'),
(3, 3, '01000000003'),
(4, 4, '01000000004'),
(5, 5, '01000000005'),
(6, 6, '01000000006'),
(7, 7, '01000000007'),
(8, 8, '01000000008'),
(9, 9, '01000000009'),
(10, 10, '01000000010'),
(11, 11, '01000000011'),
(12, 12, '01000000012'),
(13, 13, '01000000013'),
(14, 14, '01000000014'),
(15, 15, '01000000015'),
(16, 16, '01000000016'),
(17, 17, '01000000017'),
(18, 18, '01000000018'),
(19, 19, '01000000019'),
(20, 20, '01000000020');




