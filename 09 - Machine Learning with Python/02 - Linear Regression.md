# Introduction to Regression 

 - Regression analysis is a statistical technique used to estimate the relationships between variables;
 - It helps us understand how a dependent variable (often called the "outcome" or "$Y$" variable) changes in response to changes in one or more independent variables (often called "features" or "$X$);
 - The most common form of regression analysis is linear regression, which aims to find a straight line (or a more complex linear combination) that best fits the data according to a specific mathematical criterion.
 - Regression can be divided into two categories:
    - **Simple linear regression:** focuses on estimating the relationship between two quantitative variables.
    - **Multiple linear regression:** extends simple regression by considering two or more independent variables along with one dependent variable.

# Simple Linear Regression

 - Simple linear regression is a statistical method used to model the relationship between two continuous (quantitative) variables;
 - We model this relationship using the equation:
    $$ Y = a + bX $$
    - $Y$ represents the dependent variable (e.g., blood pressure);
    - $X$ represents the independent variable (e.g., hours exercised);
    - $a$ is the y-intercept (blood pressure with zero hours exercised);
    - $b$ is the slope (how much the blood pressure reading changes for each additional hour exercised).
 - Therefore, our objective is to find the best-fitting line (or hyperplane in higher dimensions) that minimizes the average squared difference (or Mean Square Error) between the predicted values and the actual observed values in the dataset;
 - The Mean Square Error (MSE) quantifies how well our model fits the data and can be defined as:
    $$MSE = \frac{1}{n} \sum_{i=1}^{n} (Y_i - \hat{Y}_i)^2 $$
    - $n$ is the number of training examples;
    - $Y_i$ is the predicted value for the $i$-th example;
    - $\hat{Y}_i$ is the actual value for the $i$-th example.

# Model Evaluation in Regression Models

**Train and Test on the Same Dataset**

 - This refers to using the entire dataset for both training and testing a machine learning model;
 - While it's not recommended due to potential overfitting (the model memorizing the data), it can be useful for quick experimentation or when data is scarce;
 - However, it doesn't provide a reliable estimate of how well the model will perform on unseen data.

**Train/Test Split**

 - This involves dividing the dataset into two subsets:
    - **Training set**: used to train the model (usually 70-80% of the data);
    - **Test set**: used to evaluate the model's performance (remaining 20-30%).
 - It provides a basic way to assess model generalization by simulating how it performs on unseen data;
 - It's highly dependent on which datasets the model is trained and tested.

**k-Fold Cross-Validation**

 - It provides a more robust estimate of model performance and helps avoid overfitting;
 - Estimates model performance by repeatedly splitting the data into k subsets (folds);
 - Steps to perform a cross-validation:
    1. Randomly divide the dataset into k folds;
    2. Train the model on k-1 folds and evaluate it on the remaining fold (held-out set);
    3. Repeat this process k times, using a different fold as the test set each time;
    4. Average the results of all evaluations.
 
# Evaluation Metrics in Regression Models

**Mean Squared Error (MSE)**

 - Measures the average squared difference between predicted and actual values.
 - Lower MSE indicates better model fit.
 - Formula: 
    $$MSE = \frac{1}{n} \sum_{i=1}^{n} (Y_i - \hat{Y}_i)^2$$

**Root Mean Squared Error (RMSE)**

 - Similar to MSE but takes the square root.
 - Provides an interpretable metric in the original units of the dependent variable.
 - Formula:
    $$RMSE = \sqrt{MSE}$$

**Mean Absolute Error (MAE)**

 - Measures the average absolute difference between predicted and actual values.
 - Less sensitive to outliers than MSE.
 - Formula: 
    $$ MAE = \frac{1}{n} \sum_{i=1}^{n} |Y_i - \hat{Y}_i| $$

# Multiple Linear Regression

 - Multiple Linear Regression (MLR) is a statistical technique that uses several independent variables ($X$) to predict the outcome of a dependent variable ($Y$);
 - In other words, it extends simple linear regression to include multiple variables
 - The model can be expressed as:
    $$ \hat{Y} = \theta_0 + \theta_1X_1 + \theta_2X_2 + \ldots + \theta_nX_n $$
    - $\hat{Y}$ represents the dependent variable;
    - $X_1, X_2, \ldots, X_n$ are the independent variables;
    - $\theta_0, \theta_1, \ldots, \theta_n$ are the regression coefficients.
 - We find the values of $\theta$ using optimization algorithms (e.g., gradient descent).
