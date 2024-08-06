# Support Vector Machine

 - A Support Vector Machine (SVM) is a supervised machine learning algorithm used for both classification and regression;
 - SVMs analyze data to classify it into different categories or predict continuous values (regression);
 - SVMs aim to find an optimal hyperplane (line or surface) that maximizes the margin between classes;
 - The margin is the distance between the hyperplane and the nearest data points of each class;
 - These data points that "support" or define the position of the hyperplane are called support vectors;
 - For non-linear data, SVMs use the "kernel trick" to implicitly map the data into higher-dimensional spaces where linear separation is possible;
 - Kernel functions includes (e.g., linear, polynomial, radial basis function) transform data for nonlinear classification;
 - The choice of kernel depends on data characteristics and the problem.
 - Below is a python example using scikit-learn:

    ```python
    from sklearn import svm
    from sklearn.model_selection import train_test_split
    from sklearn.metrics import accuracy_score
    import numpy as np

    # Generate some sample data
    X = np.array([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [1, 3], [2, 4], [3, 5]])
    y = np.array([0, 0, 0, 1, 1, 0, 1, 1])

    # Split the data
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # Create and train the SVM model
    model = svm.SVC(kernel='linear')
    model.fit(X_train, y_train)

    # Make predictions
    y_pred = model.predict(X_test)

    # Evaluate the model
    print("Accuracy:", accuracy_score(y_test, y_pred))

    # Predict for a new point
    new_point = np.array([[3.5, 4.5]])
    prediction = model.predict(new_point)
    print("Prediction for new point:", prediction)

    # Get support vectors
    print("Support vectors:")
    print(model.support_vectors_)
    ```
