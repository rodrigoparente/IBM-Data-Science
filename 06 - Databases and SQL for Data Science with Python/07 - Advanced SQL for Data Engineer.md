# Views

In SQL, a **view** is a virtual table that is created based on the result of a SQL query. It contains rows and columns just like a real table, but it doesn't store data itself. Instead, it dynamically retrieves data from one or more underlying tables whenever it is queried.

Here are some key points about views:

- **Creation**: Views are created using the `CREATE VIEW` statement. For example:
  ```sql
  CREATE VIEW view_name AS
  SELECT column1, column2
  FROM table_name
  WHERE condition;
  ```

- **Usage**: Once created, a view can be queried just like a regular table. For example:
  ```sql
  SELECT * FROM view_name;
  ```

- **Updating**: Views can be updated using the `CREATE OR REPLACE VIEW` statement to modify the query it is based on.

- **Deletion**: Views can be deleted using the `DROP VIEW` statement.

Views are useful for simplifying complex queries, enhancing security by restricting access to specific data, and presenting data in a specific format without altering the underlying tables

# Stored Procedures

In SQL, a **stored procedure** is a set of precompiled SQL statements that can be executed as a single unit. Stored procedures are used to encapsulate repetitive tasks, business logic, or complex operations that need to be performed frequently.

Here are some key points about stored procedures:

- **Creation**: Stored procedures are created using the `CREATE PROCEDURE` statement. For example:
  ```sql
  CREATE PROCEDURE procedure_name
  AS
  BEGIN
    -- SQL statements
  END;
  ```

- **Execution**: Once created, a stored procedure can be executed using the `EXEC` statement. For example:
  ```sql
  EXEC procedure_name;
  ```

- **Parameters**: Stored procedures can accept input parameters to make them more flexible. For example:
  ```sql
  CREATE PROCEDURE procedure_name @parameter_name datatype
  AS
  BEGIN
    -- SQL statements using @parameter_name
  END;
  ```

Stored procedures improve performance by reducing network traffic, enhance security by controlling access to data, and promote code reuse.

# Transactions

In SQL, **ACID transactions** ensure that database operations are processed reliably and maintain data integrity. ACID stands for **Atomicity, Consistency, Isolation, and Durability**.

Here's a breakdown of each property:

 1. **Atomicity**: This ensures that all operations within a transaction are completed successfully. If any part of the transaction fails, the entire transaction is rolled back, leaving the database unchanged;
 2. **Consistency**: This guarantees that a transaction will bring the database from one valid state to another, maintaining all predefined rules and constraints. After the transaction, the database remains in a consistent state;
 3. **Isolation**: This ensures that transactions are executed in isolation from one another. Concurrent transactions do not interfere with each other, and intermediate states are not visible to other transactions;
 4. **Durability**: Once a transaction is committed, it remains so, even in the event of a system failure. The changes made by the transaction are permanently recorded in the database.

These properties collectively ensure that database transactions are processed reliably, maintaining the integrity and consistency of the data.

# Summary

 - Views are a dynamic mechanism for presenting data from one or more tables;
 - A stored procedure is a set of SQL statements that are stored and executed on the database server;
 - An ACID transaction is one where all the SQL statements must complete successfully, or none at all.

# Glossary
