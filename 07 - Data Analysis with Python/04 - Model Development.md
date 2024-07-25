# Linear Regression and Multiple Linear Regression

- Linear Regression models the relationship between one or more independent variables to a dependent variable;
- Uses a linear equation: 
    - $Y = a * X + b$, where $Y$ is the dependent variable, $X$ is the independent variable, $a$ is the slope, and $b$ is the y-intercept;
- Linear Regression aims to find the "best fit" line that minimizes the distance between the line and all data points;
- The slope ($a$) indicates how much $Y$ changes when $X$ changes;
- Linear Regression can be used for prediction and understanding relationships between variables;
- Simple linear regression involves one independent variable; multiple linear regression involves more than one;
- Commonly used in various fields like finance, medicine, and environmental science for predictive analysis.

# Model Evaluation using Visualization

**Regression Plots**

 - Regression plots show the relationship between two continuous variables. They help visualize how one variable (the independent variable) affects another (the dependent variable);
 - Common types of regression plots include scatter plots, line plots, and joint plots;
 - Seaborn code to plot a scatter plot with a regression line:

 ```python
 import seaborn as sns
 sns.regplot(x="independent_variable", y="dependent_variable", data=df)
 ```

**Residual Plots**

 - Residual plots shows the residuals (differences between observed and predicted values) on the vertical axis and the independent variable on the horizontal axis;
 - If the residuals are randomly dispersed around the horizontal axis, it suggests that a linear regression model is appropriate for the data;
 - Conversely, if there are patterns or trends in the residuals, it indicates that a nonlinear model might be more suitable;
 - Seaborn code to plot a residual plot:

 ```python
 import seaborn as sns
 sns.residplot(x="independent_variable", y="residuals", data=df)
 ```

**Distribution Plots**

 - Distribution plots show the distribution of a single variable;
 - Common types include histograms, kernel density plots, and box plots;
 - Seaborn code to plot a histogram:
 
 ```python
 import seaborn as sns
 sns.histplot(data=df, x="variable_of_interest", kde=True)
 ```
 - Seaborn code to plot a kernel density plot:
 
 ```python
 import seaborn as sns
 sns.kdeplot(data=df, x="variable_of_interest")
 ```
 
 - Seaborn code to plot a box plot:

 ```python
 import seaborn as sns
 sns.boxplot(data=df, x="categorical_variable", y="numeric_variable")
 ```

# Polynomial Regression
   
 - Polynomial regression is a technique used when the relationship between the independent and dependent variables is nonlinear;
 - The polynomial regression equation takes the form:
    $$ Y = \beta_0 + \beta_1X + \beta_2X^2 + \ldots + \beta_hX^h + \varepsilon $$
    where:
    - $Y$ is the dependent variable;
    - $X$ represents the independent variable;
    - $\beta_i$ are the coefficients;
    - $h$ is the degree of the polynomial;
 - It allows us to model curved relationships by introducing higher-order terms (e.g., quadratic, cubic) into the regression equation;
 - Example code for fitting a quadratic polynomial:

    ```python
    import numpy as np
    from sklearn.preprocessing import PolynomialFeatures
    from sklearn.linear_model import LinearRegression

    # Generate some example data
    X = np.arange(6).reshape(3, 2)
    y = np.array([1, 4, 5])

    # Create polynomial features (degree=2)
    poly = PolynomialFeatures(degree=2)
    X_poly = poly.fit_transform(X)

    # Fit a linear regression model
    model = LinearRegression()
    model.fit(X_poly, y)
    ```

# Pipelines in scikit-learn

 - Pipelines allow you to sequentially apply a list of transformers to preprocess data;
 - Intermediate steps in the pipeline must be "transforms" (implementing `fit` and `transform` methods);
 - The final estimator only needs to implement `fit`;
 - Example code for creating a simple pipeline:

    ```python
    from sklearn.preprocessing import StandardScaler
    from sklearn.svm import SVC
    from sklearn.datasets import make_classification
    from sklearn.model_selection import train_test_split
    from sklearn.pipeline import Pipeline

    # Generate synthetic data
    X, y = make_classification(random_state=0)
    X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0)

    # Create a pipeline with scaling and SVM
    pipe = Pipeline([
        ('scaler', StandardScaler()),
        ('svc', SVC())
    ])

    # Fit the pipeline and evaluate on the test set
    pipe.fit(X_train, y_train)
    accuracy = pipe.score(X_test, y_test)
    print(f"Accuracy: {accuracy:.2f}")
    ```

# Measures for In-Sample Evaluation

 - Measures for In-Sample Evaluation is the process of assessing the performance of a model using data that was part of the original dataset (i.e., the same data used for training);
 - It provides insights into the model's ability to capture patterns, relationships, and historical trends;
 - Some commonly used measures for in-sample evaluation are:

**Mean Squared Error (MSE)**

 - The MSE quantifies the average squared difference between predicted values and actual values in a dataset;
 - It's a common metric for assessing regression model performance;
 - Formula:
    $$ \text{MSE} = \frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2 $$
    where:
    - $n$ is the sample size;
    - $y_i$ is the observed value for the $i$th observation;
    - $\hat{y}_i$ is the predicted value for the $i$th observation.
- Example code using scikit-learn:

    ```python
    from sklearn.metrics import mean_squared_error

    y_true = [3, -0.5, 2, 7]
    y_pred = [2.5, 0.0, 2, 8]
    mse = mean_squared_error(y_true, y_pred)
    print(f"MSE: {mse:.3f}")
    ```

**R-squared (R²)**

 - R² measures how well the model explains the variance in the dependent variable;
 - It ranges from 0 to 1, with higher values indicating better fit;
 - Formula:
     $$ R^2 = 1 - \frac{\text{SSR}}{\text{SST}} $$
     where:
     - SSR (Sum of Squared Residuals) represents the sum of squared differences between predicted and actual values;
     - SST (Total Sum of Squares) represents the total variance in the dependent variable.
 - Example code using scikit-learn:
    
    ```python
    from sklearn.metrics import r2_score

    r2 = r2_score(y_true, y_pred)
    print(f"R-squared (R²): {r2:.3f}")
    ```

# Prediction and Decision Making


# Summary


- Linear Regression models the relationship between one or more independent variables to a dependent variable;
- Different kinds of plots (e.g., regression, residual, and distribution plots) can be used to a evaluate a model's performance;
- Polynomial regression is a technique used when the relationship between the independent and dependent variables is nonlinear;
- Pipelines allow you to sequentially apply a list of transformers to preprocess data;
- Measures for In-Sample Evaluation is the process of assessing the performance of a model using data that was part of the original dataset (i.e., the same data used for training).

# Glossary