SHOW TABLES;
DESC Customer;
DESC Product;
CREATE TABLE Review (
    Review_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Rating INT NOT NULL,
    Review_Text VARCHAR(255),
    Review_Date DATE NOT NULL,

    FOREIGN KEY (Customer_ID)
    REFERENCES Customer(Customer_ID),

    FOREIGN KEY (Product_ID)
    REFERENCES Product(Product_ID),

    CHECK (Rating BETWEEN 1 AND 5)
);
SHOW DATABASES;
SHOW TABLES FROM eweb;
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
AND TABLE_SCHEMA NOT IN
('information_schema', 'mysql', 'performance_schema', 'sys');
USE eweb;
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL
);
INSERT INTO Customer VALUES
(1, 'John'),
(2, 'Priya'),
(3, 'Rahul');
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL
);
INSERT INTO Product VALUES
(101, 'Laptop'),
(102, 'Mobile'),
(103, 'Headphones');
SELECT * FROM Customer;

SELECT * FROM Product;
CREATE TABLE Review (
    Review_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Rating INT NOT NULL,
    Review_Text VARCHAR(255),
    Review_Date DATE NOT NULL,

    FOREIGN KEY (Customer_ID)
    REFERENCES Customer(Customer_ID),

    FOREIGN KEY (Product_ID)
    REFERENCES Product(Product_ID),

    CHECK (Rating BETWEEN 1 AND 5)
);
INSERT INTO Review VALUES
('R101', 1, 101, 5, 'Excellent performance', '2026-11-10'),
('R102', 2, 102, 4, 'Good battery life', '2026-11-11'),
('R103', 3, 103, 3, 'Average quality', '2026-11-12');
SELECT * FROM Review;