-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Include new order details
INSERT INTO Orders
  (CustomerID, OrderDate) 
  VALUES (
  (SELECT CustomerID
  FROM Customers
  WHERE FirstName = 'Loretta'), '2022-09-20 14:00:00');

SELECT *
FROM Orders
ORDER BY OrderDate DESC;

-- Get dishes ID for all dishes in the order
SELECT 
  DishID,
  Name
FROM Dishes
WHERE Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')

-- Include dishes in the order
INSERT INTO OrdersDishes
  (OrderID, DishID) 
  VALUES (1001, 4);

INSERT INTO OrdersDishes
  (OrderID, DishID) 
  VALUES (1001, 7);

INSERT INTO OrdersDishes
  (OrderID, DishID) 
  VALUES (1001, 20);

SELECT *
FROM OrdersDishes
WHERE OrderID = 1001;

-- Compute total price of the order
SELECT 
  SUM(Price)
FROM Dishes
WHERE Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')

-- The total price is 21.0