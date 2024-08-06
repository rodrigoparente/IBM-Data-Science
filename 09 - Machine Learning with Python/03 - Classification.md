# Introduction to Classification

 - classification refers to the process of assigning predefined labels or categories to data points based on their features or attributes;
 - It's a supervised machine learning task where the goal is to learn a mapping from input features to output classes. 
 - The two most commom types of classification are:
    - **Binary classification:** were the data is classified into two classes (e.g., spam vs. not spam, positive vs. negative sentiment);
    - **Multiclass classification:** were the data is classified into more than two classes (e.g., classifying animals into cat, dog, or bird).

# K-Nearest Neighbours

 - The k-nearest neighbors (k-NN) algorithm is a supervised learning method used for both classification and regression;
 - Given a set of labeled training examples, each with feature vectors and class labels, k-NN classifies an unlabeled  point by considering its k closest neighbors;
 - The class assigned to the unlabeled point is determined by a majority vote among its k nearest neighbors.
 - Distance metrics (e.g., Euclidean distance) measure the proximity between data points;
 - As k-NN relies on distance, so normalizing features (especially when they have different scales) can improve accuracy.

# Decision Trees

 - Decision Trees are a popular machine learning algorithm used for both classification and regression tasks;
 - They are a type of supervised learning method that works by recursively splitting the data based on feature values to create a tree-like structure for making predictions;
 - The algorithm typically follows these steps:
   - Select the best feature to split the data;
   - Split the data into subsets based on the selected feature;
   - Repeat steps 1 and 2 for each subset until a stopping criterion is met.
 - To determine the best feature for splitting, various metrics are used:
   - For Classification:
      - Gini Impurity;
      - Entropy and Information Gain.
   - For Regression:
      - Mean Squared Error (MSE);
      - Mean Absolute Error (MAE).
 - Decision Trees have several advantages, including interpretability, handling of both numerical and categorical data, and the ability to capture non-linear relationships;
 - However, they can be prone to overfitting, especially when the tree grows too deep.

# Evaluation Metrics in Classification

**Jaccard Index (Jaccard Similarity Coefficient)**

 - The Jaccard index, also known as the Jaccard similarity coefficient, measures the similarity between two sets;
 - In classification, it quantifies the agreement between predicted labels and true labels;
 - Mathematically, the Jaccard index ($J$) is defined as:
 
    $$ J(A, B) = \frac{|A \cap B|}{|A \cup B|} $$

    where:
    - $A$ represents the set of true positive instances;
    - $B$ represents the set of predicted positive instances.
 
 - It ranges from 0 (no overlap) to 1 (perfect overlap).
 - In Python (using scikit-learn), you can compute the Jaccard score as follows:
 
    ```python
    from sklearn.metrics import jaccard_score

    y_true = [1, 0, 1, 0]
    y_pred = [1, 1, 0, 1]
    jaccard = jaccard_score(y_true, y_pred)
    print(f"Jaccard score: {jaccard:.4f}")
    ```

**F1-Score**

 - The F1-score combines precision and recall into a single metric;
 - It balances precision (correctly predicted positive instances) and recall (true positive rate);
 - Mathematically, the F1-score is the harmonic mean of precision ($P$) and recall ($R$):
 
    $$ F1 = \frac{2 \cdot P \cdot R}{P + R} $$
 
 - It ranges from $0$ (worst) to $1$ (best);
 - In Python (using scikit-learn), you can compute the F1-score as follows:

    ```python
    from sklearn.metrics import f1_score

    f1 = f1_score(y_true, y_pred)
    print(f"F1-score: {f1:.4f}")
    ```

**Log Loss (Logarithmic Loss)**

 - Log loss quantifies the accuracy of predicted probabilities;
 - It penalizes confident wrong predictions;
 - For binary classification with true label $y$ and predicted probability $p$, the log loss per sample is:
 
    $$ \text{Log Loss} = -\left(y \cdot \log(p) + (1 - y) \cdot \log(1 - p)\right) $$

    where:
    - $y \in \{0, 1\}$
    - $p = \operatorname{Pr}(y = 1)$
 
 - Lower log loss values indicate better model performance;
 - In Python (using scikit-learn), you can compute the Log Loss as follows:

    ```python
    from sklearn.metrics import log_loss

    y_true_probs = [0.8, 0.2, 0.6, 0.9]
    logloss = log_loss(y_true, y_true_probs)
    print(f"Log Loss: {logloss:.4f}")
    ```