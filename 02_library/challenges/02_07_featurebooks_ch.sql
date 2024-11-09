-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT 
  DISTINCT
  b.Title,
  b.Author,
  b.Published,
  b.Barcode
FROM Books AS b
LEFT JOIN Loans AS l
ON b.BookID = l.BookID
WHERE b.Published >= 1890 AND b.Published <=1899 AND l.ReturnedDate IS NOT NULL
ORDER BY b.Title