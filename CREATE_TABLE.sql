CREATE DATABASE shopping_center;

USE shopping_center;

-- Create the Name table
CREATE TABLE Name (
Name_ID INT NOT NULL PRIMARY KEY,
First_Name VARCHAR(50) NOT NULL,
Middle_Name VARCHAR(50),
Last_Name VARCHAR(50) NOT NULL
);

-- Create the Person table
CREATE TABLE Person (
Person_ID INT NOT NULL PRIMARY KEY,
Name_ID INT NOT NULL,
Address VARCHAR(100),
Gender CHAR(1) NOT NULL,
Date_of_Birth DATE NOT NULL,
CONSTRAINT Fk_Name_ID FOREIGN KEY (Name_ID) REFERENCES Name(Name_ID)
);

-- Create the Membership table
CREATE TABLE Membership (
Membership_ID INT NOT NULL PRIMARY KEY,
Customer_ID INT NOT NULL,
Card_Number VARCHAR(50) NOT NULL,
Start_Date DATE NOT NULL,
CONSTRAINT FK_Membership_Customer FOREIGN KEY (Customer_ID) REFERENCES Person(Person_ID)
);

-- Create the Employee table
CREATE TABLE Employee (
Employee_ID INT NOT NULL PRIMARY KEY,
Person_ID INT NOT NULL,
Salary DECIMAL(10,2) NOT NULL,
Start_Date DATE NOT NULL,
Designation VARCHAR(50) NOT NULL,
CONSTRAINT FK_Employee_Person FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID)
);

-- Create the Floor_Management_Log table
CREATE TABLE Floor_Management_Log (
Floor_Management_Log_ID INT NOT NULL PRIMARY KEY,
Employee_ID INT NOT NULL,
Floor_Number INT NOT NULL,
Date DATE NOT NULL,
CONSTRAINT FK_Floor_Management_Log_Employee FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Create the Promotion table
CREATE TABLE Promotion (
Promotion_ID INT NOT NULL PRIMARY KEY,
Membership_ID INT NOT NULL,
Description VARCHAR(100) NOT NULL,
CONSTRAINT FK_Promotion_Membership FOREIGN KEY (Membership_ID) REFERENCES Membership(Membership_ID)
);

-- Create the Guest table
CREATE TABLE Guest (
Guest_ID INT NOT NULL PRIMARY KEY,
Guest_Name VARCHAR(50) NOT NULL,
Guest_Address VARCHAR(100) NOT NULL,
Guest_Phone_Number VARCHAR(20) NOT NULL,
Member_ID INT NOT NULL,
CONSTRAINT FK_Guest_Membership FOREIGN KEY (Member_ID) REFERENCES Membership(Membership_ID)
);



--------------------------
-- Create the Store table
CREATE TABLE Store (
Store_ID INT NOT NULL PRIMARY KEY,
Store_Name VARCHAR(50) NOT NULL,
Store_Address VARCHAR(100) NOT NULL,
Floor_Number INT NOT NULL
);

-------
-- Create the Schedule table
CREATE TABLE Schedule (
Schedule_ID INT NOT NULL PRIMARY KEY,
Store_ID INT NOT NULL,
Day_of_Week VARCHAR(20) NOT NULL,
Open_Time TIME NOT NULL,
Close_Time TIME NOT NULL,
CONSTRAINT FK_Schedule_Store FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);
--------

-- Create the Customer table
CREATE TABLE Customer (
Customer_ID INT NOT NULL PRIMARY KEY,
Phone_Number VARCHAR(20) NOT NULL,
MemID INT,
CONSTRAINT FK_Customer_Person FOREIGN KEY (Customer_ID) REFERENCES Person(Person_ID),
CONSTRAINT FK_Customer_Mem FOREIGN KEY (MemID) REFERENCES Membership(Membership_ID)
);

-- Create the Product table
CREATE TABLE Product (
Product_ID INT NOT NULL PRIMARY KEY,
Product_Name VARCHAR(50) NOT NULL,
Description VARCHAR(100) NOT NULL
);

-- Create the Product_Store table
CREATE TABLE Product_Store (
Product_Store_ID INT NOT NULL PRIMARY KEY,
Product_ID INT NOT NULL,
Store_ID INT NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
Quantity_In_Stock INT NOT NULL,
CONSTRAINT fk_Product_Store_Product
FOREIGN KEY (Product_ID)
REFERENCES Product (Product_ID),
CONSTRAINT fk_Product_Store_Store
FOREIGN KEY (Store_ID)
REFERENCES Store (Store_ID),
INDEX idx_Product_Store_Price (Price)
);


-- Create the Order table
CREATE TABLE `Order` (
Order_ID INT NOT NULL PRIMARY KEY,
Store_ID INT NOT NULL,
Customer_ID INT NOT NULL,
Order_Created_Time TIMESTAMP NOT NULL,
Order_Subtotal DECIMAL(10, 2) NOT NULL,
CONSTRAINT fk_Order_Store
FOREIGN KEY (Store_ID)
REFERENCES Store (Store_ID),
CONSTRAINT fk_Order_Customer
FOREIGN KEY (Customer_ID)
REFERENCES Customer (Customer_ID)
);

-- Create the Order_Detail table
CREATE TABLE Order_Detail (
Order_Detail_ID INT NOT NULL PRIMARY KEY,
Order_ID INT NOT NULL,
Product_Store_ID INT NOT NULL,
Quantity INT NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
Employee_ID INT,
CONSTRAINT fk_Order_Detail_Order
FOREIGN KEY (Order_ID)
REFERENCES `Order` (Order_ID),

CONSTRAINT fk_Order_Detail_Product_Store
FOREIGN KEY (Product_Store_ID)
REFERENCES Product_Store (Product_Store_ID),

CONSTRAINT fk_Order_Deatil_Product_Store_price
FOREIGN KEY (Price)
REFERENCES Product_Store (Price),

CONSTRAINT fk_Order_Detail_Employee
FOREIGN KEY (Employee_ID)
REFERENCES Employee (Employee_ID),

CONSTRAINT fk_Order_Deatil_Product_store
FOREIGN KEY (Price)
REFERENCES Product_Store (Price)
);

-- Create the Payment table
CREATE TABLE Payment (
Payment_ID INT NOT NULL PRIMARY KEY,
Order_ID INT NOT NULL,
Payment_Time TIMESTAMP NOT NULL,
Payment_Method VARCHAR(50) NOT NULL,
Amount DECIMAL(10, 2) NOT NULL,
CONSTRAINT fk_Payment_Order
FOREIGN KEY (Order_ID)
REFERENCES `Order` (Order_ID)
);