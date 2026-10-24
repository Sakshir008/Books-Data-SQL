Bookstore Database Analysis Using SQL

Introduction

This project focuses on analyzing bookstore data using SQL. It uses three datasets — Books.csv, Customers.csv, and Orders.csv — to explore book inventory, customer details, and order transactions. The sql_script.sql file defines the database tables and contains SQL queries used to retrieve and analyze the data.
Objectives
- Create relational tables for books, customers, and orders.
- Retrieve and filter book and customer records based on selected conditions.
- Analyze book prices, genres, publication years, and stock levels.
- Examine order quantities, order dates, and order amounts.
- Calculate summary metrics such as total stock and total revenue.
- Use joins and aggregate functions to explore relationships between customers, books, and orders.
- 
Analysis Performed

Basic SQL Analysis

- Retrieve books in the Fiction genre.
- Find books published after 1950.
- List customers from Canada.
- Retrieve orders placed in November 2023.
- Calculate the total stock available across books.
- Identify the most expensive book.
- Find orders where the quantity is greater than one.
- Retrieve orders with a total amount greater than 200.
- List the distinct genres available in the Books table.
- Identify books with the lowest stock.
- Calculate total revenue from all orders.
- 
Advanced SQL Analysis
- Calculate the total quantity sold for each genre.
- Find the average price of books in the Fantasy genre.
- List customers who have placed at least two orders.
- Identify the most frequently ordered book.
- Retrieve the top three most expensive books in the Fantasy genre.
- Calculate the total quantity sold by each author.
- Identify cities associated with customers whose total order spending exceeds 30.
- Find the customer with the highest total order spending.
- Calculate estimated remaining stock by subtracting ordered quantities from the recorded stock.
- 
Key Insights

The SQL queries are designed to help investigate the following areas:
- Inventory: total stock, lowest-stock books, and estimated stock remaining after orders.
- Book catalogue: available genres, publication years, book prices, and Fantasy book pricing.
- Sales performance: total order revenue, order values, quantities, and frequently ordered books.
- Genre and author performance: quantities sold by genre and author.
- Customer behavior: repeat orders, customer spending, and customer locations.
- Order trends: orders placed during November 2023.

Skills Used
- SQL database and table creation
- Primary keys and foreign key relationships
- Data filtering with WHERE
- Sorting and limiting results with ORDER BY and LIMIT
- Aggregate functions: SUM(), AVG(), MIN(), and COUNT()
- Grouping data with GROUP BY and filtering groups with HAVING
- Combining tables with JOIN and LEFT JOIN
- Using DISTINCT, subqueries, and COALESCE()
- Filtering dates with YEAR() and MONTH()
- Relational data analysis and business-question formulation.
- 
Conclusion
This project demonstrates how SQL can be used to explore bookstore data across books, customers, and orders. The queries cover inventory analysis, book and genre comparisons, order summaries, revenue calculations, and customer purchasing behavior. Together, these analyses provide a foundation for understanding bookstore operations and practicing relational database querying.

Project Files
- Books.csv — book catalogue and inventory data
- Customers.csv — customer information
- Orders.csv — order transaction data
- sql_script.sql — table definitions and SQL analysis queries
- README.md — project documentation
