-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

UPDATE Customers 
Set FavoriteDish = (SELECT DishID 
  FROM Dishes
  WHERE Name = 'Quinoa Salmon Salad')
WHERE FirstName = 'Cleo'

SELECT *
FROM Customers
WHERE FirstName = 'Cleo'