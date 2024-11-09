-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT *
FROM Books
WHERE Title = 'Dracula'

-- Check how many Dracula books are currently loaned
SELECT COUNT(BookID)
FROM Loans
WHERE BookID = (
  SELECT BookID
  FROM Books
  WHERE Title = 'Dracula')
  AND ReturnedDate = NULL

-- All the copies have been return

-- Total number of copies available
SELECT 
  (SELECT COUNT(BookID)
  FROM Books
  WHERE Title = 'Dracula') -
  (SELECT COUNT(BookID)
  FROM Loans
  WHERE BookID = (
    SELECT BookID
    FROM Books
    WHERE Title = 'Dracula')
    AND ReturnedDate = NULL) AS AvailableCopies

-- Number = 3