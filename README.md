# 📚 Online Bookstore SQL Project

This project demonstrates how to design and query a simple **Online Bookstore** database using **PostgreSQL**.  
It includes database schema (DDL), sample datasets, and SQL queries for analysis.

---

## 📂 Project Structure

Online-Bookstore-SQL-Project/
│── queries.sql # Contains both schema (DDL) + SQL queries
│── README.md # Project documentation
│── data/ # Folder containing CSV datasets
│── books_200.csv
│── customers_200.csv
│── orders_200.csv


---

## 🏗️ Database Schema

The database contains 3 tables:  

- **Books** → Book details like title, author, genre, price, and stock.  
- **Customers** → Customer information such as name, email, phone, city, and country.  
- **Orders** → Order records linking customers and books, with order date, quantity, and total amount.  

---

## 🗄️ Dataset

Sample data is provided in the `/data` folder:  

- `books_200.csv`  
- `customers_200.csv`  
- `orders_200.csv`  

---

## ⚙️ How to Use

1. Clone this repository:    
   ```bash
   git clone https://github.com/yuvrajkushwaha01/Online-Bookstore-SQL-Project.git
   cd Online-Bookstore-SQL-Project

   Open PostgreSQL and run the SQL file:

\i 'queries.sql'


Import CSV data into tables (use \COPY command in psql or import via pgAdmin).

🔍 Example Queries

Some analysis queries included:

Find the most sold book

Find the customer who spent the most

Calculate remaining stock after all orders

Sales grouped by genre

🚀 Tech Stack

PostgreSQL

SQL
   git clone https://github.com/yuvrajkushwaha01/Online-Bookstore-SQL-Project.git
   cd Online-Bookstore-SQL-Project

   ## 👤 Author

- **Yuvraj Kumar Kushwaha**  
  📧 Email: your-yuvrajkumarkushwaha7@gmail.com  
  🌐 GitHub: [yuvrajkushwaha01](https://github.com/yuvrajkushwaha01)  
  💼 LinkedIn: [linkedin.com/in/yuvrajkushwaha01](https://www.linkedin.com/in/yuvrajkushwaha01)  

