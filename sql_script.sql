use project;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(40),
    Email VARCHAR(50),
    Phone INT,
    City VARCHAR(30),
    Country VARCHAR(45)
);

select * from Customers;



CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(50),
    Author VARCHAR(30),
    Genre VARCHAR(25),
    Published_Year INT,
    Price INT,
    Stock INT
);


select * from Books;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Book_ID INT,
    Order_Date DATE,
    Quantity INT,
    Total_Amount DECIMAL(10,2),

    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID),

    FOREIGN KEY (Book_ID)
        REFERENCES Books(Book_ID)
);

select * from Orders;

-- 1.Retrieve all books in "Fiction" genre --
     select * from Books where Genre = "Fiction";

-- 2.Find books published after year 1950 --
      select * from Books where Published_Year >1950;
      
-- 3.List of all customers from the Canada --
     select * from Customers where Country = "Canada";
    
-- 4.Show orders placed in Nov 2023 --
    select o.Order_ID, b.Book_ID, b.Published_Year from Orders o join Books b on O.Book_ID = b.Book_ID 
    where Year(o.Order_Date) =  2023 AND MONTH(o.Order_Date) = 11;
    

-- 5.Retrieve total stock of books available --
    select sum(Stock) as Total_stock from Books;
   
-- 6.Find details of the most expensive book --
     select * from Books order by price desc limit 1;
    
-- 7.Show all customers who ordered more than 1 quantity of book --
     select c.Customer_ID, c.Name, o.Order_ID, o.Quantity from Customers c join Orders o on o.Customer_ID = c.Customer_ID
     where o.Quantity > 1;
     
-- 8.Retrieve all orders where the total amount exceeds 200 --
     select Order_ID, Total_Amount from Orders where Total_Amount > 200;

-- 9.List all genres available in the Books table --
     select distinct(Genre) from Books;

-- 10.Find the book with the lowest stock --
     select Title, Stock from Books where Stock = (Select min(Stock) from Books);
     
-- 11.Calculate the total revenue generated from all orders --
    select sum(Total_Amount) as Revenue from Orders;
    
          -- Advanced --
          
 -- 1) Retrieve the total number of books sold for each genre --
      select b.Genre, sum(o.Quantity) as Total_number from Books b join Orders o 
      on b.Book_ID = o.Book_ID group by b.Genre;
      
-- 2) Find the average price of books in the "Fantasy" genre --
     select avg(price) as Average_price, Genre from Books
     where Genre = "Fantasy";
     
-- 3) List customers who have placed at least 2 orders --
    select c.Customer_ID, c.Name from Customers c join Orders o on c.Customer_ID = o.Customer_ID
    group by c.Customer_ID, c.Name
    having count(o.Order_ID) >= 2;
    
-- 4) Find the most frequently ordered book --
      select b.Book_ID, b.Title, count(o.Order_ID) as Order_Count
      from Books b join Orders o on b.Book_ID = o.Book_ID
      group by b.Book_ID, b.Title
      order by Order_Count desc 
      limit 1;
      
-- 5) Show the top 3 most expensive books of 'Fantasy' Genre --
      select Genre, Price from Books 
      where Genre = "Fantasy"
      order by Price Desc
      limit 3;
      
-- 6) Retrieve the total quantity of books sold by each author --
      select b.Author, sum(o.Quantity) as Total_Quantity from Books b join Orders o
      on b.Book_ID = o.Book_ID
      group by b.Author;
      
-- 7) List the cities where customers who spent over $30 are located --
     select distinct(c.City) from Customers c join Orders o 
     on c.Customer_ID = o.Customer_ID 
     group by c.Customer_ID, c.City
     having sum(o.Total_Amount) > 30;
     
-- 8) Find the customer who spent the most on orders --
     select c.Customer_ID, c.Name, sum(o.Total_Amount) as Total_Spent from Customers c join Orders o
     on c.Customer_ID = o.Order_ID 
     group by c.Customer_ID, c.Name
     order by Total_Spent desc
     limit 1;
     
-- 9) Calculate the stock remaining after fulfilling all orders --    
     select b.Book_ID, b.Title, b.Stock - coalesce(sum(o.Quantity), 0) as Stock_Left from Books b
      left join Orders o 
      on b.Book_ID = o.Book_ID
      group by b.Book_ID, b.Title, b.Stock;