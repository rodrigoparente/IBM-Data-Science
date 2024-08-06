# Intro to Logistic Regression

 - Logistic Regression (LR) is a statistical method used for binary or multiclass classification problems;
 - Despite its name, it's a classification algorithm rather than a regression algorithm;
 - It's used to predict an outcome (e.g., Yes or No) given a set of independent variables;
 - LR uses a sigmoid function to map any real-valued number to a value between 0 and 1;
 - The sigmoid function can be represented as:
    $$ σ(z) = 1 / (1 + e^(-z)) $$
    where:
    - $z$ is the input to the function (often a linear combination of features).

**Problems Solved**

 - Logistic Regression can be used to predict, e.g., the:
    - probability of a person having a heart attack;
    - mortality in injured patients;
    - probability of failure of a given process or product;
    - likelihood of a homeowner defaulting on a mortgage.

**When to Use**

 - Logistic Regression can be used when:
    - your data is binary (e.g.,Yes or No);
    - you need probabilistic results.
    - you need a linear decision boundary;
    - you need to understand the impact of a feature (on dependent variable).

# Logistic Regression Training

 - The Logistic Regression training process involves finding the optimal parameters (coefficients and intercept) that best fit the training data;
 - The steps of LR training are:

    1. Initialize the model parameters (weights and bias) randomly or with zeros;
    2. Define the Logistic Function:

        $$ \theta(z) = \dfrac{1}{(1 + e^{-z})} $$
    
        where $z = w^T x + b$
    3. Define the cost function for logistic regression:

        $$ J(\theta) = -\dfrac{1}{m} \sum^m_{i-1} \bigg( y_i \times log(h(x_i) + (1 - y_i) \times log(1 - h(x_i) \bigg)$$

        where:
        - $m$ is the number of training examples
        - $y_i$ is the true label (0 or 1)
        - $h(x_i)$ is the predicted probability (output of the logistic function)

    4. Minimize the cost function using an iterative optimization algorithm such as gradient descent:
        - Compute the gradients:
            
            $$ \dfrac{∂J}{∂w_j} = \dfrac{1}{m} \sum \bigg[(h(x_i) - y_i) \times x_{i,j}\bigg] $$

        - Update the parameters:
            
            $$ w_j := w_j - α \times \dfrac{∂J}{∂w_j} $$
            
            $$ b := b - α \times \dfrac{∂J}{∂b} $$
      
            where α is the learning rate

    5. Repeat step 4 for a fixed number of iterations or until convergence.
