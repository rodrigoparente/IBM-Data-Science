1. The ______ statement is called a query, and the output we get from executing the query is called a result set.

- [ ] DROP DATABASE
- [x] SELECT
- [ ] CREATE TABLE
- [ ] ALTER

2. Which of the following SQL statements will delete the customers with IDs of B8 and B9?

- [ ] DELETE CUSTOMER_ID IS (‘B8’, ‘B9’) FROM CUSTOMERS
- [ ] DELETE (‘B8’, ‘B9’) FROM CUSTOMERS
- [x] DELETE FROM CUSTOMERS WHERE CUSTOMER_ID IN (‘B8’, ‘B9’)
- [ ] DELETE FROM CUSTOMERS WHERE CUSTOMER_ID IS (‘B8’, ‘B9’)

3. The primary key of a relational table uniquely identifies each _______ in a table.

- [ ] relation
- [x] row
- [ ] column
- [ ] attribute

4. Data Definition Language (DDL) and Data Manipulation Language (DML) are what?

- [x] The basic categories of the SQL commands based on functionality.
- [ ] The basic categories for managing data.
- [ ] The basic categories of the PYTHON commands based on functionality.
- [ ] The basic categories for providing security to databases.

5. When querying a table called Author that contains a list of authors and their country of residence, which of the following queries will return the number of authors from each country?

- [x] SELECT Country, COUNT(Country) FROM Author GROUP BY Country
- [ ] SELECT Country, DISTINCT(Country) FROM Author GROUP BY Country
- [ ] SELECT Country, COUNT(Country) FROM Author
- [ ] SELECT DISTINCT(Country) FROM Author

6. You want to retrieve a list of employees with first name and last name for a company that were hired after January 1, 2020. Which clause would you add to the following SQL statement: 

```sql
SELECT First_Name, Last_Name, Hiredate FROM Company _____;
```

- [ ] IF Hiredate > ’01-01-2020’
- [ ] WHERE Hiredate = ’01-01-2020’
- [x] WHERE Hiredate > ’01-01-2020’
- [ ] WHERE Hiredate < ’01-01-2020’

7. Which of the following queries will retrieve the LOWEST value of PRICE in a table called PRODUCTS?

- [x] SELECT MIN(PRICE) FROM PRODUCTS
- [ ] SELECT LOWEST(PRICE) FROM PRODUCTS
- [ ] SELECT MAX(PRICE) FROM PRODUCTS
- [ ] SELECT LEAST(PRICE) FROM PRODUCTS

8. Which of the following queries will retrieve the PRODUCT NAME that has the highest price?

- [ ] SELECT PRODUCT_NAME FROM PRODUCTS WHERE UNIT_PRICE = MAX
- [ ] SELECT PRODUCT_NAME FROM PRODUCTS WHERE UNIT_PRICE IS HIGHEST
- [ ] SELECT MAX(UNIT_PRICE) FROM PRODUCTS
- [x] SELECT PRODUCT_NAME FROM PRODUCTS WHERE UNIT_PRICE = (SELECT MAX(UNIT_PRICE) FROM PRODUCTS)

9. A database cursor is a ___________ that enables traversal over the records in a database.

- [ ] Control object
- [x] Control structure
- [ ] Control statement
- [ ] Control variant

10. What is the purpose of the Python command `df.to_sql('Sample', conn)`?

- [x] Saves the contents of dataframe ‘df’ to a table ‘Sample’ in a database with connection object ‘conn’
- [ ] Loads the contents of table ‘Sample’ in a database with connection object ‘conn’ to a dataframe ‘df’
- [ ] Creates a blank table ‘Sample’ in the database with connection object ‘conn’
- [ ] Sets up a connection between the table ‘Sample’ and the database with connection object ‘conn’