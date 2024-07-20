# Using String Patterns and Ranges

 - The `SELECT` statement retrieves data from tables, e.g., `SELECT * FROM table_name`;
 - You can retrieve all columns or a subset of columns from a table;
 - The `WHERE` clause restricts the result set based on a condition (predicate);
 - Predicates evaluate to true, false, or unknown;
 - String patterns with the `LIKE` predicate and wildcard characters (e.g., %) can search for partial matches;
 - For example, the following statement retrieves names starting with "R", for example: 
    - `SELECT first_name FROM author WHERE first_name LIKE 'R%'`.
 - The `BETWEEN` operator specifies a range of values, for example:
    - `where pages between 290 and 300`.
 - The `IN` operator specifies a set of values, for example:
    - `where country IN ('Australia', 'Brazil')`.
 - These techniques simplify `SELECT` statements by using string patterns, ranges, or sets of values.

# Sorting Result Sets

- Use the `ORDER BY` clause to sort the result set by a specified column;
- By default, `ORDER BY` sorts in ascending order;
- To sort in descending order, use `DESC`, for example: 
    - `SELECT title FROM book ORDER BY title DESC`;
- You can also specify the sort column by its sequence number in the query, for example: `SELECT title, pages FROM book ORDER BY 2` sorts by the second column, pages;

# Grouping Result Sets

- `GROUP BY` clause groups rows that have the same values in the columns;
- The `GROUP BY` clause is often used with the aggregate functions like `COUNT`, `MAX`, `MIN`, `SUM`, and `AVG` for example:
    - `SELECT column1, aggregate_function(column2) FROM table_name GROUP BY column1`.
- `HAVING` clause filters groups based on a condition, used after `GROUP BY`, for example:
    - `SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 5`.

# Summary

 - You can use the `WHERE` clause to refine your query results; 
 - The search condition of the `WHERE` clause uses a predicate to refine the search; 
 - You can use the wildcard character (%) as a substitute for unknown characters in a pattern; 
 - You can use `BETWEEN` ... `AND` ... to specify a range of numbers; 
 - You can sort query results into ascending or descending order, using the `ORDER BY` clause to specify the column to sort on; 
 - You can group query results by using the `GROUP BY` clause. 
