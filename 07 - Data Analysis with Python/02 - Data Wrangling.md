# Pre-processing Data in Python

 - Data pre-processing (data cleaning/wrangling) converts raw data into a format ready for analysis;
 - Topics covered: handling missing values, standardizing data formats, data normalization, data binning, and converting categorical variables to numeric;
 - Missing values occur when data entries are empty;
 - Standardizing data formats ensures consistency across different sources;
 - Normalization adjusts numerical data ranges for meaningful comparison;
 - Binning groups numerical values into larger categories for comparison;
 - Converting categorical values to numeric simplifies statistical modeling;
 - Operations in Python are usually performed along columns, each representing a sample;
 - Columns can be accessed by name and manipulated, such as adding a value to each entry.

# Dealing with Missing Values in Python

- Missing values occur when no data is stored for a feature in an observation;
- Missing values can appear as ?, N/A, zero, or blank cells;
- Options to handle missing data:
  - Check if the actual value can be found;
  - Remove data with missing values (drop variable or entry);
  - Replace missing values (e.g., with average or mode).
- Dropping data is less impactful if few observations are missing;
- Replacing data avoids data loss but may be less accurate;
- Use average for numerical data and mode for categorical data;
- Sometimes, additional knowledge about the data can help guess missing values;
- In some cases, it may be useful to leave missing data as is;
- Use `df.dropna(axis=0)` to drop rows and `axis=1` to drop columns;
- Set `inplace=True` to modify the data frame directly;
- Use Pandas' `replace` method to fill missing values with calculated values.

# Data Formatting in Python

 - Data formatting standardizes data for meaningful comparisons and consistency;
 - Different expressions for the same entity can be standardized;
 - Rename columns using the `dataframe.rename` method
 - Incorrect data types may be assigned during import;
 - Use `df.dtypes` to check data types and `df.astype` to convert them;
 - Common Pandas data types: object (letters/words), int64 (integers), float (real numbers).

# Data Normalization in Python

- Normalize variables to make ranges consistent for fair comparison and easier statistical analysis.
- Three normalization techniques:
  - **Simple feature scaling:** Divide each value by the maximum value;
  - **Min-max scaling:** Subtract the minimum value, then divide by the range;
  - **Z-score (standard score):** Subtract the mean and divide by the standard deviation.
- Apply normalization methods in Pandas using one of the following methods: `max()`, `min()`, `mean()`, and `std()`.

# Binning in Python

 - Binning groups values into bins;
 - Binning improves predictive model accuracy and helps understand data distribution;
 - Use NumPy's `linspace` to create equally spaced bins;
 - Use Pandas' `cut` to segment data into bins;
 - Visualize data distribution with histograms.

# Turning Categorical Variables into Quantitative Variables in Python

 - Most statistical models require numerical inputs, not strings;
 - Categorical variables need conversion to numeric format;
 - One hot encoding creates new features for each unique value;
 - In one hot encoding, presence of a value is marked as 1, absence as 0;
 - Use Pandas' `get_dummies` method to convert categorical variables to dummy variables.

# Summary

 - Data formatting standardizes data for consistency and comparability;
 - Identify and correct data types for accurate analysis;
 - Normalize data to eliminate biases and make variables comparable;
 - Use Feature Scaling, Min-Max, and Z-Score techniques in Pandas;
 - Binning groups numerical values for better model accuracy and visualization;
 - Use NumPy's `linspace` and Pandas' `cut` for binning; visualize with histograms;
 - Convert categorical variables to numerical using one-hot encoding with Pandas' `get_dummies`.

# Glossary