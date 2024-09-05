1. What can we infer about our kNN model when the value of K is too big?

- [ ] The model will capture a lot of noise as a result of overfitting.
- [ ] The training accuracy will be high, while the out-of-sample accuracy will be low.
- [x] The model is overly generalized and underfitted to the data.
- [ ] The model will be too complex and not interpretable.

2. When splitting data into branches for a decision tree, what kind of feature is favored and chosen first?

- [ ] The feature with the greatest number of categories.
- [ ] The feature that increases entropy in the tree nodes.
- [ ] The feature that splits the data equally into groups.
- [x] The feature that increases purity in the tree nodes.

3. What is the relationship between entropy and information gain?

- [ ] When information gain decreases, entropy decreases.
- [ ] High entropy and low information gain is desired.
- [ ] High entropy and high information gain is desired.
- [x] When information gain increases, entropy decreases.

4. Predicting whether a customer responds to a particular advertising campaign or not is an example of what?

- [x] Classification problem
- [ ] Machine learning
- [ ] Regression
- [ ] None of the above

5. For a new observation, how do we predict its response value (categorical) using a KNN model with k=5?

- [ ] Form 5 clusters and assign the new observation to the most similar cluster, taking the mean value as prediction.
- [ ] Take the average among 5 points whose features are closest to the new observation.
- [ ] Take the majority vote among 5 points who are the most similar to each other.
- [x] Take majority vote among 5 points whose features are closest to the new observation.