# Built-in Database Functions

- Built-in database functions can be included in SQL statements to perform operations directly within the database;
- Using these functions reduces the amount of data retrieved, lowering network traffic and bandwidth usage;
- For large data sets, built-in functions are often faster than retrieving data and processing it in an application;

## Examples of Built-in Functions

**COUNT**: returns the number of rows that match a specified condition.
 - `SELECT COUNT(*) FROM Employees WHERE Department = 'Sales';`

**AVG**: calculates the average value of a numeric column.
 - `SELECT AVG(Salary) FROM Employees;`

**SUM**: adds up the values in a numeric column.
 - `SELECT SUM(Salary) FROM Employees WHERE Department = 'Sales';`

**MIN**: returns the smallest value in a column.
 - `SELECT MIN(Salary) FROM Employees;`

**MAX**: returns the largest value in a column.
 - `SELECT MAX(Salary) FROM Employees;`

**UPPER**: converts a string to uppercase.
 - `SELECT UPPER(FirstName) FROM Employees;`

**LOWER**: converts a string to lowercase.
 - `SELECT LOWER(FirstName) FROM Employees;`

**LENGTH**: returns the length of a string.
 - `SELECT LENGTH(FirstName) FROM Employees;`

**ROUND**: rounds a numeric value to a specified number of decimal places.
 - `SELECT ROUND(Salary, 2) FROM Employees;`

**CONCAT**: concatenates two or more strings.
 - `SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;`

## Examples of Date and Time Built-in Functions

**NOW**: Returns the current date and time.
 - `SELECT NOW();`

**CURDATE**: Returns the current date.
 - `SELECT CURDATE();`

**CURTIME**: Returns the current time.
 - `SELECT CURTIME();`

**DATE**: Extracts the date part of a date or datetime expression.
 - `SELECT DATE('2024-07-20 12:34:56');`

**TIME**: Extracts the time part of a date or datetime expression.
 - `SELECT TIME('2024-07-20 12:34:56');`

**YEAR**: Returns the year from a date.
 - `SELECT YEAR('2024-07-20');`

**MONTH**: Returns the month from a date.
 - `SELECT MONTH('2024-07-20');`

**DAY**: Returns the day of the month from a date.
 - `SELECT DAY('2024-07-20');`

**HOUR**: Returns the hour from a time.
 - `SELECT HOUR('12:34:56');`

**MINUTE**: Returns the minute from a time.
 - `SELECT MINUTE('12:34:56');`

**SECOND**: Returns the second from a time.
 - `SELECT SECOND('12:34:56');`

**DATEDIFF**: Returns the difference in days between two dates.
 - `SELECT DATEDIFF('2024-07-20', '2024-07-15');`

**DATE_ADD**: Adds a time interval to a date.
 - `SELECT DATE_ADD('2024-07-20', INTERVAL 5 DAY);`

**DATE_SUB**: Subtracts a time interval from a date.
 - `SELECT DATE_SUB('2024-07-20', INTERVAL 5 DAY);`

**STR_TO_DATE**: Converts a string to a date. 
 - `SELECT STR_TO_DATE('20-07-2024', '%d-%m-%Y');`

# Sub-Queries and Nested Selects

- A subquery, also known as a nested query or subselect, is a `SELECT` query embedded within another SQL query;
- Subqueries can be placed in the `WHERE`, `HAVING`, `FROM`, or `SELECT` clauses of an outer query;
- The data returned by the subquery is used by the outer query as if it were a literal value;
- Subqueries can return a single value, a single row, or a table of values;
- Common uses include filtering results, calculating values, and checking for existence of data;
- Subqueries can be used with comparison operators (e.g., =, >, <), `IN`, `ANY`, `ALL`, and `EXISTS`;
- An example of sub-queries is `SELECT * FROM students WHERE GPA > (SELECT AVG(GPA) FROM students);`, where we want to retrieve students with above-average GPAs.

# Working with Multiple Tables

There are different way to combine rows from two or more tables based on a related column. Theses operations use special clauses like the ones defined below.

**INNER JOIN**: Returns rows with matching values in both tables.
  - `SELECT * FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;`

**LEFT JOIN**: Returns all rows from the left table and matched rows from the right table. Unmatched rows from the right table return NULL.
  - `SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;`

**RIGHT JOIN**: Returns all rows from the right table and matched rows from the left table. Unmatched rows from the left table return NULL.
  - `SELECT * FROM Orders RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;`

**Union**: Combines the result sets of two or more SELECT statements, removing duplicates.
  - `SELECT City FROM Customers UNION SELECT City FROM Suppliers;`

**Subqueries**: Nested queries used within a SELECT, INSERT, UPDATE, or DELETE statement to perform operations on multiple tables.
  - `SELECT * FROM Employees WHERE DepartmentID IN (SELECT DepartmentID FROM Departments WHERE Location = 'New York');`

**Aliases**: Temporary names for tables or columns to simplify queries.
  - `SELECT C.CustomerName, O.OrderID FROM Customers C, Orders O WHERE C.CustomerID = O.CustomerID;`

# Summary

- Tools for database management that offer built-in functions for performing operations on data within the database itself;
- That when working with large datasets, you may save time by using built-in functions rather than first retrieving the data into your application and then executing functions on the retrieved data;
- You can use sub-queries to form more powerful queries than otherwise;
- You can use a sub-select expression to evaluate some built-in aggregate functions like the average function.;
- Derived tables or table expressions are sub-queries where the outer query uses the results of the sub-query as a data source.

# Glossary