1. What type of file saves data in a text-based tabular format?

- [ ] XLSX
- [ ] HTML
- [x] CSV
- [ ] PDF

**Correct**
Correct! A CSV saves data in a text-based tabular format.

2. Which Python libraries are primarily Algorithmic Libraries?

- [x] Scikit-learn, Statsmodels
- [ ] Matplotlib, Seaborn
- [ ] Pandas, Numpy, SciPy
- [ ] Jupyter, Regression

**Correct**
Correct! These Python libraries are primarily Algorithmic Libraries.

3. What is a file path?

- [ ] Describes the format of the data
- [ ] Indicates the way data is encoded
- [x] Describes where the data is stored
- [ ] Describes the schema of the data

**Correct**
Correct! A file path describes where the data is stored.

4. What does the `df.head()` method return?

- [ ] It returns the first five columns of the data frame
- [ ] It returns the last five rows of the data frame
- [ ] It returns the last five columns of the data frame
- [x] It returns the first five rows of the data frame

**Correct**
Correct! The df.head() method returns the first five rows of the data frame.

5. In a data set, what term refers to the column name?

- [ ] Title
- [x] Header
- [ ] Row
- [ ] Type

**Correct**
Correct! In a data set, the term header refers to the column name.

6. The Scikit-learn library is mostly used for what?

- [ ] Statistical modeling
- [ ] Data visualization
- [ ] Data analysis
- [x] Machine learning algorithms

**Correct**
Correct! The Scikit-learn library is mostly used for machine learning algorithms.

7. What method returns the first 10 rows of data frame `df`?

- [ ] `df.head()`
- [x] `df.head(10)`
- [ ] `df.tail()`
- [ ] `df.tail(10)`

**Correct**
Correct! The code df.head(10) returns the first 10 rows of data frame df.

8. What function should you use to remove rows and columns with null or NaN values?

- [ ] `findna()`
- [ ] `replacena()`
- [x] `dropna()`
- [ ] `removena()`

**Correct**
Correct! The dropna() method removes rows and columns with null or NaN values.

9. Which statement about binning is true?

- [ ] It is primarily used to normalize the data.
- [x] It is primarily used to gain a better understanding of the data distribution.
- [ ] It is primarily used to calculate descriptive statistics.
- [ ] It is primarily used to format the data.

**Correct**
Correct! Binning is primarily used to gain a better understanding of the data distribution.

10.  What is the primary purpose of standardizing a set of values?

- [ ] To find how well a data set fits a model.
- [ ] So you can see the spread of the data set and identify outliers.
- [ ] To see how many standard deviations each value is from the mean.
- [x] It places different variables on the same scale, allowing you to compare them more easily.

**Correct**
Correct! Standardizing values serves to place different variables on the same scale, allowing you to compare them more easily.

11.  What is it called when you subtract the mean from the values in a data set and divide by the standard deviation?

- [ ] Min-max method
- [ ] Binning
- [x] Data standardization
- [ ] One-hot encoding

**Correct**
Correct! Data standardization is calculated by subtracting the mean from the values in a data set and divide by the standard deviation.

12.  What task does the following line of code perform in the data frame `df`?

    `df['peak-rpm'].replace(np.nan, 5, inplace=True)`

- [ ] Adds 5 to the values in the column 'peak-rpm'
- [ ] Renames the column 'peak-rpm' to 5
- [x] Replaces the not a number values with 5 in the column 'peak-rpm'
- [ ] Replaces the values equal to 5 in the column 'peak-rpm' with the value ‘nan’

**Correct**
Correct! This segment of code replaces the not a number values with 5 in the column 'peak-rpm'.

13.  What does a negative linear relationship between an input variable and an output variable imply?

- [ ] That as the input increases, the output increases at about the same rate.
- [ ] That as the input increases, the output decreases at an ever-increasing rate.
- [ ] The output does not adequately explain the input.
- [x] That as the input increases, the output decreases at about the same rate.

**Correct**
Correct! A negative linear relationship between an input variable and an output variable implies that as the input increases, the output decreases at about the same rate.

14.  Outliers on a boxplot are usually calculated how?

- [x] 1.5 times the interquartile range added to the 75th quartile and subtracted from the 25th quartile
- [ ] The data point in the middle, after you have arranged the data from least to greatest
- [ ] The data points furthest away from the mean
- [ ] Data above and below the 25th and 75th quartile

**Correct**
Correct! Outliers on a boxplot are usually calculated as 1.5 times the interquartile range added to the 75th quartile and subtracted from the 25th quartile.

15.  If the predicted function is:

    $$ \hat{y} = b_0 x^3 + b_1 x^2 + b_2 x + b_3 $$

    The method is:

- [ ] Multiple Linear Regression
- [x] Polynomial Regression
- [ ] Exponential Regression
- [ ] Linear regression

**Correct**
Correct! This method always has an exponent on one of the input values.

16.  Say you are trying to predict the price of a car based on its gas mileage, and you find an equation in terms of $  x $ to $ \hat{y} $ predict these values. What is this equation called?

- [ ] Multiple linear regression
- [x] Model estimator
- [ ] Coefficient of determination
- [ ] Mean square error

**Correct**
Correct! A mathematical equation with an input variable and an output variable used to predict values is called a model estimator.

17.  What does a residual plot help you determine?

- [x] It’s a visual way to see if a linear plot is appropriate.
- [ ] It’s a visual way to see if there is a pattern in your data set.
- [ ] It’s a visual way to see if your coefficients of determination are accurate.
- [ ] It’s a visual way to see if your model needs more input variables.

**Correct**
Correct! A residual plot is a visual way to see if a linear plot is appropriate.

18.  Say you have multiple polynomials that seem to fit your data. What type of graph can you use to help determine which order polynomial is the best fit for your data?

- [ ] The order of the polynomials on the x-axis, and the MSE on the y-axis with your training data set.
- [x] The order of the polynomials on the x-axis, and the MSE on the y-axis with your testing data set.
- [ ] The input values of your training data on the x-axis and their MSE values on the y-axis.
- [ ] The input values of your testing data on the x-axis and their MSE values on the y-axis.

**Correct**
Correct! A graph of MSE vs. order of the testing data set will help you determine which order polynomial is the best fit for your data.

19.  If your alpha value is large, what does that indicate?

- [ ] The bigger the alpha, the better the fit.
- [ ] Your model is overfitted.
- [x] Your model is underfitted.
- [ ] Your model needs to be a lower-order function.

**Correct**
Correct! A high alpha value indicates your model is underfitted.

20.  What is the primary purpose of the GridSearchCV() method?

- [ ] To split your data into folds, then iterate over the folds to train and test your model.
- [ ] To determine if you’ve underfit or overfit your data.
- [ ] To determine the appropriate order of a model.
- [x] To help select appropriate hyperparameter values.

**Correct**
Correct! The primary purpose of the GridSearchCV() method is to help select appropriate hyperparameter values.