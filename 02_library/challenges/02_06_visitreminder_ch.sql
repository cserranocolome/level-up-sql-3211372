-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT 
  p.FirstName,
  p.Email,
  COUNT(l.LoanID) AS NumberLoans
FROM Loans as l
JOIN Patrons as p
ON l.PatronID = p.PatronID
GROUP BY l.PatronID
HAVING NumberLoans<15
ORDER BY NumberLoans ASC