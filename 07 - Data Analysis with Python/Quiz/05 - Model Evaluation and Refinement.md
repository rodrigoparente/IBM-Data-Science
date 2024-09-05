1. What is the result of the following code?

   `cross_val_predict(lr2e, x_data, y_data, cv=3)`

- [x] The predicted values of the test data using cross-validation
- [ ] The average R2 on the test data for each of the two folds
- [ ] Calculates the free parameter alpha
- [ ] Performs multiple out-of-sample evaluations

**Correct**
Correct! The method `cross_val_predict()` predicts values using cross-validation.

2. How would you organize the values 1, 10, and 100 as possible values of alpha for Grid Search?

- [ ] `parameter = alpha(1,10,100)`
- [x] `parameter = [{'alpha': [1,10,100]}]`
- [ ] `parameter = Ridge(alpha=[1,10,100])`
- [ ] `parameter=[1,10,100]`

**Correct**
Correct! This is the correct syntax to create the variable ‘parameter’ for Grid Search.

3. You do the following steps with a data set:

    1. Divide a data set into testing and training sets.
    2. Create a linear model with the training set.
    3. Find the average R2 value on your training data. It is found to be 0.5.
    4. Perform a 100th-order polynomial transform on your data.
    5. Use these transformed values to train another model.
    6. Find the new value for R2. It is found to be 0.99.

   Which of the statements is correct?

- [ ] 100-th order polynomial will work better on the rest of your data
- [ ] You should use the simpler model
- [ ] Create another linear model with all of the data and compare results
- [x] You should use your test data to test the model further

**Correct**
Correct! The results of your training data are not the best indicator of how your model performs.

4. What is the purpose of “folding” your data sets?

- [ ] Folding is used primarily for polynomial transformations
- [ ] To find the actual predicted values of the model before calculating R2
- [ ] To find R2 values on a training set and a test set of data
- [x] Folds are used for cross-validation

**Correct**
Correct! By creating folds, you iterate on your training and testing data using different combinations of the data set and compare results.

5. In the following image, the blue curve represents a model, the blue dots represent the data, and the orange curve represents the true function. Which of the following is true about the model?

- [ ] No conclusions can be drawn about the model
- [x] It displays overfitting
- [ ] The model is a good fit
- [ ] It displays underfitting

**Correct**
Correct! Although the model tracks the training points, it does poorly at tracking the function that generated those points.