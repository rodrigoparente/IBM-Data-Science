
1. Which of the following methods should you use to replace a missing value of an attribute with continuous values?

- [x] Use the average of the other values in the column
- [ ] Use an educated guess
- [ ] Use the mean square error of the other data in the column
- [ ] Use the difference between the minimum and maximum values of the other data in the column

**Correct**  
Correct! The average is often a good choice to fill in a missing value for an attribute with continuous values.

2. Which of the following helps you decide on bin values when pre-processing data?

- [ ] Divide the average by the standard deviation
- [ ] Convert objects to ints
- [ ] Use the interquartile range
- [x] Visualize the distribution using a histogram

**Correct**  
Correct! Creating a histogram of values can help you decide how to group your data.

3. Which of the following data types should numbers with decimals be if you want to use them as input for training a statistical model?

- [x] float
- [ ] int
- [ ] object
- [ ] data frame

**Correct**  
Correct! Statistical models mostly take numerical values as inputs, and since these values contain decimals, float is the best type to use.

4. Which of the following is the primary purpose of simple feature scaling?

- [ ] To get rid of “not a number” or NaN values
- [ ] So all the variables have a similar influence on the models you build
- [x] To make comparing and analyzing values easier.
- [ ] It brings data into a common standard of expression

**Correct**  
Correct! Simple feature scaling is a way to normalize your data, making the range of values for a variable consistent and thus easier to analyze.

5. Which of the following is the primary purpose of the `get_dummies()` method?

- [x] Converts categorical values into numerical ones
- [ ] Converts numerical values into categorical ones
- [ ] To help you group your data into bins
- [ ] Converts the data’s data type

**Correct**  
Correct! It creates a separate column with names as the entries of the variable’s categorical values. It assigns numerical values to each column based on the value of the actual attribute.