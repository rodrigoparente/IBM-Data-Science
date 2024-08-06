# GridSearchCV: Hyperparameter Tuning in Machine Learning

 - GridSearchCV is a tool for hyperparameter tuning, that performs an exhaustive search over specified parameter values for an estimator;
 - It systematically evaluates each combination using cross-validation to identify the optimal settings that maximize model performance based on a scoring metric like accuracy or F1-score;
 - Hyperparameter tuning is crucial as it significantly impacts model performance, preventing underfitting or overfitting;- GridSearchCV automates this process, ensuring robust generalization on unseen data;
 - It helps data scientists efficiently find the best hyperparameters, saving time and resources while optimizing model performance, making it an essential tool in the machine learning pipeline.

# Parameters of GridSearchCV

There is two parameters that can be given to GridSearchCV, which are:

 - **Estimator:** the model or pipeline to be optimized, which can be any scikit-learn estimator like `LogisticRegression()`,`SVC()`, `RandomForestClassifier()`, etc;
 - **param_grid:** a dictionary or list of dictionaries with parameter names as keys and lists of parameter settings to try as values.
 - Below are examples of parameters that can be configured in the GridSearchCV.

**Logistic Regression** 

When tuning a logistic regression model, `GridSearchCV` can search through different values of `C`, `penalty`, and `solver` to find the best parameters.

```python
parameters = {
    'C': [0.01, 0.1, 1],
    'penalty': ['l2'],
    'solver': ['lbfgs']
}
```

Where:
 - `C`: inverse of regularization strength; smaller values specify stronger regularization;
 - `penalty`: specifies the norm of the penalty (`l2` is ridge regression);
 - `solver`: algorithm to use in the optimization problem.

**Support Vector Machine**

For SVM, GridSearchCV can explore different `kernels`, `C` values, and `gamma` settings to optimize the model.

```python
parameters = {
    'kernel': ['linear', 'rbf', 'poly', 'sigmoid'],
    'C': np.logspace(-3, 3, 5),
    'gamma': np.logspace(-3, 3, 5)
}
```

Where:
 - `kernel`: specifies the kernel type to be used in the algorithm;
 - `C`: regularization parameter;
 - `gamma`: kernel coefficient.

**Decision Tree Classifier**

In the case of a decision tree, GridSearchCV can test various such as `criteria`, `splitters`, and `depths` to determine the best model.

```python
parameters = {
    'criterion': ['gini', 'entropy'],
    'splitter': ['best', 'random'],
    'max_depth': [2*n for n in range(1, 10)],
    'max_features': ['auto', 'sqrt'],
    'min_samples_leaf': [1, 2, 4],
    'min_samples_split': [2, 5, 10]
}
```

where:
 - `criterion`: function to measure the quality of a split;
 - `splitter`: strategy used to choose the split at each node;
 - `max_depth`: maximum depth of the tree;
 - `max_features`: number of features to consider when looking for the best split;
 - `min_samples_leaf`: minimum number of samples required to be at a leaf node;
 - `min_samples_split`: minimum number of samples required to split an internal node.

**K-Nearest Neighbors**

For KNN, GridSearchCV can try different numbers of `neighbors`, `algorithms`, and `p` parameters to determine the best model.

```python
parameters = {
    'n_neighbors': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    'algorithm': ['auto', 'ball_tree', 'kd_tree', 'brute'],
    'p': [1, 2]
}
```

Where:
 - `n_neighbors`: number of neighbors to use;
 - `algorithm`: algorithm used to compute the nearest neighbors;
 - `p`: power parameter for the Minkowski metric.

# Applications and Advantages of GridSearchCV

 - GridSearchCV enables the comparison of multiple models and facilitates the selection of the best-performing one for a given dataset;
 - It automates the process of finding the optimal hyperparameters, which can significantly improve the performance of machine learning models;
 - GridSearchCV can be applied to complex pipelines involving multiple preprocessing steps and models to optimize the entire workflow;
 - It incorporates cross-validation in the parameter search process, ensuring that the model's performance is robust and not overfitted to a particular train-test split;
 - GridSearchCV performs an exhaustive search over the specified parameter grid, ensuring that the best combination of parameters is found;
 - With the `n_jobs` parameter, it can leverage multiple processors to speed up the search process;
 - By setting `refit=True`, GridSearchCV automatically refits the model with the best parameters on the entire data set, making it ready for use;
 - The `cv_results_` attribute provides detailed information about the performance of each parameter combination, including training and validation scores, which helps in understanding the model's behavior.

# Practical Example

Let us demonstrate the use of GridSearchCV with a practical example using the Iris data set. We will perform a grid search to find the optimal hyperparameters for a support vector classifier (SVC).

```python
import numpy as np
import pandas as pd
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.svm import SVC
from sklearn.metrics import classification_report

iris = load_iris()
X = iris.data
y = iris.target

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

param_grid = {
    'C': [0.1, 1, 10, 100],
    'gamma': [1, 0.1, 0.01, 0.001],
    'kernel': ['linear', 'rbf', 'poly']
}

svc = SVC()

grid_search = GridSearchCV(estimator=svc, param_grid=param_grid, scoring='accuracy', cv=5, n_jobs=-1, verbose=2)

grid_search.fit(X_train, y_train)

print("Best parameters found: ", grid_search.best_params_)
print("Best estimator: ", grid_search.best_estimator_)

y_pred = grid_search.best_estimator_.predict(X_test)

print(classification_report(y_test, y_pred))
```