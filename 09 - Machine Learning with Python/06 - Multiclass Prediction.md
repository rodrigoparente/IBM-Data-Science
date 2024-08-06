# SoftMax Regression (Multinomial Logistic Regression)

 - SoftMax Regression is an extension of logistic regression for multi-class classification;
 - Instead of binary outcomes, it handles multiple classes by generalizing the logistic function to multiple classes;
 - Given a set of features $\mathbf{x}$, and $K$ classes, the probability that a sample $\mathbf{x}_i$ belongs to class $k_i$ is given by the SoftMax function:
    $$ P(y = k \mid \mathbf{x}) = \frac{e^{-\theta_i^T \mathbf{x}}}{\sum_{j=1}^K e^{-\theta_j^T \mathbf{x}}} $$
    were $\theta_k$ are the weights associated with class $k_i$
 - The training procedure is almost identical to logistic regression using cross-entropy, but the prediction is different;
 - Because the SoftMax function generates a probability of how likely the sample belongs to each class;
 - Below is a simple Python implementation of Multinomial Logistic Regression using the `scikit-learn` library:

    ```python
    from sklearn.linear_model import LogisticRegression

    # Create a SoftMax regression model
    softmax_model = LogisticRegression(multi_class='multinomial', solver='lbfgs')

    # Fit the model to the data
    softmax_model.fit(X_train, y_train)

    # Predict class probabilities
    y_pred_probs = softmax_model.predict_proba(X_test)

    # Predict class labels
    y_pred = softmax_model.predict(X_test)
    ```

# One vs. All (One-vs-Rest)

  - One-vs-All is a strategy for multi-class classification where a separate binary classifier is trained for each class;
  - For $K$ classes, train $K$ binary classifiers which are responsible to predict whether a sample belongs to class $k_i$ or not;
  - During prediction, each classifier outputs a score or probability, and the class with the highest score is selected as the final prediction;
 - Below is a simple Python implementation of One vs. All using the `scikit-learn` library:

    ```python
    from sklearn.multiclass import OneVsRestClassifier
    from sklearn.linear_model import LogisticRegression

    # Create a One-vs-All classifier
    ova_model = OneVsRestClassifier(LogisticRegression())

    # Fit the model to the data
    ova_model.fit(X_train, y_train)

    # Predict class labels
    y_pred = ova_model.predict(X_test)
    ```

# One-vs-One

 - One-vs-One is a strategy for multi-class classification where a separate binary classifier is trained for every pair of classes;
 - For $K$ classes, train $\frac{K(K-1)}{2}$ binary classifiers;
 - Each classifier is trained to distinguish between two classes;
 - During prediction, each classifier votes for one of the two classes it distinguishes. The class with the most votes is selected as the final result;
 - Below is a simple Python implementation of One vs. One using the `scikit-learn` library:

    ```python
    from sklearn.multiclass import OneVsOneClassifier
    from sklearn.linear_model import LogisticRegression

    # Create a One-vs-One classifier
    ovo_model = OneVsOneClassifier(LogisticRegression())

    # Fit the model to the data
    ovo_model.fit(X_train, y_train)

    # Predict class labels
    y_pred = ovo_model.predict(X_test)
    ```

These strategies enable logistic regression and other binary classifiers to handle multi-class classification problems effectively.