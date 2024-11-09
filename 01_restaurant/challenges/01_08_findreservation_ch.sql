-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT 
  c.LastName, 
  r.PartySize,
  date(r.Date)
FROM
  Reservations AS r
JOIN 
  Customers AS c
ON 
  r.CustomerID = c.CustomerID
WHERE
  c.LastName LIKE 'St%' AND r.PartySize = 4
ORDER BY
  r.date