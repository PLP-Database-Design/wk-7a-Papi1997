
-- QUESTION 1
-- Creating the table in 1NF

CREATE TABLE ProductDetail(
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);


--  Insert Data into the Table (in 1NF format)

INSERT INTO ProductDetail (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


-- QUESTION 2

-- Create the Customer Table (for CustomerName and OrderID)to show 2NF

CREATE TABLE Customer (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);



-- Create the OrderDetails Table (for Product and Quantity)

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),  -- Composite Primary Key
    FOREIGN KEY (OrderID) REFERENCES Customer(OrderID)
);


-- Insert Customer Information into the Customer Table

INSERT INTO Customer (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


-- Insert Order and Product Information into the OrderDetails Table

INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

