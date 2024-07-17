CREATE DATABASE ChargebacksDB;
USE ChargebacksDB;
GO

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    MerchantID INT,
    Amount DECIMAL(10, 2),
    TransactionDate DATETIME,
    Status VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Chargebacks (
    ChargebackID INT PRIMARY KEY,
    TransactionID INT,
    Reason VARCHAR(255),
    ChargebackDate DATETIME,
    FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Merchants (
    MerchantID INT PRIMARY KEY,
    MerchantName VARCHAR(100),
    Country VARCHAR(50)
);