
# Model Evaluation

 - Model evaluation assesses how well a trained machine learning model performs on unseen data;
 - Its purpose is to determine the model's accuracy, reliability, and suitability for the task;
 - The methods used in model evaluation are:
    - **Train/Test Split:** divide the dataset into training and testing subsets;
    - **Cross-Validation:** repeatedly split data into folds, train on some and test on others;
    - **Metrics:** common metrics include accuracy, precision, recall, F1-score, and ROC-AUC.

**Train/Test Sets**

 - The training dataset is used to train the model;
 - The test dataset is used to evaluate the model's performance;
 - You can split the dataset using the `train_test_split()` function from the scikit-learn library:

    ```python
    from sklearn.model_selection import train_test_split

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    ```

**Generalization Performance**

 - The generalization performance measures how well the model performs on new, unseen data;
 - There are three types of generalization:
    - **Overfitting:** when the model learns the training data too well but fails on test data;
    - **Underfitting:** when the model is too simple and performs poorly on both training and test data;
    - **Balancing Act:** aim for a model that generalizes well without overfitting or underfitting.

**Cross-Validation**

 - Cross-validation is a technique to assess model performance using multiple train/test splits;
 - This technique split the data into K folds, training the model on K-1 folds, test on the remaining fold;
 - The process is repeated K times, averaging the performance metrics;
 - You can perform cross validation using the `cross_val_score` function from the scikit-learn library:

    ```python
    from sklearn.model_selection import cross_val_score
    from sklearn.linear_model import LogisticRegression

    model = LogisticRegression()
    cv_scores = cross_val_score(model, X, y, cv=5)  # 5-fold cross-validation
    mean_accuracy = cv_scores.mean()
    ```

# Model Selection for a Polynomial Regression

 - The goal is to determine the optimal polynomial order for accurate function estimation;
 - Underfitting occurs when the model is too simple to fit the data, resulting in high errors;
 - Overfitting occurs when the model is too flexible and fits noise rather than the function;
 - Plotting Mean Square Error (MSE) or the R-squared (R²) against polynomial order helps identify the best model;
 - The optimal order minimizes test error, balancing bias and variance;
 - Usually the sources errors are because the:
    - Noise in the data that cannot be predicted (irreducible error);
    - Polynomial may not match the true underlying function (nncorrect assumptions);
    - Real-world data may not align with the chosen model (lack of relevant data).
 - Following is an example of a Python code to calculate the R² score for diferent polynomial orders:
    
    ```python
    import numpy as np
    from sklearn.preprocessing import PolynomialFeatures
    from sklearn.linear_model import LinearRegression
    from sklearn.metrics import r2_score
    
    # Assume you have X_train, y_train, X_test, y_test already defined
    
    # Create an empty list to store R^2 values
    r2_values = []
    
    # Define different polynomial orders (e.g., 1, 2, 3, ...)
    polynomial_orders = [1, 2, 3, 4, 5]
    
    for order in polynomial_orders:
        # Create a polynomial feature object
        poly = PolynomialFeatures(degree=order)

        # Transform the training and test data into polynomial features
        X_train_poly = poly.fit_transform(X_train)
        X_test_poly = poly.transform(X_test)

        # Fit a linear regression model
        model = LinearRegression()
        model.fit(X_train_poly, y_train)

        # Predict using the test data
        y_pred = model.predict(X_test_poly)

        # Calculate R^2 and store it in the array
        r2 = r2_score(y_test, y_pred)
        r2_values.append(r2)
    
    # Print the R^2 values for different polynomial orders
    for order, r2 in zip(polynomial_orders, r2_values):
        print(f"Order {order}: R^2 = {r2:.4f}")
    ```

# Ridge Regression or L2 regularization

 - Ridge regression is a linear regression technique that adds a penalty term to the loss function;
 - The goal is to minimize the sum of squared errors (SSE) between observed and predicted values while considering the interaction and influence of multiple input variables on the target variable;
 - The penalty term is the weighted sum of the squares of all the coefficients $\alpha$, which helps prevent overfitting;
 - Ridge regression encourages smaller coefficient $\alpha$ values;
 - Following there is an example of L2 Regression using the `Ridge()` class from scikit-learn library:

    ```python
    from sklearn.linear_model import Ridge
    from sklearn.datasets import load_diabetes
    from sklearn.model_selection import train_test_split
    from sklearn.metrics import mean_squared_error
    
    # Load a sample dataset (e.g., diabetes dataset)
    X, y = load_diabetes(return_X_y=True)
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    
    # Create a Ridge regression model
    alpha = 0.1  # Regularization strength (adjust as needed)
    ridge_model = Ridge(alpha=alpha)
    
    # Fit the model to the training data
    ridge_model.fit(X_train, y_train)
    
    # Make predictions
    y_pred = ridge_model.predict(X_test)
    
    # Evaluate the model
    mse = mean_squared_error(y_test, y_pred)
    print(f"Mean Squared Error (Ridge): {mse:.2f}")
    ```

# Grid Search

 - Grid search is a model hyperparameter optimization technique;
 - The goal is to determine the best hyperparameter values that result in improved model performance;
 - Grid search performs an exhaustive search over specified parameter values for an estimator;
 - It evaluates each combination using cross-validation and returns the best hyperparameter combination based on the chosen performance metric;
 - Following is an example of using the `GridSearchCV` class from scikit-learn library:

    - **Python Example using scikit-learn (GridSearchCV):**
    ```python
    from sklearn.model_selection import GridSearchCV
    from sklearn.ensemble import RandomForestClassifier
    from sklearn.datasets import load_iris
    from sklearn.model_selection import train_test_split
    
    # Load a sample dataset (e.g., Iris dataset)
    X, y = load_iris(return_X_y=True)
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    
    # Define hyperparameter grid
    param_grid = {
        'n_estimators': [50, 100, 200],
        'max_depth': [None, 10, 20],
        'min_samples_split': [2, 5, 10]
    }
    
    # Create a RandomForestClassifier
    rf_model = RandomForestClassifier()
    
    # Perform grid search
    grid_search = GridSearchCV(estimator=rf_model, param_grid=param_grid, cv=5)
    grid_search.fit(X_train, y_train)
    
    # Get best hyperparameters
    best_params = grid_search.best_params_
    print(f"Best Hyperparameters: {best_params}")
    
    # Evaluate the model with best hyperparameters
    best_model = grid_search.best_estimator_
    accuracy = best_model.score(X_test, y_test)
    print(f"Test Accuracy: {accuracy:.2f}")
    ```

# Summary

 - Model evaluation assesses how well a trained machine learning model performs on unseen data;
 - The generalization performance measures how well the model performs on new, unseen data;
 - Cross-validation is a technique to assess model performance using multiple train/test splits;
 - Grid search is a model hyperparameter optimization technique;

# Glossary