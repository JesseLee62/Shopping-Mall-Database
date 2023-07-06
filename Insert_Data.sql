INSERT INTO Name (Name_ID, First_Name, Middle_Name, Last_Name) 
VALUES 
(1, 'John', NULL, 'Doe'), 
(2, 'Jane', NULL, 'Smith'), 
(3, 'Michael', 'A.', 'Johnson'), 
(4, 'Emily', NULL, 'Brown'), 
(5, 'David', 'C.', 'Williams'), 
(6, 'Sarah', 'L.', 'Anderson'), 
(7, 'Matthew', 'J.', 'Davis'), 
(8, 'Olivia', NULL, 'Wilson'), 
(9, 'Jacob', 'R.', 'Taylor'), 
(10, 'Sophia', 'M.', 'Miller'); 
 
INSERT INTO Person (Person_ID, Name_ID, Address, Gender, Date_of_Birth) 
VALUES 
(1, 1, '123 Main St', 'M', '1990-05-10'), 
(2, 2, '456 Elm St', 'F', '1992-08-15'), 
(3, 3, '789 Oak St', 'M', '1985-02-25'), 
(4, 4, '321 Pine St', 'F', '1991-11-30'), 
(5, 5, '654 Maple St', 'M', '1988-07-22'), 
(6, 6, '987 Cedar St', 'F', '1993-04-12'), 
(7, 7, '654 Birch St', 'M', '1987-09-05'), 
(8, 8, '321 Walnut St', 'F', '1994-01-17'), 
(9, 9, '789 Ash St', 'M', '1989-06-28'), 
(10, 10, '123 Hickory St', 'F', '1995-03-03'); 
 
INSERT INTO Membership (Membership_ID, Customer_ID, Card_Number, Start_Date) 
VALUES 
(1, 1, '1234567890123456', '2022-01-01'), 
(2, 2, '2345678901234567', '2021-06-15'), 
(3, 3, '3456789012345678', '2023-03-10'), 
(4, 4, '4567890123456789', '2022-11-20'), 
(5, 5, '5678901234567890', '2023-04-05'), 
(6, 6, '6789012345678901', '2021-09-30'), 
(7, 7, '7890123456789012', '2023-02-14'), 
(8, 8, '8901234567890123', '2022-07-08'), 
(9, 9, '9012345678901234', '2023-01-02'), 
(10, 10, '0123456789012345', '2022-05-25'); 
 
-- Insert into Employee table 
INSERT INTO Employee (Employee_ID, Person_ID, Salary, Start_Date, Designation) 
VALUES 
(1, 1, 50000.00, '2022-01-01', 'Manager'), 
(2, 2, 45000.00, '2022-02-15', 'Cashier'), 
(3, 3, 55000.00, '2021-12-10', 'Supervisor'), 
(4, 4, 40000.00, '2022-03-20', 'Sales Associate'), 
(5, 5, 48000.00, '2021-11-05', 'Floor Manager'), 
(6, 6, 42000.00, '2022-04-30', 'Cashier'), 
(7, 7, 52000.00, '2022-08-14', 'Supervisor'), 
(8, 8, 47000.00, '2021-10-08', 'Sales Associate'), 
(9, 9, 51000.00, '2022-07-02', 'Floor Manager'), 
(10, 10, 43000.00, '2022-05-25', 'Cashier'); 
 
-- Insert into Floor_Management_Log table 
INSERT INTO Floor_Management_Log (Floor_Management_Log_ID, Employee_ID, Floor_Number, Date) 
VALUES 
(1, 1, 1, '2022-01-01'), 
(2, 2, 2, '2022-02-15'), 
(3, 3, 1, '2022-03-10'), 
(4, 4, 2, '2022-03-20'), 
(5, 5, 1, '2022-04-05'), 
(6, 6, 2, '2022-05-01'), 
(7, 7, 1, '2022-05-14'), 
(8, 8, 2, '2022-05-30'), 
(9, 9, 1, '2022-06-15'), 
(10, 10, 2, '2022-07-01'); 
 
-- Insert into Promotion table 
INSERT INTO Promotion (Promotion_ID, Membership_ID, Description) 
VALUES 
(1, 1, 'Get 20% off on selected items.'), 
(2, 2, 'Buy one, get one free on all clothing.'), 
(3, 3, 'Free gift with purchase of $50 or more.'), 
(4, 4, 'Special discount for members only.'), 
(5, 5, 'Limited time offer: 50% off on electronics.'), 
(6, 6, 'Exclusive deal for loyalty members.'), 
(7, 7, 'Get a free meal with any purchase.'), 
(8, 8, 'Extra 10% off during weekend sale.'), 
(9, 9, 'Buy two, get one half off on cosmetics.'), 
(10, 10, 'Special promotion for new customers.'); 
 
-- Insert into Guest table 
INSERT INTO Guest (Guest_ID, Guest_Name, Guest_Address, Guest_Phone_Number, Member_ID) 
VALUES 
(1, 'John Smith', '123 Main St', '123-456-7890', 1), 
(2, 'Jane Doe', '456 Elm St', '987-654-3210', 2), 
(3, 'Michael Johnson', '789 Oak St', '456-123-7890', 3), 
(4, 'Emily Williams', '567 Pine St', '789-123-4560', 4), 
(5, 'Daniel Brown', '890 Maple St', '321-654-9870', 5), 
(6, 'Sophia Taylor', '234 Oakwood Ave', '567-890-1234', 6), 
(7, 'William Davis', '901 Cedar St', '654-987-3210', 7), 
(8, 'Olivia Martinez', '345 Birch St', '890-123-4560', 8), 
(9, 'James Wilson', '678 Willow Ave', '987-321-6540', 9), 
(10, 'Emma Anderson', '912 Spruce St', '123-456-7890', 10); 
 
-- Insert into Store table 
INSERT INTO Store (Store_ID, Store_Name, Store_Address, Floor_Number) 
VALUES 
(1, 'Store A', '123 Main St', 1), 
(2, 'Store B', '456 Elm St', 2), 
(3, 'Store C', '789 Oak St', 5), 
(4, 'Store D', '567 Pine St', 3), 
(5, 'Store E', '890 Maple St', 7), 
(6, 'Store F', '234 Oakwood Ave', 8), 
(7, 'Store G', '901 Cedar St', 6), 
(8, 'Store H', '345 Birch St', 5), 
(9, 'Store I', '678 Willow Ave', 5), 
(10, 'Store J', '912 Spruce St', 4); 
 
-- Insert into Schedule table 
INSERT INTO Schedule (Schedule_ID, Store_ID, Day_of_Week, Open_Time, Close_Time) 
VALUES 
(1, 1, 'Monday', '08:00:00', '17:00:00'), 
(2, 2, 'Tuesday', '09:00:00', '18:00:00'), 
(3, 3, 'Wednesday', '10:00:00', '19:00:00'), 
(4, 4, 'Thursday', '11:00:00', '20:00:00'), 
(5, 5, 'Friday', '12:00:00', '21:00:00'), 
(6, 6, 'Saturday', '13:00:00', '22:00:00'), 
(7, 7, 'Sunday', '14:00:00', '23:00:00'), 
(8, 8, 'Monday', '08:30:00', '17:30:00'), 
(9, 9, 'Tuesday', '09:30:00', '18:30:00'), 
(10, 10, 'Wednesday', '10:30:00', '19:30:00'); 
 
-- Insert into Customer table 
INSERT INTO Customer (Customer_ID, Phone_Number, MemID) 
VALUES 
(1, '123-456-7890', 1), 
(2, '987-654-3210', 2), 
(3, '456-123-7890', 3), 
(4, '789-123-4560', 4), 
(5, '321-654-9870', NULL), 
(6, '567-890-1234', NULL), 
(7, '654-987-3210', NULL), 
(8, '890-123-4560', NULL), 
(9, '987-321-6540', NULL), 
(10, '123-456-7890', NULL); 
 
-- Insert into Product table 
INSERT INTO Product (Product_ID, Product_Name, Description) 
VALUES 
(1, 'Product A', 'Description for Product A'), 
(2, 'Product B', 'Description for Product B'), 
(3, 'Product C', 'Description for Product C'), 
(4, 'Product D', 'Description for Product D'), 
(5, 'Product E', 'Description for Product E'), 
(6, 'Product F', 'Description for Product F'), 
(7, 'Product G', 'Description for Product G'), 
(8, 'Product H', 'Description for Product H'), 
(9, 'Product I', 'Description for Product I'), 
(10, 'Product J', 'Description for Product J'); 
 
-- Insert into Product_Store table 
INSERT INTO Product_Store (Product_Store_ID, Product_ID, Store_ID, Price, Quantity_In_Stock) 
VALUES 
(1, 1, 1, 5, 1000), 
(2, 2, 2, 5, 1000), 
(3, 3, 3, 5, 1000), 
(4, 4, 4, 10, 1000), 
(5, 5, 5, 10, 1000), 
(6, 6, 6, 10, 1000), 
(7, 7, 7, 15, 1000), 
(8, 8, 8, 15, 1000), 
(9, 9, 9, 15, 1000), 
(10, 10, 10, 20, 1000); 
 
-- Insert into Order table 
INSERT INTO `Order` (Order_ID, Store_ID, Customer_ID, Order_Created_Time, Order_Subtotal) 
VALUES 
(1, 1, 1, CURRENT_TIMESTAMP, 10.00), 
(2, 2, 2, CURRENT_TIMESTAMP, 20.00), 
(3, 3, 3, CURRENT_TIMESTAMP, 30.00), 
(4, 4, 4, CURRENT_TIMESTAMP, 40.00), 
(5, 5, 5, CURRENT_TIMESTAMP, 50.00), 
(11, 1, 5, CURRENT_TIMESTAMP, 20.00), 
(12, 1, 5, CURRENT_TIMESTAMP, 40.00), 
(13, 1, 5, CURRENT_TIMESTAMP, 90.00), 
(14, 1, 5, CURRENT_TIMESTAMP, 120.00), 
(15, 1, 5, CURRENT_TIMESTAMP, 150.00), 
(16, 1, 5, CURRENT_TIMESTAMP, 30.00), 
(17, 1, 5, CURRENT_TIMESTAMP, 60.00), 
(18, 1, 5, CURRENT_TIMESTAMP, 90.00), 
(19, 1, 5, CURRENT_TIMESTAMP, 160.00), 
(20, 1, 5, CURRENT_TIMESTAMP, 200.00), 
(21, 1, 5, CURRENT_TIMESTAMP, 10.00), 
(35, 1, 5, CURRENT_TIMESTAMP, 150.00), 
(6, 6, 6, CURRENT_TIMESTAMP, 10.00), 
(22, 6, 6, CURRENT_TIMESTAMP, 20.00), 
(23, 6, 6, CURRENT_TIMESTAMP, 30.00), 
(24, 6, 6, CURRENT_TIMESTAMP, 40.00), 
(25, 6, 6, CURRENT_TIMESTAMP, 50.00), 
(26, 6, 6, CURRENT_TIMESTAMP, 10.00), 
(27, 6, 6, CURRENT_TIMESTAMP, 40.00), 
(28, 6, 6, CURRENT_TIMESTAMP, 60.00), 
(29, 6, 6, CURRENT_TIMESTAMP, 80.00), 
(30, 6, 6, CURRENT_TIMESTAMP, 100.00), 
(31, 6, 6, CURRENT_TIMESTAMP, 20.00), 
(32, 6, 6, CURRENT_TIMESTAMP, 40.00), 
(33, 6, 6, CURRENT_TIMESTAMP, 90.00), 
(34, 6, 6, CURRENT_TIMESTAMP, 120.00), 
(7, 7, 7, CURRENT_TIMESTAMP, 40.00), 
(8, 8, 8, CURRENT_TIMESTAMP, 60.00), 
(9, 9, 9, CURRENT_TIMESTAMP, 80.00), 
(10, 10, 10, CURRENT_TIMESTAMP, 100.00); 
 
-- Insert into Order_Detail table 
INSERT INTO Order_Detail (Order_Detail_ID, Order_ID, Product_Store_ID, Quantity, Price, Employee_ID) 
VALUES 
(1, 1, 1, 2, 5, 1), 
(2, 2, 1, 4, 5, 2), 
(3, 3, 2, 6, 5, 3), 
(4, 4, 2, 8, 5, 4), 
(5, 5, 3, 10, 5, 5), 
(6, 6, 3, 2, 5, 6), 
(7, 7, 4, 4, 10, 7), 
(8, 8, 4, 6, 10, 8), 
(9, 9, 5, 8, 10, 9), 
(10, 10, 5, 10, 10, 10), 
(11, 11, 6, 2, 10, 10), 
(12, 12, 6, 4, 10, 10), 
(13, 13, 7, 6, 15, 10), 
(14, 14, 7, 8, 15, 10), 
(15, 15, 8, 10, 15, 10), 
(16, 16, 8, 2, 15, 10), 
(17, 17, 9, 4, 15, 10), 
(18, 18, 9, 6, 15, 10), 
(19, 19, 10, 8, 20, 10), 
(20, 20, 10, 10, 20, 10), 
(21, 21, 1, 2, 5, 10), 
(22, 22, 1, 4, 5, 10), 
(23, 23, 2, 6, 5, 10), 
(24, 24, 2, 8, 5, 10), 
(25, 25, 3, 10, 5, 10), 
(26, 26, 3, 2, 5, 10), 
(27, 27, 4, 4, 10, 10), 
(28, 28, 4, 6, 10, 10), 
(29, 29, 5, 8, 10, 10), 
(30, 30, 5, 10, 10, 10), 
(31, 31, 6, 2, 10, 10), 
(32, 32, 6, 4, 10, 10), 
(33, 33, 7, 6, 15, 10), 
(34, 34, 7, 8, 15, 10), 
(35, 35, 8, 10, 15, 10); 
 
 
 
-- Insert into Payment table 
INSERT INTO Payment (Payment_ID, Order_ID, Payment_Time, Payment_Method, Amount) 
VALUES 
(1, 1, CURRENT_TIMESTAMP, 'Credit Card', 21.98), 
(2, 2, CURRENT_TIMESTAMP, 'Cash', 47.97), 
(3, 3, CURRENT_TIMESTAMP, 'PayPal', 12.99), 
(4, 4, CURRENT_TIMESTAMP, 'Credit Card', 47.96), 
(5, 5, CURRENT_TIMESTAMP, 'Cash', 35.96), 
(6, 6, CURRENT_TIMESTAMP, 'PayPal', 15.98), 
(7, 7, CURRENT_TIMESTAMP, 'Credit Card', 35.97), 
(8, 8, CURRENT_TIMESTAMP, 'Cash', 29.98), 
(9, 9, CURRENT_TIMESTAMP, 'PayPal', 13.99), 
(10, 10, CURRENT_TIMESTAMP, 'Credit Card', 67.96);