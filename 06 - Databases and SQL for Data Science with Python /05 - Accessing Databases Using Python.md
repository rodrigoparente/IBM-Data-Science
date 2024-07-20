# How to Access Databases Using Python

 - Python supports accessing relational database systems through the Python Database API (DB API);
 - Python programs communicate with Database Management System (DBMS) using API calls to connect, send SQL statements, retrieve results, and handle errors;
 - SQL API consists of library function calls to pass SQL statements and retrieve results from the DBMS;
 - Proprietary APIs for popular SQL-based DBMS systems include MySQL C API, psycopg2 (PostgreSQL), IBM_DB (IBM DB2), dblib (SQL Server), ODBC (Windows), OCI (Oracle), and JDBC (Java).

# Writing code using DB-API

 - DB API is a standard for accessing relational databases, allowing a single program to work with multiple databases;
 - The advantages of DB-API, are: 
    - Easy to implement;
    - Encourages similarity between modules;
    - Achieves consistency;
    - Enhances portability;
    - Broadens database connectivity.
 - Each database system has its own library, e.g., `IBM_DB` for IBM DB2, `mySQL_connector` for MySQL, `psycopg2` for PostgreSQL, and `PyMongo` for MongoDB.
 - The two main concepts in DB-API, are: 
    - Connection objects (connect to a database and manage transactions); 
    - Cursor objects (run queries and fetch results).
 - Connection methods include:
    - `cursor` (returns a new cursor object);
    - `commit` (commits transactions);
    - `rollback` (rolls back transactions);
    - `close` (closes the connection).

**Case Study**

Let's walk through a Python application that uses the DB-API to query a database.

First, you import your database module by using the connect API from that module. To open a connection to the database, you use the connect constructor and pass in the parameters, that is database name, username, and password. The connect function returns a connection object. After this, you create a cursor object on the connection object. The cursor is used to run queries and fetch results after running the queries using the cursor. We also use the cursor to fetch the results of the query. Finally, when the system is done running the queries, it frees all resources by closing the connection. Remember that it is always important to close connections to avoid unused connections taking up resources.

# Accessing Databases with SQL Magic

 - SQL Magic allows you to interact with SQL databases directly from Jupyter Notebooks using magic commands;
 - Magic commands in Jupyter start with `%`, such as `%load_ext sql` to load the SQL extension;
 - You can connect to databases using connection strings within the magic commands with `%sql sqlite:///my_database.db`;
 - SQL queries can be executed directly in notebook cells using `%%sql` followed by the query;
 - This approach reduces the need for extensive Python code to manage database connections and queries;
 - SQL Magic supports various databases, including SQLite, MySQL, PostgreSQL, and more;
 - It simplifies data exploration and analysis by integrating SQL queries seamlessly into the notebook environment.

# Analyzing data with Python

 - McDonald's, menu and it's nutritional data can be found in Kaggle;
 - We can use this dataset to perform some data analysis

## Load CSV to SQLite3 with Python

```Python
import pandas as pd
import sqlite3

# Read the CSV file into a DataFrame
data = pd.read_csv('./menu.csv')

# Create a connection to the SQLite database
conn = sqlite3.connect('McDonalds.db')

# Write the DataFrame to the SQLite database
data.to_sql('MCDONALDS_NUTRITION', conn)
```

## Using Pandas to Retrive Data from the Database Tables

```Python
import pandas as pd

# Assuming 'conn' is your database connection object
df = pd.read_sql("SELECT * FROM MCDONALDS_NUTRITION", conn)

# View First 10 Rows
df.head()
```

## Exploratory Analysis

```Python
# Shows the summary statistics of the data
df.describe(include='all')
```

```Python
# Creates a scatterplot showing the sodium content across different categories
sns.swarmplot(x="Category", y="Sodium", data=df)
plt.title('Sodium Content')
plt.show()

```

```Python
# Shows the ID of the row with the max value of sodium
idx_max = df['Sodium'].idxmax()

df.at[idx_max, 'Item']
```

```Python
# Create a plot showing the relationship between protein and total fat
plot = sns.jointplot(x="Protein", y="Total Fat", data=df)
plot.show()
```
# Summary

 - Python DB API concepts, such as, connection and cursor objects;
 - Magic commands provide special functionalities;
 - Pandas methods to interact with databases;
 - Matplotlib and seaborn's functions to data visualization.

# Glossary
