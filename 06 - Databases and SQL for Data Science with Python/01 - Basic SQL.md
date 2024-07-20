# Introduction to SQL

 - Data is a collection of facts in various forms like words, numbers, or pictures;
 - Data is crucial for businesses and is collected and stored everywhere;
 - Databases store and secure data, allowing for quick access and modification;
 - A database is a repository of data, organized in tables with columns and rows, known as a relational database;
 - Tables in a relational database contain related items, like employees or book authors;
 - A database management system (DBMS) is a set of tools for managing data in a database;
 - Relational Database Management System (RDBMS) is a type of DBMS for relational databases;
 - RDBMS controls data access, organization, and storage, and is used in various industries;
 - Examples of RDBMS include MySQL, Oracle database, DB2 warehouse, and DB2 on Cloud;
 - SQL stands for Structured Query Language and is used for querying relational databases;
 - Basic SQL commands include creating a table, inserting data, selecting data, updating data, and deleting data.

# SELECT Statement

 - Database management systems store and facilitate data retrieval;
 - The SELECT statement, a DML statement, retrieves data from tables;
 - Output from SELECT is called a result set;
 - `SELECT * FROM table_name` retrieves all data from a table;
 - Specific columns can be retrieved using `SELECT column1, column2 FROM table_name`;
 - The WHERE clause restricts results based on conditions;
 - Predicates in WHERE clauses evaluate to true, false, or unknown;
 - Comparison operators include `=`, `>`, `<`, `>=`, `<=`, and `<>`.

# COUNT, DISTINCT, and LIMIT Statements

 - `COUNT` retrieves the number of rows matching query criteria;
    - **Example:** `SELECT COUNT(*) FROM table_name` gets total rows in a table;
 - `DISTINCT` removes duplicate values from a result set;
    - **Example:** `SELECT DISTINCT columnname FROM table_name` retrieves unique values;
 - `LIMIT` restricts the number of rows retrieved from the database;
    - **Example:** `SELECT * FROM table_name LIMIT 10` retrieves the first 10 rows;
 - `COUNT`, `DISTINCT`, and `LIMIT` are useful expressions in `SELECT` statements.

# INSERT Statement

 - After creating a table, it needs to be populated with data using the `INSERT` statement;
 - `INSERT` adds new rows to a table and is a Data Manipulation Language (DML) statement;
 - The syntax is ``INSERT INTO table_name (column_names) VALUES (values)``;
 - Each column name must have a corresponding value;
 - Multiple rows can be inserted at once by separating each row with a comma.

# UPDATE and DELETE Statements

 - The `UPDATE` statement alters data in a table and is a DML statement;
 - It's syntax is `UPDATE table_name SET column = value WHERE condition`;
 - The `DELETE` statement removes rows from a table and is a DML statement;
 - It's syntax is `DELETE FROM table_name WHERE condition`;
 - The `WHERE` clause is crucial for specifying which rows to `UPDATE` or `DELETE`;
 - Without the `WHERE` clause, all rows would be removed.

# Summary

 - The DML statements read and modify data; 
 - The search condition of the `WHERE` clause uses a predicate to refine the search;
 - The SQL retrieves specific data from databases;
 - The `COUNT`, `DISTINCT`, and `LIMIT` are expressions used with `SELECT` statements; 
 - The real-world applications of SELECT statements;
 - The `INSERT`, `UPDATE`, and `DELETE` are DML statements for populating and changing tables.

# Glossary