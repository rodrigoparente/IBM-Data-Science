1. What does the following line of code do?

   `lm = LinearRegression()`

- [x] Creates a linear regression object and stores it in the lm variable.
- [ ] Assigns a linear regression model to the lm variable.
- [ ] Fits a regression object to the variable lm.
- [ ] Predicts output values of a linear regression object.

**Correct**
Correct! The LinearRegression() method is a constructor.

2. What steps do the following lines of code perform?

   ```python
   Input = [('scale', StandardScaler()), ('model', LinearRegression())] 
   pipe = Pipeline(Input)

   pipe.fit(Z, y)

   ypipe = pipe.predict(Z)
   ```

- [ ] Performs a polynomial transform on the features Z
- [ ] Calculates the Coefficient of Determination
- [ ] Finds the correlation between Z and y
- [x] Performs a prediction using a linear regression model

**Correct**  
This code standardizes a data set, fits a linear model, and then uses the model to predict values based on Z.

3. If X is a data frame with 100 rows and 5 columns, and y is the target with 100 samples, and assuming you have imported all the relevant libraries and data, and executed the following line of code:

   ```python
   LR = LinearRegression()

   LR.fit(X, y)

   yhat = LR.predict(X)
   ```

How many samples does `yhat` contain?

- [ ] 20
- [ ] 5
- [ ] 500
- [x] 100

**Correct**  
The variable `yhat` contains the predicted values from a linear regression model using the array X as its input.

4. Which statement about R², the coefficient of determination, is true?

- [x] Its value can be between 0 and 1 inclusive.
- [ ] Its value can be either 0 or 1.
- [ ] Its value can be any positive number.
- [ ] Its value can be in the range of -1 to 1, inclusive.

**Correct**
Correct! The coefficient of determination can be a minimum of 0 and a maximum of 1.

5. Consider the following equation:

   `y = b0 + b1 * x`

   The variable `y` is _________?

- [ ] The degree of the polynomial
- [ ] The predictor or independent variable
- [x] The target or dependent variable
- [ ] The intercept

**Correct**
Correct! The variable $y$ is the output variable, which depends on the values of the other variable $x$ and parameters $b_0$ and $b_1$.