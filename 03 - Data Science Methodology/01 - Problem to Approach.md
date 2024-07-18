# Data Science Methodology Overview

 - Data science is an influential domain that combined statistical analysis, technological expertise, and domain knowledge to extract valuable insights from extensive datasets;
 - However, despite the recent increase in computing power and easier access to data, we often don't understand the questions being asked or know how to apply the data correctly to address the problem at hand;
 - Using a methodology helps resolve those issues; 
 - But What is a methodology? A methodology is a system of methods used in a particular area of study;
 - In the context of data science, data science methodology is a structured approach that guides data scientists and solving complex problems and making data-driven decisions;

The data science methodology discussed in this course is a methodology outlined by John Rollins, a seasoned IBM Senior Data Scientist. As a general methodology, data science methodology consists of the following 10 stages:

 1. Business understanding;
 2. Analytic approach;
 3. Data requirements;
 4. Data collection;
 5. Data understanding;
 6. Data preparation;
 7. Modeling;
 8. Evaluation; 
 9. Deployment;
 10. Feedback.

Data science methodology aims to answer the following 10 basic questions:

 1. What is the problem that you're trying to solve?
 2. How can you use data to answer the business question?
 3. What data do you need to answer the question?
 4. Where's the data source from, and how will you receive the data?
 5. Does the data you collect represent the problem to be solved?
 6. What additional work is required to manipulate and work with the data?
 7. When you apply data visualizations, do you see answers that address the business problem?
 8. Does the data model answer the initial business question or must you adjust the data?
 9. Can you put the model into practice?
 10. Can you get constructive feedback from the data and the stakeholder to answer the business question? 

# Business Understanding

 - Data science methodology begins with spending the time to seek clarification, to attain what can be referred to as a business understanding;
 - Having this understanding is placed at the beginning of the methodology because getting clarity around the problem to be solved, allows you to determine which data will be used to answer the core question;
 - Rollins suggests that having a clearly defined question is vital because it ultimately directs the analytic approach that will be needed to address the question;
 - All too often, much effort is put into answering what people THINK is the question, and while the methods used to address that question might be sound, they don't help to solve the actual problem;
 - Establishing a clearly defined question starts with understanding the GOAL of the person who is asking the question;
 - Once the goal is clarified, the next piece of the puzzle is to figure out the objectives that are in support of the goal;
 - By breaking down the objectives, structured discussions can take place where priorities can be identified in a way that can lead to organizing and planning on how to tackle the problem;

**Case Study**

In the case study, the question being asked is: What is the best way to allocate the limited healthcare budget to maximize its use in providing quality care?

This question is one that became a hot topic for an American healthcare insurance provider. As public funding for readmissions was decreasing, this insurance company was at risk of having to make up for the cost difference, which could potentially increase rates for its customers. Knowing that raising insurance rates was not going to be a popular move, the insurance company sat down with the health care authorities in its region and brought in IBM data scientists to see how data science could be applied to the question at hand. Before even starting to collect data, the goals and objectives needed to be defined. After spending time to determine the goals and objectives, the team prioritized "patient readmissions" as an effective area for review. With the goals and objectives in mind, it was found that approximately 30% of individuals who finish rehab treatment would be readmitted to a rehab center within one year; and that 50% would be readmitted within five years. After reviewing some records, it was discovered that the patients with congestive heart failure were at the top of the readmission list. It was further determined that a decision-tree model could be applied to review this scenario, to determine why this was occurring. To gain the business understanding that would guide the analytics team in formulating and performing their first project, the IBM Data scientists, proposed and delivered an on-site workshop to kick things off. The key business sponsors involvement throughout the project was critical, in that the sponsor: set overall direction, remained engaged, and provided guidance.

Finally, four business requirements were identified for whatever model would be built. Namely: 

 - Predicting readmission outcomes for those patients with Congestive Heart Failure;
 - Predicting readmission risk;
 - Understanding the combination of events that led to the predicted outcome;
 - Applying an easy-to-understand process to new patients, regarding their readmission risk.

# Analytic Approach

 - Once a strong understanding of the question is established, the analytic approach can be selected;
 - This means identifying what type of patterns will be needed to address the question most effectively;
 - If the question is to...
    - determine probabilities of an action, then a predictive model might be used;
    - show relationships, a descriptive approach maybe be required.
    
**Case Study**

For the case study presented before, a decision tree classification model was used to identify the combination of conditions leading to each patient's outcome. In this approach, examining the variables in each of the nodes along each path to a leaf, led to a respective threshold value. This means the decision tree classifier provides both the predicted outcome, as well as the likelihood of that outcome, based on the proportion at the dominant outcome, yes or no, in each group. From this information, the analysts can obtain the readmission risk, or the likelihood of a yes for each patient. If the dominant outcome is yes, then the risk is simply the proportion of yes patients in the leaf. If it is no, then the risk is 1 minus the proportion of no patients in the leaf. A decision tree classification model is easy for non-data scientists to understand and apply, to score new patients for their risk of readmission. Clinicians can readily see what conditions are causing a patient to be scored as high-risk and multiple models can be built and applied at various points during hospital stay. This gives a moving picture of the patient's risk and how it is evolving with the various treatments being applied. For these reasons, the decision tree classification approach was chosen for building the Congestive Heart Failure readmission model.

# Analytic Approach Based on the Question Type

When choosing an analytic approach for a problem, the type of question you’re trying to answer greatly influences the methodology. Here are five common types of questions and corresponding analytic approaches:

**Descriptive Questions:** "What is the current status?"

 - **Approach**: Descriptive Analytics
 - **Question:**  "What is the current status of our sales?"  
 - **Techniques:**
    - Data aggregation: combining data from various sources into a unified view;
    - Data mining: extracting useful information from large datasets;
    - Data visualization: using visual tools to present data in an easily understandable format.
 - **Examples:**
    - Summarizing sales data;
    - Creating dashboards;
    - Generating reports.

**Diagnostic Questions:** "Why did it happen?"

 - **Approach:** Diagnostic Analytics
 - **Question:** "Why did our sales decline in the last quarter?"  
 - **Techniques:**
    - Drill-down: exploring detailed data to find underlying causes;
    - Data discovery: identifying patterns and relationships in data;
    - Correlation analysis: assessing the relationship between different variables.
 - **Examples:**
    - Identifying root causes of sales decline;
    - Analyzing customer complaints;
    - Understanding failure points in a process.

**Predictive Questions:** "What is likely to happen?"

 - **Approach:** Predictive Analytics
 - **Question:** "What is our sales forecast for the next year?"  
 - **Techniques:**
    - Regression analysis: predicting outcomes based on relationships between variables;
    - Time series forecasting: predicting future values based on past trends;
    - Machine learning models: using algorithms to predict future outcomes based on historical data.
 - **Examples:**
    - Forecasting sales;
    - Predicting customer churn;
    - Estimating future demand.

**Prescriptive Questions:** "What should we do?"

 - **Approach:** Prescriptive Analytics
 - **Question:** "What should we do to increase website traffic?"  
 - **Techniques:**
    - Optimization models: finding the best solution from a set of alternatives;
    - Simulation: modeling scenarios to predict outcomes;
    - Decision analysis: evaluating and comparing different decisions.
 - **Examples:**
    - Recommending inventory levels;
    - Optimizing marketing campaigns;
    - Determining pricing strategies.

**Classification Questions:** "Which category does this belong to?"

 - **Approach:** Classification (Supervised Learning)
 - **Question:** "Which category does this data point belong to?"   
 - **Techniques:**
    - Logistic regression: predicting the probability of a categorical outcome;
    - Decision trees: splitting data into branches to classify it;
    - Support vector machines: finding the best boundary to separate categories;
    - Neural networks: using interconnected nodes to classify data.
 - **Examples:**
    - Email spam detection;
    - Image classification;
    - Disease diagnosis.

# Identifying the pattern to address the question

Consider the following business goal and how different questions can be solved with different approaches: 

A transportation company aims to optimize its delivery routes and schedules to minimize costs and improve delivery efficiency.

**Predictive Model**
 
 - How can we forecast the optimal number of delivery vehicles required for a specific day based on the expected order volume?
 - What are the expected delivery times for each route considering historical traffic patterns and anticipated weather conditions?
 - How can we determine the most suitable delivery routes for perishable goods, ensuring timely deliveries without explicitly using past data to make predictions?
 - How can we anticipate the potential impact of traffic incidents or road closures on delivery times to proactively adjust routes?

**Descriptive Model**
 
 - What insights can be gathered on the average delivery times for different vehicle types, and how do these times vary based on the complexity of the delivery route?
 - What are the most frequently used routes and their respective delivery time variations during peak and off-peak hours?
 - What historical data highlights the busiest delivery days and time intervals during the week based on past order data?
 - What are the average delivery costs for different delivery routes, and how do they vary during different times of the day?

**Classification Model**
 
 - How can we classify delivery routes into different categories based on the average delivery time and order volume?
 - How can we cluster customer locations to create distinct groups for efficient delivery route planning, without explicitly making predictions based on past data?
 - How can we group delivery regions based on customer density and order frequency to optimize delivery route planning?
 - What are the various time slots in which delivery schedules can be classified to balance workload and minimize delivery delays?

# Summary

 - The need to understand and prioritize the business goal;
 - The importance of selecting the right model;
 - When to use a predictive, descriptive, or classification model.

# Glossary

| Term | Definition |
|------|------------|
| Cohort study | An observational study where a group of individuals with a specific characteristic or exposure is followed over time to determine the incidence of outcomes or the relationship between exposures and outcomes |
| Data-Driven Insights | Insights derived from analyzing and interpreting data to inform decision-making |
| Decision tree | A supervised machine learning algorithm that uses a tree-like structure of decisions and their possible consequences to make predictions or classify instances |
| Descriptive modeling | Modeling technique that focuses on describing and summarizing data, often through statistical analysis and visualization, without making predictions or inferences |
| Threshold value | The specific value used to split data into groups or categories in a decision tree |