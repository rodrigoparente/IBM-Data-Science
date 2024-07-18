# Data Requirements

 - Prior to undertaking the data collection and data preparation stages of the methodology, it's vital to identifying the necessary data content, formats and sources for initial data collection;

**Case Study**

In the case study, the next task is to define the data requirements for the decision tree classification approach that was selected. This included selecting a suitable patient cohort from the health insurance providers member base. In order to compile the complete clinical histories, three criteria were identified for inclusion in the cohort: 

 1. A patient needed to be admitted as in-patient within the provider service area, so they'd have access to the necessary information;
 2. They focused on patients with a primary diagnosis of congestive heart failure during one full year;
 3. A patient must have had continuous enrollment for at least six months, prior to the primary admission for congestive heart failure, so that complete medical history could be compiled.

Congestive heart failure patients who also had been diagnosed as having other significant medical conditions, were excluded from the cohort because those conditions would cause higher-than-average re-admission rates and, thus, could skew the results. Then the content, format, and representations of the data needed for decision tree classification were defined. This modeling technique requires one record per patient, with columns representing the variables in the model. To model the readmission outcome, there needed to be data covering all aspects of the patient's clinical history. This content would include admissions, primary, secondary, and tertiary diagnoses, procedures, prescriptions, and other services provided either during hospitalization or throughout patient/doctor visits. Thus, a particular patient could have thousands of records, representing all their related attributes. To get to the one record per patient format, the data scientists rolled up the transactional records to the patient level, creating a number of new variables to represent that information. This was a job for the data preparation stage, so thinking ahead and anticipating subsequent stages is important.

# Data Collection

 - After the initial data collection is performed, an assessment by the data scientist takes place to determine whether or not they have what they need;
 - In this phase the data requirements are revised and decisions are made as to whether or not the collection requires more or less data;
 - Techniques such as descriptive statistics and visualization can be applied to the dataset, to assess the content, quality, and initial insights about the data;
 - Gaps in data will be identified and plans to either fill or make substitutions will have to be made;

**Case Study**

Collecting data requires that you know the source or, know where to find the data elements that are needed. In the context of our case study, these can include: demographic, clinical and coverage information of patients, provider information, claims records, as well as pharmaceutical and other information related to all the diagnoses of the congestive heart failure patients. For this case study, certain drug information was also needed, but that data source was not yet integrated with the rest of the data sources. This leads to an important point: It is alright to defer decisions about unavailable data, and attempt to acquire it at a later stage. For example, this can even be done after getting some intermediate results from the predictive modeling. If those results suggest that the drug information might be important in obtaining a good model, then the time to try to get it would be invested. As it turned out though, they were able to build a reasonably good model without this drug information. DBAs and programmers often work together to extract data from various sources, and then merge it. This allows for removing redundant data, making it available for the next stage of the methodology, which is data understanding. At this stage, if necessary, data scientists and analytics team members can discuss various ways to better manage their data, including automating certain processes in the database, so that data collection is easier and faster.

# Summary

 - The significance of defining the data requirements for your model;
 - Why the content, format, and representation of your data matter;
 - The importance of identifying the correct sources of data for your project;
 - How to handle unavailable and redundant data;
 - To anticipate the needs of future stages in the process.

# Glossary