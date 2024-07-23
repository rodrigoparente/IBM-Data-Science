# Working with Real World Datasets

 - Real-world data sets often come as CSV files, which are text files with data values separated by a symbol, e.g. commas;
 - The first row in CSV files usually contains attribute labels mapping to column names in a table;
 - CSV files can be imported directly into a database;
 - The database will auto-detects header names as column names and create and insert statements to populate the table;
 - The default table name is the file name in lowercase;

# Getting Table and Column Details

 - To get a list of tables in a database, use:
    - In DB2,  `SYSCAT.TABLES`; 
    - In SQL Server,  `information_schema.tables`;
    - In SQLite3,  `sqlite_master`; 
    - In MySQL,  `SHOW TABLES`.
 - To extract attributes or column headers, use:
    - In SQLite3, `PRAGMA table_info(table_name)`;
    - In MySQL, `DESCRIBE table_name`.

# Summary

 - How to work with real-world datasets, gaining practical experience in handling and analyzing data;
 - The process of obtaining table and column details from databases, which is essential for understanding database structures and designing effective queries.

# Glossary