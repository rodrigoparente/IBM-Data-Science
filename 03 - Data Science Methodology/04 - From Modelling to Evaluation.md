# Modeling Concepts

 - Modelling focuses on developing models that are either descriptive or predictive;
 - An example of a descriptive model might examine things like: if a person did this, then they're likely to prefer that;
 - A predictive model tries to yield yes/no, or stop/go type outcomes;
 - These models are based on the analytic approach that was taken, either statistically driven or machine learning driven;
 - The data scientist will use a training set, is a set of historical data in which the outcomes are already known, for predictive modelling;
 - In this stage, the data scientist will play around with different algorithms to ensure that the variables in play are actually required;

**Case Study**

With a prepared training set, the first decision tree classification model for congestive heart failure readmission can be built. We are looking for patients with high-risk readmission, so the outcome of interest will be congestive heart failure readmission equals "yes". In this first model, overall accuracy in classifying the yes and no outcomes was 85%. This sounds good, but it represents only 45% of the "yes". The actual readmissions are correctly classified, meaning that the model is not very accurate. The question then becomes: How could the accuracy of the model be improved in predicting the yes outcome? For decision tree classification, the best parameter to adjust is the relative cost of misclassified yes and no outcomes. Think of it like this: When a true, non-readmission is misclassified, and action is taken to reduce that patient's risk, the cost of that error is the wasted intervention. A statistician calls this a type I error, or a false-positive. But when a true readmission is misclassified, and no action is taken to reduce that risk, then the cost of that error is the readmission and all its attended costs, plus the trauma to the patient. This is a type II error, or a false-negative. So we can see that the costs of the two different kinds of misclassification errors can be quite different. For this reason, it's reasonable to adjust the relative weights of misclassifying the yes and no outcomes. The default is 1-to-1, but the decision tree algorithm, allows the setting of a higher value for yes. For the second model, the relative cost was set at 9-to-1. This is a very high ratio, but gives more insight to the model's behaviour. This time the model correctly classified 97% of the yes, but at the expense of a very low accuracy on the no, with an overall accuracy of only 49%. This was clearly not a good model. The problem with this outcome is the large number of false-positives, which would recommend unnecessary and costly intervention for patients, who would not have been re-admitted anyway. Therefore, the data scientist needs to try again to find a better balance between the yes and no accuracies. For the third model, the relative cost was set at a more reasonable 4-to-1. This time 68% accuracy was obtained on only yes, called sensitivity by statisticians, and 85% accuracy on the no, called specificity, with an overall accuracy of 81%. This is the best balance that can be obtained with a rather small training set through adjusting the relative cost of misclassified yes and no outcomes parameter. A lot more work goes into the modeling, of course, including iterating back to the data preparation stage to redefine some of the other variables, so as to better represent the underlying information, and thereby improve the model.

# Evaluation

 - A model evaluation goes hand-in-hand with model building as such, the modeling and evaluation stages are done iteratively;
 - Model evaluation is performed during model development and before the model is deployed;
 - Evaluation allows the quality of the model to be assessed but it's also an opportunity to see if it meets the initial request;
 - Evaluation answers the question: Does the model used really answer the initial question or does it need to be adjusted?
 - Model evaluation can have two main phases:
    - The first is the diagnostic measures phase, which is used to ensure the model is working as intended;
    - The second phase of evaluation that may be used is statistical significance testing.

Let's look at one way to find the optimal model through a diagnostic measure based on tuning one of the parameters in model building. As shown in this table, four models were built with four different relative misclassification costs.

|Model | Relative Cost Y:N | True Positive Rate (Sensitivity) | Specificity (accuracy in N) | False Positive Rate (1-Specificity) |
|------|-------------------|----------------------------------|-----------------------------|-------------------------------------|
|1     | 1:1               | 0.45                             | 0.97                        | 0.03                                |
|2     | 1:5               | 0.60                             | 0.92                        | 0.08                                |
|3     | 4:1               | 0.68                             | 0.85                        | 0.15                                |
|4     | 9:1               | 0.97                             | 0.35                        | 0.65                                |


As we see, each value of this model-building parameter increases the true-positive rate, or sensitivity, of the accuracy in predicting yes, at the expense of lower accuracy in predicting no, that is, an increasing false-positive rate. The question then becomes, which model is best based on tuning this parameter? For budgetary reasons, the risk-reducing intervention could not be applied to most or all congestive heart failure patients, many of whom would not have been readmitted anyway. On the other hand, the intervention would not be as effective in improving patient care as it should be, with not enough high-risk congestive heart failure patients targeted. So, how do we determine which model was optimal? The optimal model can be found by plotting the ROC curve and selecting the model giving the maximum separation between the Receiver Operating Characteristic (ROC) curve and the base line. We can see that model 3, with a relative misclassification cost of 4-to-1, is the best of the 4 models.

> ROC curve which was first developed during World War II to detect enemy aircraft on radar. It has since been used in many other fields as well. Today it is commonly used in machine learning and data mining. The ROC curve is a useful diagnostic tool in determining the optimal classification model. This curve quantifies how well a binary classification model performs, declassifying the yes and no outcomes when some discrimination criterion is varied. In this case, the criterion is a relative misclassification cost. By plotting the true-positive rate against the false-positive rate for different values of the relative misclassification cost, the ROC curve helped in selecting the optimal model. 

# Summary

 - The end goal of the Modeling stage is that the data model answers the business question;
 - Data scientists test multiple algorithms on the training set data to determine whether the variables are required and whether the data supports answering the business question;
 - The Evaluation phase consists of two stages, the diagnostic measures phase, and the statistical significance phase;
 - During the Evaluation stage, data scientists and others assess the quality of the model and determine if the modelanswers the initial Business Understanding question or if the data model needs adjustment.

# Glossary

| Term | Definition |
|------|------------|
| Diagnostic measures | The evaluation of a model's performance of a model to ensure that the model functions as intended |
| Discrimination criterion | A measure used to evaluate the performance of the model in classifying different outcomes |
| Optimal model | The model that provides the maximum separation between the ROC curve and the baseline, indicating higher accuracy and effectiveness |
| Statistical significance testing | Evaluation technique to verify that data is appropriately handled and interpreted within the model |