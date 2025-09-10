# 📚 Online Bookstore SQL Project

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/yuvrajkushwaha01)
[![License](https://img.shields.io/badge/License-MIT-green)](https://opensource.org/licenses/MIT)

A **SQL project** demonstrating the design and querying of a simple **Online Bookstore** database using **PostgreSQL**.  
It includes database schema (DDL), sample datasets, and SQL queries for analysis.

---

## 📂 Project Structure

Online-Bookstore-SQL-Project/
│── queries.sql # Contains both schema (DDL) & SQL queries
│── README.md # Project documentation
│── /Respiratory/ # CSV datasets
│── books_200.csv
│── customers_200.csv
│── orders_200.csv

---

## 🏗️ Database Schema

**Tables:**

- **Books** → Details like title, author, genre, price, and stock.  
- **Customers** → Info such as name, email, phone, city, and country.  
- **Orders** → Records linking customers and books, including order date, quantity, and total amount.

---

## 🗄️ Dataset

Sample CSV data is provided in the `/Respiratory` folder:

- `books_200.csv`  
- `customers_200.csv`  
- `orders_200.csv`

---

## ⚙️ How to Use

1. **Clone the repository:**

```bash
git clone https://github.com/yuvrajkushwaha01/Online-Bookstore-SQL-Project.git
cd Online-Bookstore-SQL-Project
Run the SQL file in PostgreSQL:

\i 'queries.sql'


Import CSV data into tables (use \COPY in psql or import via pgAdmin).

🔍 Example Queries

Find the most sold book

Find the customer who spent the most

Calculate remaining stock after all orders

Sales grouped by genre

🚀 Tech Stack
PostgreSQL

👤 Author
Yuvraj Kumar Kushwaha

📧 your-yuvrajkumarkushwaha7@gmail.com
🌐 GitHub: yuvrajkushwaha01
💼 LinkedIn: linkedin.com/in/yuvrajkushwaha01
