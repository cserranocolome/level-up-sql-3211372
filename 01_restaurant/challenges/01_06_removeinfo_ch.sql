-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.


DELETE FROM 
  Reservations
WHERE CustomerID =
  (SELECT 
    CustomerID
  FROM
    Customers
  WHERE FirstName = 'Norby')
  AND Date = 
  (SELECT 
    max(Date)
  FROM
    Reservations);



SELECT 
  max(Date)
FROM
  Reservations;
