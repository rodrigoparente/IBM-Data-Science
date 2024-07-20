# Relational Database Concepts

 - Data is organized into tables consisting of rows and columns;
 - Rows represent individual entries, and columns represent attributes of the data;
 - A primary key uniquely identifies each row, ensuring data integrity;
 - A foreign key links to the primary key of another table, establishing relationships;
 - Relationships between tables are defined by primary and foreign keys;
 - SQL is used to interact with relational databases, including querying and managing data;
 - Data integrity is maintained through constraints and rules;
 - Normalization organizes data to reduce redundancy and improve integrity;
 - ACID properties ensure reliable transactions: 
    - Atomicity;
    - Consistency;
    - Isolation;
    - Durability.
 - Indexes improve the speed of data retrieval operations;
 - Views are virtual tables created by querying data from one or more tables.

# Types of SQL statements (DDL vs. DML)

 - SQL statements interact with tables (entities), columns (attributes), and rows (tuples) in relational databases;
 - SQL statements are categorized into:
    - Data Definition Language (DDL);
    - Data Manipulation Language (DML).
 - DDL statements are used for defining or changing database objects;
 - Common DDL statements: 
    - `CREATE` (create tables);
    - `ALTER` (alter tables);
    - `TRUNCATE` (delete data but not the table);
    - `DROP` (delete tables).
 - DML statements are used for manipulating or working with data in tables;
 - Common DML statements: 
    - `INSERT` (insert rows);
    - `SELECT` (read rows);
    - `UPDATE` (edit rows);
    - `DELETE` (remove rows).
 
# CREATE TABLE Statement

 - The `CREATE TABLE` statement is used to create a new table in a database;
 - It's syntax is `CREATE TABLE table_name (column1 datatype, column2 datatype, ...);`;
 - Column parameters specify the names and data types of the columns;
 - Data types define the type of data each column can hold (e.g., VARCHAR, INT, DATE);
 - Constraints can be added to columns (e.g., NOT NULL, UNIQUE, PRIMARY KEY);
    - **Example:** `CREATE TABLE Persons (PersonID INT, LastName VARCHAR(255), FirstName VARCHAR(255));`;
 - If the table already exists, an error occurs unless `IF NOT EXISTS` is used.

# ALTER, DROP, and Truncate Tables

 - The `ALTER TABLE` statement modifies an existing table by adding, deleting, or modifying columns and constraints;
 - It's syntax is `ALTER TABLE table_name ADD column_name datatype;` or `ALTER TABLE table_name DROP COLUMN column_name;`;
 - The `DROP TABLE` statement removes an existing table and all its data from the database;
 - It's syntax is `DROP TABLE table_name;`;
 - The `TRUNCATE TABLE` statement deletes all rows in a table but preserves the table structure;
 - It's syntax is `TRUNCATE TABLE table_name;`.

# Summary

 - A database is a repository of data that provides functionality for adding, modifying, and querying the data;  
 - SQL is a language used to query or retrieve data from a relational database;  
 - The Relational Model is the most used data model for databases because it allows for data independence;  
 - The primary key of a relational table uniquely identifies each tuple or row, preventing duplication of data and providing a way of defining relationships between tables;  
 - SQL statements fall into two different categories: Data Definition Language (DDL) statements and Data Manipulation Language (DML) statements. 

# Glossary