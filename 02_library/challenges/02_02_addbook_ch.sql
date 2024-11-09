-- Add books to the library database.

-- Title: Dracula
-- Author: Bram Stoker
-- Published: 1897
-- ID Number: 4819277482

-- Title: Gulliver’s Travels into Several Remote Nations of the World
-- Author: Jonathan Swift
-- Published: 1729
-- ID Number: 4899254401

-- Let's check first if they already exist
SELECT * 
FROM Books
WHERE Title = 'Dracula' OR Author = 'Jonathan Swift'
-- Both of them already exist. 

-- Let's include them in the table
INSERT INTO Books (Title, Author, Published, Barcode)
  VALUES 
    ('Dracula', 'Bram Stoker', 1897, 4819277482),
    ('Gulliver''s Travels into Several Remote Nations of the World', 'Jonathan Swift', 1729, 4899254401)

/*
DELETE FROM Books
WHERE BookID IN (201, 202)
*/