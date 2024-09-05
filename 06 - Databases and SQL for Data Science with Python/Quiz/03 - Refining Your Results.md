1. You want to select the author's lastname from a table, but you only remember that it starts with the letter J. Which of the following queries uses the correct string pattern?

- [ ] SELECT lastname from author where lastname like ‘J*’
- [ ] SELECT lastname from author where lastname like ‘J#’
- [x] SELECT lastname from author where lastname like ‘J%’
- [ ] SELECT lastname from author where lastname like ‘J$’

**Correct**  
Correct. You can use the % sign as a wildcard to indicate missing characters.

2. In SQL, which of the following will be the correct way to sort a result set in descending order?

- [ ] SELECT ID FROM TABLE_NAME ORDER BY ID
- [x] SELECT * FROM TABLE_NAME ORDER BY ID DESC
- [ ] SELECT * FROM TABLE_NAME ORDER BY ID
- [ ] SELECT ID FROM TABLE_NAME ORDER BY ID DESC

**Correct**  
Correct. DESC makes sure that the sorting is done in descending order.

3. What is the role of HAVING clause in SQL queries in MySQL?

- [ ] Acts as an alternative to WHERE clause in SQL queries.

- [ ] Check whether data records meet the specified condition is met or not.

- [x] Restricts the result set for a query using GROUP BY clause.

**Correct**  
Correct. HAVING clause is used in conjunction with GROUP BY statements to filter the result set.

- [x] It may not necessarily organize the result set in a specific order.

**Correct**
Correct. The HAVING clause doesn't order results; instead, it filters groups based on a specified condition.  


4. Which of the choices best describes the function of the following SQL query?

   ```sql
   SELECT * FROM employees ORDER BY emp_name LIMIT 5;
   ```

- [ ] Retrieves the entire contents of the table, sorted alphabetically based on emp_names
- [ ] Retrieves the top 5 emp_names ordered alphabetically.
- [x] Retrieves all the columns of the top 5 rows of the table, sorted alphabetically based on emp_names
- [ ] Retrieves all the columns of the top 5 rows of the table, sorted reverse alphabetically based on emp_names

**Correct**  
Correct! Using ORDER BY for text data, sorts the information alphabetically.

5. Which of the following SQL statements lists the number of customers in each country, showing only the countries with more than five customers?

- [x] SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 5;
- [ ] SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(Customers) > 5;
- [ ] SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING CustomerID > 5;
- [ ] SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) < 5;

**Correct**
Correct! Group by clause groups the results by country, and COUNT function gets the number of records of each country. Having clause filters the required results. 
