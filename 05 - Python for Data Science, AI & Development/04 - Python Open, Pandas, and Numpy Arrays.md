# Reading Files with Open

 - The `open()` function in Python is used to open a file and returns a file object;
 - It requires at least one argument: the filename as a string;
 - The mode argument specifies the mode in which the file is opened, such as 'r' for reading, 'w' for writing, and 'a' for appending;
 - Additional arguments include buffering, encoding, errors, newline, closefd, and opener;
 - The file object returned by `open()` can be used to read from or write to the file.

# Writing Files with Write

 - The `write()` function in Python is used to write a string to a file;
 - It requires a file object to be opened in write (`'w'`), append (`'a'`), or exclusive creation (`'x'`) mode;
 - The function does not add a newline character at the end of the string; you need to include it explicitly if required;
 - It returns the number of characters written to the file;
 - You must close the file using the `close()` method or use a `with` statement to ensure the file is properly closed after writing.

# Pandas

**Loading Data**

 - Use the `read_csv()` function to open CSV files, specifying the file path as an argument;
 - For Excel files, use the `read_excel()` function, providing the file path and sheet name if necessary;
 - To read JSON files, use the `read_json()` function with the file path;
 - For text files, use the `read_table()` or `read_csv()` function, specifying the delimiter if needed;
 - Use the `read_sql()` function to read data from SQL databases, providing the SQL query and connection object;
 - The `head()` method examines the first five rows of a dataframe;
 - Access unique elements in dataframes using the `iloc` method with row and column indices;
 - Slice dataframes and assign values to new dataframes using indexing or the `loc` method.

**Writing Files**

 - Use the `to_csv()` method to write a dataframe to a CSV file, specifying the filename and optional parameters like  `index=False`;
 - Use the `to_excel()` method to write a dataframe to an Excel file, specifying the filename and optional parameters like `sheet_name`;
 - Use the `to_json()` method to write a dataframe to a JSON file, specifying the filename and optional parameters like `orient`;
 - Use the `to_sql()` method to write a dataframe to a SQL database, specifying the table name and connection object;
 - Use the `to_pickle()` method to serialize a dataframe to a binary file format.

# Numpy: 1D array

A 1D array in NumPy is a single-dimensional array, essentially a list of elements. 1D arrays are efficient for storing and manipulating linear data, supporting operations like indexing, slicing, and mathematical computations. Below is 10 examples of things we can do with numpy 1D arrays.

**Create a 1D array using `numpy.array()`**
  
  ```python
  import numpy as np
  arr = np.array([1, 2, 3, 4, 5])
  ```

**Use `numpy.arange()` to create a range of values**
  
  ```python
  arr = np.arange(0, 10, 2)  # Output: [0, 2, 4, 6, 8]
  ```

**Generate evenly spaced values with `numpy.linspace()`**
  
  ```python
  arr = np.linspace(0, 1, 5)  # Output: [0. , 0.25, 0.5, 0.75, 1. ]
  ```

**Perform indexing and slicing**
  
  ```python
  first_element = arr[0]  # Access first element
  sub_array = arr[1:4]    # Slice array
  ```

**Apply mathematical operations**
  
  ```python
  arr = np.array([1, 2, 3])
  arr_sum = np.sum(arr)  # Output: 6
  ```

**Calculate statistical measures**
  
  ```python
  mean = np.mean(arr)  # Output: 2.0
  std_dev = np.std(arr)  # Output: 0.816
  ```

**Use broadcasting for element-wise operations**
  
  ```python
  arr = np.array([1, 2, 3])
  arr = arr * 2  # Output: [2, 4, 6]
  ```

**Reshape 1D arrays into multi-dimensional arrays**
  
  ```python
  arr = np.array([1, 2, 3, 4])
  arr_reshaped = arr.reshape(2, 2)  # Output: [[1, 2], [3, 4]]
  ```

**Efficiently handle large datasets with vectorized operations**
  
  ```python
  large_arr = np.arange(1000000)
  large_arr_squared = large_arr ** 2
  ```

# Numpy: 2D array

A 2D array in NumPy is a two-dimensional array of elements, essentially forming a matrix. 2D arrays are widely used in data analysis, scientific computing, and machine learning due to their efficiency and versatility. Below is 10 examples of things we can do with numpy 2D arrays.


**Create a 2D array using `numpy.array()`**

  ```python
  import numpy as np
  arr = np.array([[1, 2, 3], [4, 5, 6]])
  ```

**Access elements using row and column indices**

  ```python
  element = arr[0, 1]  # Output: 2
  ```

**Perform slicing to access subarrays**

  ```python
  sub_array = arr[:, 1:3]  # Output: [[2, 3], [5, 6]]
  ```

**Use `numpy.zeros()` to create a 2D array filled with zeros**

  ```python
  zeros_array = np.zeros((2, 3))  # Output: [[0., 0., 0.], [0., 0., 0.]]
  ```

**Use `numpy.ones()` to create a 2D array filled with ones**

  ```python
  ones_array = np.ones((2, 3))  # Output: [[1., 1., 1.], [1., 1., 1.]]
  ```

**Perform matrix operations like addition**

  ```python
  arr1 = np.array([[1, 2], [3, 4]])
  arr2 = np.array([[5, 6], [7, 8]])
  sum_array = arr1 + arr2  # Output: [[ 6,  8], [10, 12]]
  ```

**Use `numpy.dot()` for matrix multiplication**

  ```python
  product = np.dot(arr1, arr2)  # Output: [[19, 22], [43, 50]]
  ```

**Calculate the transpose of a 2D array**

  ```python
  transpose = arr.T  # Output: [[1, 4], [2, 5], [3, 6]]
  ```

**Use `numpy.reshape()` to change the shape of a 2D array**

  ```python
  reshaped_array = arr.reshape(3, 2)  # Output: [[1, 2], [3, 4], [5, 6]]
  ```

# Summary

 - Python uses the open() function and allows you to read and write files, providing access to the content within the file for reading. It also allows overwriting it for writing and specifies the file mode (for example, r for reading, w for writing, a for appending);
 - Pandas is a powerful Python library for data manipulation and analysis, providing data structures and functions to work with structured data like data frames and series;
 - NumPy is a Python library for numerical and matrix operations, offering multidimensional array objects and a variety of mathematical functions to work with data efficiently;
 - A one-dimensional NumPy array is a linear sequence of elements with a single axis, like a traditional list, but optimized for numerical computations and array operations;
 - A two-dimensional NumPy array is a grid-like structure with rows and columns suitable for representing data as a matrix or a table for numerical computations.

# Glossary