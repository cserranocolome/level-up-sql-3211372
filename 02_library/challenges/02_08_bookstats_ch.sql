-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.


-- Report 1:
SELECT 
  Published,
  COUNT(DISTINCT(Title)) AS NumberBooksPublished
FROM Books
GROUP BY Published
ORDER BY NumberBooksPublished DESC


-- Report 2
SELECT 
  Title,
  Count(Title) AS NumberLoans
FROM (
  SELECT 
    Title
  FROM Loans AS l
  JOIN Books AS b
  ON l.BookID = b.BookID)
GROUP BY Title
ORDER BY NumberLoans DESC
LIMIT 5

