# Final Assignment

In this Assignment, you will demonstrate your understanding of the data science methodology by applying it to a given problem. Pick one of the following topics to apply the data science methodology to:

1. Emails
2. Hospitals
3. Credit Cards

You will have to play the role of the client as well as the data scientist to come up with a problem that is more specific but related to these topics.

## Which topic did you choose to apply the data science methodology to? (2 marks)

> Credit Cards

Next, you will play the role of the client and the data scientist. 

## Using the topic that you selected, complete the Business Understanding stage by coming up with a problem that you would like to solve and phrasing it in the form of a question that you will use data to answer. (3 marks)

You are required to:

**Describe the problem, related to the topic you selected.**

> The Credit Card Fraud Detection problem that involves identifying fraudulent operations from a pool of legitimate credit card transactions.

**Phrase the problem as a question to be answered using data.**

For example, using the food recipes use case discussed in the labs, the question that we defined was, *"Can we automatically determine the cuisine of a given dish based on its ingredients?"*.

> Can we automatically classicify/detect fraudulent credit card operations amongst the users legit transactions?

## Briefly explain how you would complete each of the following stages for the problem that you described in the Business Understanding stage, so that you are ultimately able to answer the question that you came up with. (5 marks):

**Analytic Approach**

> This is a classification problem where we want to classify a transaction as legit or fraudulent. We can use a supervised learning technique and one of the following algorithms: logistic regression, decision trees, support vector machines, neural networks, etc.

**Data Requirements**

> For the data required we can use, for example, the transaction amount, transaction frequency, transaction time, area code of the transaction, IP address, device ID, payment method, customer age, customer income, etc.

**Data Collection**

> This data can be collected from banking and financial institutions, payment processors, geolocation services, public datasets, etc.

**Data Understanding and Preparation**

> Once all the data is collected, we can start the Data Understanding process. In this step, we explore the data for insights. We can use plots like histograms and heatmaps to visualize data distributions and correlation analysis to identify relationships between variables. After understanding the data, we can begin the Data Preparation process. In this step, we can remove duplicates and missing values, normalize the attributes, encode categorical values, and split the data in train and test datasets.  

**Modeling and Evaluation**

> At this step, we can build the classification model using one of the algorithms mentioned before. The model will be trained on the training dataset and evaluated on the test dataset. If needed, we can modify the model parameters and retrain the model to achieve better results. In the evaluation process, it is important to assess the model's accuracy and validity and determine whether it sufficiently addresses the business problem.

**Deployment**

> The final step involves deploying the model into the operational environment. In this step, we have to train relevant personnel to use the model, collect feedback, and monitor the performance to adjust the model over time.                                         