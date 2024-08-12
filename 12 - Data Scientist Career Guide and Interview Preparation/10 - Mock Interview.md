# Data Science Mock Interview

**Participants**

- **Cindy**: Candidate for the Data Scientist position
- **Antonio Cangiano**: Skills Network Engineering Manager and AI specialist at IBM

---

**Antonio**: Nice to meet you, Cindy. My name is Antonio Cangiano, and I'm a manager here at IBM. If you were hired for this position, I would be your manager. Why don’t we start with you introducing yourself and telling me a little bit about how you got started with data science?

**Cindy**: Yeah, for sure! My name is Cindy, and I’ve just finished my third year at the University of Toronto studying data science. It’s quite interesting because I had no prior experience in the field. However, after an internship two summers ago, where I developed a classification regression tree, I was introduced to machine learning and data science. I also learned about different types of data visualizations, and I really wanted to use my knowledge in this field to improve user experience for products and services.

---

**Antonio**: Awesome! R and Python are two of the most popular languages for data science. Why would I use one over the other?

**Cindy**: There’s quite a difference between the two programming languages. I believe R excels in statistical modeling. For example, it’s great for implementing simulations for theoretical statistics, like Monte Carlo or calculating standard errors using Jackknife estimators. After working on several projects in R, I found it excellent for data visualization because packages like ggplot and Plotly make it easy to implement different types of graphs in a very readable way. On the other hand, Python is more general-purpose and stands strong in machine learning and deep learning, with packages like Scikit-learn, TensorFlow, and PyTorch developed mainly for it. This allows users to experiment with models easily by changing just a few parameters.

---

**Antonio**: You mentioned some of the plots you can do in R. Do you know what a box plot is?

**Cindy**: Yes, for sure! A box plot visually represents different quantiles of the data. For example, if you have a feature like price, it shows the 50th percentile (the median) and potential outliers through points on the top and bottom.

---

**Antonio**: Do you know the difference between supervised and unsupervised learning?

**Cindy**: Yes! The main difference is that supervised learning uses labeled data, while unsupervised learning does not. A classic example of supervised learning is a classification tree, where you predict a specific target, like price, using different features. In contrast, unsupervised learning discovers unknown features in the dataset, grouping data points into clusters, like in k-means clustering.

---

**Antonio**: Imagine you have a model with 90% accuracy on the training set but only 50% accuracy on the test set. What do you think is the problem?

**Cindy**: I believe the model is overfitting on the training set. Possible causes include an excessively high proportion of data assigned to training or incorrect hyperparameters. Solutions could involve adjusting the training/test set ratio or using a separate validation set to tune the hyperparameters.

---

**Antonio**: What are the dangers of underfitting?

**Cindy**: The dangers of underfitting are that the model fails to learn effectively from the training set, resulting in poor performance on both the training and test sets.

---

**Antonio**: What metric would you use to evaluate an unbalanced dataset for classification if false negatives didn’t matter?

**Cindy**: In that case, I would focus on metrics related to the positives, such as precision, which calculates the percentage of data points classified as positive that are actually positive. Recall, or sensitivity, is another metric to consider, as it calculates the number of correctly classified positive values. The F-score could also be useful for balancing both precision and recall.

---

**Antonio**: Ridge regression and linear regression are two popular types of regression. Can you tell me about the difference between the two?

**Cindy**: Sure! Ridge regression includes a penalty term that is the sum of squares of the coefficients in a linear function, while linear regression does not. As a result, ridge regression is less vulnerable to random noise in the dataset and helps prevent overfitting, which linear regression may not do.

---

**Antonio**: What is the implication for cost on training data?

**Cindy**: I’m not entirely sure. My educated guess is that the cost of linear regression is lower because it doesn’t involve a penalty term, which can lead to longer training times as the model keeps adjusting to minimize that penalty.

---

**Antonio**: Imagine a model that always outputs the number four. What would be the variance?

**Cindy**: The variance would be zero because the model does not depend on the training set at all.

---

**Antonio**: How would you approximately solve a linear system of three equations and two unknowns?

**Cindy**: Since it’s an overdetermined system, we could use least squares to approximate a solution. This method minimizes the difference between the output of our linear equations and the actual values.

---

**Antonio**: Can you tell me about a project that you’re very proud of?

**Cindy**: This past semester, I worked with three other students on a project to determine if a company's devices were biased against certain populations. We started with a vague question, “Are our devices racist or discriminatory?” and had to decide on the variables and models to use. It was rewarding to collaborate and hear different perspectives, which opened up more effective ways to approach the problem.

---

**Antonio**: What was your individual contribution to determining bias in these devices?

**Cindy**: I was mainly responsible for data cleaning and feature engineering. We extracted data from an API and converted it into a usable format for modeling. I also identified useful features for analysis.

---

**Antonio**: Did you face any challenges in the project?

**Cindy**: While the coding aspect was manageable, the challenge was in the preliminary stages of identifying useful data and deciding which variables to include or drop.

---

**Antonio**: Did you use Python for this project?

**Cindy**: I actually used R. We utilized the tidyverse for data cleaning and ggplot for visualizing variables.

---

**Antonio**: Are you familiar with SQL?

**Cindy**: Yes, I’ve taken a class on SQL.

---

**Antonio**: Can you explain the difference between inner and outer joins?

**Cindy**: An INNER JOIN involves taking the intersection of two datasets, so you won’t have any missing values if both datasets are complete. An OUTER JOIN takes the union, which can result in missing values if one dataset lacks certain entries.

---

**Antonio**: If I’m returning many results but only want the first ten, what clause would I use?

**Cindy**: You can use the LIMIT clause, like “LIMIT 10,” to retrieve only ten records.

---

**Antonio**: What are some of your favorite data science tools that you’ve used in the past?

**Cindy**: I really like R Studio and Watson Studio. R Studio is great for R and offers many functions, while Watson Studio is excellent for collaboration, especially with people who aren’t familiar with Git.

---

**Antonio**: Thank you very much for your time, Cindy. We’re still interviewing, but I think we’ll most likely invite you for a second interview. This next one will focus on soft skills and is more of an opportunity for you to learn about our team. 

**Cindy**: That’s really great to hear. Thank you for the opportunity!

**Antonio**: Likewise. Thank you!

---