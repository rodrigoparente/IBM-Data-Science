1. What Python library is primarily used for machine learning?

- [ ] pandas
- [x] scikit-learn
- [ ] matplotlib
- [ ] Numpy

**Correct**  
Correct! This library is for machine learning.

2. We have the list `headers_list`:

`headers_list=['A','B','C']`

We also have the data frame `df` that contains three columns. What syntax should you use to replace the headers of the data frame `df` with values in the list `headers_list`?

- [ ] `df.head(headers_list)`
- [x] `df.columns = headers_list`
- [ ] `df.tail() = headers_list`
- [ ] `df.tail(headers_list)`

**Correct**  
Correct! This is the correct syntax you should use to replace the headers of the data frame `df` with values in the list `headers_list`.

3. What task does the following command perform?

`df = pandas.read_csv("A.csv")`

- [x] Loads the data from a CSV file called "A.csv" into a data frame ‘df’
- [ ] Changes the name of the column in ‘df’ to the ones as in "A.csv"
- [ ] Displays the contents of the CSV file
- [ ] Saves the data frame `df` to a CSV file called "A.csv"

**Correct**  
Correct! The pandas `read_csv()` function will load the contents of the file A.csv as a dataframe and save it to `df`.

4. Consider the segment of the following data frame:

Table where the column with a make header includes values "audi" and "alfa-romero"  
What is the type of attribute “make”?

- [ ] string
- [ ] int64
- [x] object
- [ ] float64

**Correct**  
Correct! The attribute `make` is an object data type.

5. How do you generate descriptive statistics for all the columns for the data frame `df`?

- [ ] `df.describe()`
- [x] `df.describe(include = "all")`
- [ ] `df.info`
- [ ] `df.statistics(include = “all”)`

**Correct**  
Correct! This code generates descriptive statistics for all the columns for the data frame `df`.
