Based on the structure of your repository, you have two primary SQL files: setup-tables.sql and select-tables.sql.
Here is an updated and tailored version of your README.md that explicitly breaks down and explains the purpose and contents of these specific files.
```markdown
# 📊 Relational Database & SQL Queries Assignment

Welcome to the **db_assignment** repository! This project contains SQL scripts designed to set up a relational database, establish a table schema, insert mock data, and run various queries to retrieve and analyze the data.

## 📁 Repository Structure & File Explanations

This repository is kept clean and straightforward, utilizing two main SQL files that separate the structural setup from the data retrieval.

### 1. `setup-tables.sql` (Database Setup & Initialization)
This file is responsible for the **DDL (Data Definition Language)** and **DML (Data Manipulation Language)** operations. Running this script prepares your entire database environment.

**What it does:**
* **`CREATE TABLE` Statements:** Defines the schema for the database entities. It sets up the columns, data types (e.g., `VARCHAR`, `INT`, `DATE`), and structural relationships.
* **Constraints:** Establishes `PRIMARY KEY`s to uniquely identify records and `FOREIGN KEY`s to link tables together (ensuring referential integrity).
* **`INSERT INTO` Statements:** Populates the newly created tables with mock/sample data so that queries have meaningful information to retrieve and analyze.

### 2. `select-tables.sql` (Data Retrieval & Analysis)
This file focuses entirely on **DQL (Data Query Language)**. It contains the queries required to solve specific assignment problems or extract business insights from the tables created in the setup script.

**What it does:**
* **Basic Data Retrieval (`SELECT`, `WHERE`, `ORDER BY`):** Fetches specific columns and filters rows based on assignment conditions.
* **Joins (`INNER JOIN`, `LEFT JOIN`):** Combines data from multiple related tables based on their foreign keys, allowing for comprehensive reporting.
* **Aggregations (`GROUP BY`, `COUNT()`, `SUM()`):** Groups data to calculate totals, averages, or counts for analytics purposes.

---

## 🚀 How to Run the Scripts

To test these scripts locally, you will need a SQL environment (such as MySQL, PostgreSQL, or SQL Server). You can run them via a GUI (like DBeaver, MySQL Workbench, or pgAdmin) or via the command line.

**Step-by-step execution:**

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/aman-coder28/db_assignment.git](https://github.com/aman-coder28/db_assignment.git)
   cd db_assignment

```
 2. **Initialize the Database:**
   Run the setup script first to create your tables and insert the data.
   ```sql
   -- From your SQL command line or GUI runner
   SOURCE setup-tables.sql;
   
   ```
   *(Note: Depending on your SQL dialect, you might need to create a database and USE database_name; before running this).*
 3. **Run the Queries:**
   Once the database is populated, execute the select script to see the results of the data retrieval logic.
   ```sql
   SOURCE select-tables.sql;
   
   ```
## ✒️ Author
 * **Aman** - @aman-coder28
Feel free to fork this repository, explore the queries, or submit a pull request if you'd like to suggest optimizations or add more advanced query challenges!
```
