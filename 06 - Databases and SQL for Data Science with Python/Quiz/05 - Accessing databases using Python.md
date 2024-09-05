1. Which of the following statements establishes the connection between a Jupyter Notebook SQL extension and an SQLite database ‘EMP.db’?

- [x] %sql sqlite:///EMP.db
- [ ] %sql
- [ ] sqlite:///EMP.db
- [ ] %sql sqlite:/EMP.db
- [ ] %sql sqlite3://EMP.db

**Correct**
Correct! This is the proper approach to establish the required connection.

2. Which two of the following can be stated as uses of cell magic in Jupyter Notebooks?

- [x] Coding in Jupyter notebook using a programming language other than Python

**Correct**
Partially correct. There are more options that are correct.

- [ ] Converting Jupyter notebook’s default programming language to a desired one

- [x] Timing a complete cell block as per requirement

**Correct**
Partially correct. There are more options that are correct.

- [ ] Load an SQL database to a Jupyter notebook

3. What would be the outcome of the following Python code?

   ```python
   import sqlite3
   import pandas as pd
   conn = sqlite3.connect('HR.db')
   data = pd.read_csv('./employees.csv')
   data.to_sql('Employees', conn)
   ```

- [x] The CSV file is read and converted into an SQL table ‘Employees’ under the HR database
- [ ] The CSV file is converted to an SQL file
- [ ] The code throws a syntax error message
- [ ] CSV file is saved to the HR.db file created by the code

**Correct**
Correct. Data from the csv file is saved to an SQL table.

4. What would be the correct way to query a database table using Python? Assume that output in any form is acceptable. Choose the 2 correct options.

- [x] `out = pandas.read_sql(query_statement, connection_object)`

**Correct**
Partially correct. There are more options that are correct.

- [ ] `out = dataframe.read_sql(query_statement, connection_object)`

- [x] `cursor = connection.execute(query_statement); out = cursor.fetchall()`

**Correct**
Partially correct. There are more options that are correct.

- [ ] `out = connection.execute(query_statement)`

5. Which of the following statements would you use to perform a statistical analysis of data in a pandas dataframe ‘df’?

- [x] `df.describe()`
- [ ] `df.head()`
- [ ] `df.tail()`
- [ ] `df.info()`

**Correct**
Correct. describe method responds with a statistical analysis of the data in df.