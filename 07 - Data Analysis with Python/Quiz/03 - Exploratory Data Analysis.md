1. What method provides summary statistics of a data frame?

- [ ] head()
- [x] describe()
- [ ] summary()
- [ ] tail()

**Correct**  
Correct! The `describe` method provides summary statistics.

2. As the Pearson Correlation value nears zero, then ...

- [x] It indicates that two variables are not correlated
- [ ] It indicates minimal deviation in a variable's values from the mean
- [ ] It indicates the mean of the data is near zero
- [ ] It indicates uncertainty about the correlation between two variables

**Correct**  
Correct! The Pearson Correlation indicates the strength of the correlation between two variables.

3. What range of Pearson Coefficient ‘p’ is considered too high to support any certainty about the correlation of variables?

- [m] p > 0.1
- [ ] 0.001 < p < 0.05
- [ ] 0.05 < p < 0.1
- [ ] p < 0.001

**Correct**
Correct! p > 0.1 indicates that there is no evidence to support any correlation between the variables.

4. Consider the following data frame:

   `df_test = df[['body-style', 'price']]`

   The following operation is applied:

   `df_grp = df_test.groupby(['body-style'], as_index=False).mean()`

   What are the resulting values of: `df_grp['price']`?

- [ ] The average price
- [ ] It writes the mean value of each body style price to the data frame.
- [x] It averages the price for each body style
- [ ] It averages the body-style variable data values.

**Correct**  
Correct! The `groupby.mean()` method finds the means of different groups of values.

5. What is the Pearson Correlation between two variables if the input variable is equal to the output variable?

- [ ] Between 0 and 1
- [ ] -1
- [ ] Between -1 and 0
- [x] 1

**Correct**  
Correct! The closer the Pearson Correlation is to 1, the stronger the correlation between input and output. If the values are equal, then 1 indicates the strongest relationship possible.