CREATE TABLE IF NOT EXISTS Customers (
    CustomerID SERIAL PRIMARY KEY, 
    FirstName varchar(255),
    LastName varchar(255),
    Email  varchar(255)
);

CREATE TABLE IF NOT EXISTS  Orders (
    OrderID  SERIAL PRIMARY KEY, 
    CustomerID  int REFERENCES Customers (CustomerID),
    OrderDate  timestamp without time zone,
    TotalAmount   decimal
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID SERIAL PRIMARY KEY, 
    Product_name varchar(255)
);

CREATE TABLE IF NOT EXISTS  OrderDetails (
    OrderDetailID  SERIAL PRIMARY KEY, 
    OrderID  int REFERENCES Orders (OrderID),
    ProductID  int REFERENCES Products (ProductID),
    Quantity  int,
    UnitPrice  decimal
);

