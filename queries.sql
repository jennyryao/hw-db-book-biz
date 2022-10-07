USE `book_business`;

-- 7.1. Books per author. 
-- count of books
SELECT AuthorID,Count(BookID) as NumOfBooks
FROM Books
GROUP BY AuthorID;

-- list of books
SELECT Books.AuthorID,Books.BookID
FROM Books
JOIN Authors
ON Books.AuthorID = Authors.AuthorID
WHERE Books.AuthorID = Authors.AuthorID;


-- 7.2. Authors per book. 
-- count of authors
SELECT BookID,Count(AuthorID) as NumOfAuthors
FROM Books
GROUP BY BookID;

-- list of authors
SELECT Books.BookID,Books.AuthorID
FROM Books
JOIN Authors
ON Books.AuthorID = Authors.AuthorID
WHERE Books.AuthorID = Authors.AuthorID;


-- 7.3. Author royalties on a book. 
SELECT Royalties.AuthorID, Royalties.BookID, Royalties.Royalties
FROM Royalties
JOIN Books
ON Royalties.AuthorID = Books.AuthorID AND Royalties.BookID = Books.BookID
WHERE Royalties.AuthorID = Books.AuthorID AND Royalties.BookID = Books.BookID;


-- 7.4. Book royalties per author. 
SELECT Royalties.BookID, Royalties.AuthorID, Royalties.Royalties
FROM Royalties
JOIN Books
ON Royalties.AuthorID = Books.AuthorID AND Royalties.BookID = Books.BookID
WHERE Royalties.AuthorID = Books.AuthorID AND Royalties.BookID = Books.BookID;


-- 7.5. Books in a genre. 
-- count of books
SELECT Genre,Count(BookID) as NumOfBooks
FROM Books
GROUP BY Genre;

-- list of books
SELECT Genre,BookID
FROM Books
GROUP BY Genre;


-- 7.6. Books published by a publisher. 
-- count of books
SELECT PublisherID,Count(BookID) as NumOfBooks
FROM Books
GROUP BY PublisherID;

-- list of books
SELECT PublisherID,BookID
FROM Books
GROUP BY PublisherID;


-- 7.7. Editors per book. 
-- count of editors
SELECT BookID,Count(EditorID) as NumOfEditors
FROM Books
GROUP BY BookID;

-- list of editors
SELECT BookID,EditorID
FROM Books
GROUP BY BookID;


-- 7.8. Books per editor. 
-- count of books
SELECT EditorID,Count(BookID) as NumOfBooks
FROM Books
GROUP BY EditorID;

-- list of books
SELECT EditorID,BookID
FROM Books
GROUP BY EditorID;


-- 7.9. Books in an order. 
-- count of books
SELECT OrderID,Count(BookID) as NumOfBooks
FROM Orders
GROUP BY OrderID;

-- list of books
SELECT OrderID,BookID
FROM Orders
GROUP BY OrderID;


-- 7.10. Orders for a book. 
-- count of orders
SELECT BookID,Count(OrderID) as NumOfOrders
FROM Orders
GROUP BY BookID;

-- list of orders
SELECT BookID,OrderID
FROM Orders
GROUP BY BookID;


-- 7.11. Customer orders. 
SELECT OrderID, CustomerID
FROM Orders
GROUP BY OrderID;


-- 7.12. Orders per customer. 
-- count of orders
SELECT CustomerID,Count(OrderID) as NumOfOrders
FROM Orders
GROUP BY CustomerID;

-- list of orders
SELECT CustomerID,OrderID
FROM Orders
GROUP BY CustomerID;
