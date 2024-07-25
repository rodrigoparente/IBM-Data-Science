# Understanding the Data

 - The dataset on used car prices by Jeffrey C Schlimmer;
 - CSV format, easy to import into most tools;
 - Each line represents a row in the dataset;
 - First row is not a header, just another row of data;
 - Documentation available for the 26 columns;
 - Goal is to predict price based on other car features;
 - Exercise aims to teach data analysis.

# Python Packages for Data Science

 - Python libraries are collections of functions and methods for various actions;
 - Libraries contain built-in modules for different functionalities;
 - Python data analysis libraries are divided into three groups.

**Scientific Computing Libraries**:
  - **Pandas**: Tools for data manipulation and analysis; uses data frames;
  - **NumPy**: Uses arrays for inputs and outputs; supports fast array processing;
  - **SciPy**: Functions for advanced math problems and data visualization.

**Data Visualization Libraries**:
  - **Matplotlib**: Well-known for creating customizable graphs and plots;
  - **Seaborn**: High-level visualization library based on Matplotlib; easy to generate various plots.

**Algorithmic Libraries**:
  - **Scikit-learn**: Tools for statistical modeling, including regression, classification, and clustering;
  - **Statsmodels**: Allows exploration of data, estimation of statistical models, and performing statistical tests.

# Importing and Exporting Data in Python

 - Data acquisition involves loading and reading data into a notebook from various sources;
 - Two important factors for reading data with Pandas are the:
    - Format, which indicates how data is encoded (e.g., CSV, JSON, XLSX, HDF);
    - File path, which shows where the data is stored (locally or online).
 - Pandas' `read_csv` method reads files with comma-separated columns into a data frame.
 - Reading data in Pandas involves three steps: 
    - Importing Pandas library;
    - Define file path variable;
    - Use the function `read_csv` to read the file.
 - If data lacks headers, specify `header=None`;
 - Use `dataframe.head()` to show the first 10 rows and `dataframe.tail()` for the last 10 rows;
 - Assign meaningful column names using `df.columns=headers`;
 - Export data frame to a new CSV file using `to_csv`;
 - Pandas supports importing and exporting various data formats with similar syntax to CSV.

# Getting Started Analyzing Data in Python

 - Pandas has built-in methods to understand data types and distributions;
 - These methods provide an overview and identify potential issues with data types;
 - Main data types in Pandas: object, float, int, and datetime;
 - Data type names differ slightly from native Python;
 - Pandas automatically assigns types based on detected encoding, which may be incorrect;
 - Correct data types allow appropriate Python functions to be applied;
 - `dataframe.dtypes` returns the data type of each column;
 - Statistical summary of each column helps identify issues like outliers;
 - Use `dataframe.describe` for quick statistics (count, mean, std, min, max, quartiles);
 - `describe` skips non-numeric columns by default; use `include='all'` to include all columns;
 - Object type columns show unique, top, and frequency statistics;
 - NaN values indicate metrics that can't be calculated for certain data types;
 - `dataframe.info` provides a concise summary of the data frame, including index dtype, non-null values, and memory usage.

# Accessing Databases with Python

 - Python program communicates with DBMS using API calls;
 - SQL API consists of library function calls for DBMS;
 - DB API is Python's standard API for accessing relational databases;
 - DB API allows writing a single program for multiple relational databases;
 - Main concepts in Python DB API: connection objects and cursor objects;
 - Connection objects connect to a database and manage transactions;
 - Cursor objects run queries and fetch results;
 - Methods for connection objects: `cursor`, `commit`, `rollback`, `close`;
 - Steps to query a database with DB API:
    1. Import database module;
    2. Open connection using `connect` function with database name, username, and password;
    3. Create cursor object on connection object;
    4. Run queries and fetch results using cursor;
    5. Close connection to free resources.

# Summary

- Python libraries facilitate various functionalities without writing code from scratch and can be categorized into Scientific Computing, Data Visualization, and Machine Learning Algorithms;
- Data format and file path are key for reading data with Pandas;
- `describe()` provides statistical summaries for numerical columns and `info()` method gives an overview of the DataFrame;
- Python connects to databases using SQL APIs and Python DB APIs.

# Glossary