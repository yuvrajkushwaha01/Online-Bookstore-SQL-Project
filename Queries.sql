DROP TABLE IF EXISTS Books;
CREATE TABLE Books 
( Book_ID INT PRIMARY KEY, Title VARCHAR(100), Author VARCHAR(100),
Genre VARCHAR(50),Published_Year INT, Price NUMERIC(10,2),Stock INT);

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers
(Customer_ID INT PRIMARY KEY,Name VARCHAR(100),Email VARCHAR(100),
Phone VARCHAR(20),City VARCHAR(50),Country VARCHAR(100)); 

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders 
(Order_ID INT PRIMARY KEY,Customer_ID INT REFERENCES Customers(Customer_ID),
Book_ID INT REFERENCES Books(Book_ID),Order_Date DATE,Quantity INT,
Total_Amount NUMERIC(10,2));

SELECT *FROM Books;
SELECT *FROM Customers;
SELECT *FROM Orders;

--Import data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'C:/books_200.csv'
DELIMITER ',' CSV HEADER;

--Import data into Customers Table
COPY Customers(Customer_ID,Name,Email,Phone ,City ,Country)
FROM 'C:/Customers_200.csv'
DELIMITER ',' CSV HEADER;

--Import ḍata into Orders
COPY Orders (order_id, customer_id, book_id, order_date, quantity,total_amount)
FROM 'C:/Orders_200.csv'
DELIMITER ',' CSV HEADER;


--1.Retrieve all books in the "Classic" genre:
SELECT *FROM Books
WHERE genre = 'Classic';

--2.Find books published after the year 2000:
SELECT *FROM Books 
WHERE published_year>2000;

--3.List all the customers from INDIA:
SELECT *FROM Customers
WHERE country = 'India';

--4.Show orders placed in December 2024:
SELECT *FROM Orders
WHERE order_date BETWEEN '2024-12-01' AND '2024-12-31';

--5.Retrieve the total stock of books available:
SELECT SUM(Stock) AS Total_Stock
FROM Books;
--6.Find the details of the most expensive books:
SELECT *FROM Books ORDER BY PRICE DESC 
Limit 1;

--7.Show all customers who ordered more than 1 quantity of books:
SELECT *FROM Orders 
WHERE quantity>1;

--8..Retrieve all the orders where the total amount exceed ₹2000:
SELECT *FROM Orders
WHERE total_amount>2000;

--9.List all genres available in the books table:
SELECT DISTINCT genre FROM Books;

--10.Find the book with the lowest stock:
SELECT *FROM Books ORDER BY Stock ASC
Limit 1;

--11.Calculate the total amount generated from all orders:
SELECT SUM(Total_amount) AS Total_amount
FROM Orders;

--12.Retrieve the total number of books sold for each genre:
SELECT b.Genre, SUM(o.Quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b ON o.Book_ID = b.Book_ID
GROUP BY b.Genre;

--13.Find the avarage price of books in the "Fantasy" genre:
SELECT AVG(Price) AS Average_price
FROM Books 
WHERE genre = 'Fantasy';

--14.List customers who have placed at least 2 orders:
SELECT Customer_id,COUNT(order_id) AS order_count
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) >=2;

--15.Find the most frequently ordered book:
SELECT o.Book_ID, b.Title, 
COUNT(o.Order_ID) AS Order_Count
FROM Orders o
JOIN Books b ON o.Book_ID = b.Book_ID
GROUP BY o.Book_ID, b.Title
ORDER BY Order_Count DESC
LIMIT 1;


--16.Show the top 3 most expensive books of "Fantasy" genre:
SELECT *FROM Books
WHERE genre = 'Fantasy'
ORDER BY Price DESC 
LIMIT 5;

--17.Retrive the total quantity of books sold by each author:
SELECT b.author, SUM(o.quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY b.author;

--18.List the cities where customers who spent over ₹500:
SELECT DISTINCT c.city, total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.total_amount > 500;

--19.Find the customer who spent the most on orders:
SELECT  c.Customer_ID, c.Name,
SUM(o.Total_Amount) AS Total_Spent
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_ID, c.Name
ORDER BY Total_Spent DESC
LIMIT 1;

--20.Calculate the stock remaining after fulfilling all orders:
SELECT  b.Book_ID, b.Title,
b.Stock - COALESCE(SUM(o.Quantity), 0) AS Remaining_Stock
FROM Books b
LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID, b.Title, b.Stock
ORDER BY Remaining_Stock ASC;

