USE ada;

CREATE TABLE Users (
UserID int UNIQUE PRIMARY KEY,
Fullname varchar(100) NOT NULL,
Gender varchar(30) NOT NULL,
Age int NOT NULL,
Occupation varchar(150),
Location varchar(150)
);

CREATE TABLE Products (
ProductID int UNIQUE PRIMARY KEY,
Productname varchar(100) NOT NULL,
Producttype varchar(100) NOT NULL,
ProductUse varchar(200) NOT NULL,
Shelllife varchar(150)
);

CREATE TABLE Deliveries (
ProductID int PRIMARY KEY,
Route varchar(100) NOT NULL,
Timedelivered datetime NOT NULL,
Location varchar(200) NOT NULL,
Userconfirmation varchar(150)
);

CREATE TABLE Deliveries (
OrderID int PRIMARY KEY,
Route varchar(100) NOT NULL,
Timedelivered datetime NOT NULL,
Location varchar(200) NOT NULL,
Userconfirmation varchar(150)
);

DROP TABLE Deliveries;
DESC Deliveries;

DROP TABLE Deliveries;

CREATE TABLE Deliveries (
OrderID int PRIMARY KEY,
UserID int NOT NULL,
ProductID int NOT NULL,
Route varchar(100) NOT NULL,
Timedelivered datetime NOT NULL,
Location varchar(200) NOT NULL,
Userconfirmation varchar(150) v
);

ALTER TABLE Deliveries
ADD FOREIGN KEY (UserID)
REFERENCES Users(UserID);
ALTER TABLE Deliveries
ADD FOREIGN KEY (ProductID)
REFERENCES Products(ProductID);
DESC Deliveries;
