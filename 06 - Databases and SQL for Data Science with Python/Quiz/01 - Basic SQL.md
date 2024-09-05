1. Assume an INSTRUCTOR table exists with columns including FIRSTNAME, LASTNAME, and others. What would be the most likely result set for the query:

```sql
SELECT DISTINCT FIRSTNAME FROM INSTRUCTOR
```

- [ ] LEON
      PAUL
      LEON
      JOE

- [ ] LEON
      LEON
      PAUL
      PAUL

- [x] LEON
      PAUL
      JOE

- [ ] LEON KATSNELSON
      PAUL ZIKOPOLOUS
      JOE SANTARCANGELO

**Correct**  
Correct! The DISTINCT keyword is used to return only distinct or different rows.

2. Select the true option according to the following query.
```sql
UPDATE INSTRUCTOR SET LASTNAME = 'Brewster' WHERE LASTNAME = 'Smith'
```

- [x] Changes the last name of all instructors named 'Smith' to 'Brewster.'
- [ ] Changes the last name of the instructor named 'Brewster' to 'Smith.'
- [ ] Updates all rows in the table to have the last name 'Smith.'
- [ ] Updates all rows in the table to have the last name 'Brewster.'

**Correct**  
Correct! This statement updates the last name of all instructors named 'Smith' to 'Brewster.'

3. What would occur if you executed a DELETE FROM statement on a table without the WHERE clause?

- [ ] The command would only delete the first entry in the table.
- [ ] The command would result in an error.
- [ ] The command would delete the table from the database.
- [x] The command would remove all entries in the table, leaving it empty but still present in the database.

**Correct**  
Correct! Without the WHERE clause, the DELETE statement removes all entries from a table, leaving it empty in the database.

4. What is the expected result of the following SQL statement?

```sql
SELECT COUNT(DISTINCT FIRSTNAME) FROM INSTRUCTOR
```

- [ ] The count of unique entries along with the distinct FIRSTNAME entries.
- [ ] The statement would throw an error.
- [x] The number of unique FIRSTNAME entries in the INSTRUCTOR table.
- [ ] Only the distinct FIRSTNAME entries.

**Correct**  
Correct! The DISTINCT keyword identifies unique entries, and COUNT returns the number of these distinct entries.

5. Considering the execution of the following SQL statement, what would be the expected output?

```sql
SELECT * FROM INSTRUCTOR WHERE LASTNAME='Smith' LIMIT 5
```

- [ ] The first 5 rows from the INSTRUCTOR table.
- [ ] The last 5 rows from the INSTRUCTOR table.
- [ ] The last 5 entries in the INSTRUCTOR table where LASTNAME is 'Smith.'
- [x] The first 5 entries in the INSTRUCTOR table where LASTNAME is 'Smith.'

**Correct**  
Correct! The WHERE clause filters the results based on the LASTNAME, and the LIMIT clause restricts the output to the first 5 rows.