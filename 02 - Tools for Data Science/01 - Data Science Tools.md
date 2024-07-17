# Categories of Data Science Tools

Before it can be useful, raw data must pass through Data Science categories:

**Data Management**

 - Data management is the process of collecting, persisting, and retrieving data securely, efficiently, and cost-effectively;
 - Data is collected from many sources, like Twitter, Flipkart, Media, Sensors, and more;
 - Collected data is persisted in storage so it is available whenever you need it.

**Data Integration and Transformation**

 - Data Integration and Transformation, is the process of Extracting, Transforming, and Loading data (ETL);
 - Data Transformation is the process of transforming the values, structure, and format of data;
 - After extracting the data, the next step is to transform the data.
 - Transformed data is loaded back to the Data Warehouse;
 - Data Warehouses are primarily used to collect and store massive amounts of data for data analysis.

**Data Visualization**

 - Data visualization is the graphical representation of data and information;
 - You can use visualization to represent data in the form of charts, plots, maps, animations, etc;
 - Data visualization conveys data more effectively for decision-makers.

**Model Building**

 - Model building is where you train a machine learning model on the data;
 - The model "learns" the patterns and can provide predictions or decisions by itself;
 - You can then use this model to make predictions on new, unseen data.

**Model Deployment**

 - Model deployment is the process of integrating a developed model into a production environment;
 - The machine learning model is made available to third-party applications via APIs;
 - Business users can access and interact with the data through these third-party applications;
 - And this helps them make data-based decisions.

**Model Monitoring and Assessment**

 - Model monitoring and assessment run continuous quality checks to ensure a model’s accuracy, fairness, and robustness;
 - Model monitoring uses tools like *Fiddler* to track the performance of deployed models in a production environment;
 - Now, model assessment uses evaluation metrics like the F1 score, true positive rate, or the sum of squared error to understand a model's performance.

**Code Management**

 - Code management provides a unified view where you manage an inventory of assets;
 - When you want to develop a model, you may need to update it, fix bugs, or improve code features incrementally;
 - All of this requires version control (e.g. git);

**Data Management**

 - Data management, also called digital *asset management* (DAM), is the organizing and managing of important data collected from different sources;
 - DAM is performed on a DAM platform that allows versioning and collaboration;
 - These platforms also support replication, backup, and access right management for the stored data;

# Open Source Tools for Data Science

**Data Management**

 - So, the most widely used open-source data management tools are relational databases like MySQL and PostgreSQL;
 - Also, there are NoSQL Databases like MongoDB, Apache CouchDB, and Apache Cassandra;
 - In addition, there are file-based tools like the Hadoop File System or Cloud File systems like Ceph;
 - You also have an elastic search tool that stores text data, including the creation of a search index for fast document retrieval.

**Data Integration and Transformation**

 - The most widely used open-source data integration and transformation tools are the following:
    - Apache AirFlow, which was created by Airbnb originally;
    - KubeFlow, which allows the execution of data science pipelines on top of Kubernetes;
    - Apache Kafka, which originated from LinkedIn;
    - Apache Nifi, which delivers a very nice visual editor;
    - Apache SparkSQL, lets you use ANSI SQL and scales up to compute clusters of thousands of nodes.

**Data Visualization**

 - Data visualization tools can be distinguished between programming libraries and tools containing a user interface;
 - PixieDust is a Python library but has a user interface that facilitates plotting;
 - Hue, which can create visualizations from SQL queries;
 - Kibana, a data exploration, and visualization web application is limited to Elasticsearch (data provider);
 - Apache Superset is a data exploration and visualization web application.

**Model Building**

 - TensorFlow, is n end-to-end open-source platform for machine learning, developed by Google.
 - MLflow, is a platform to manage the ML lifecycle, including experimentation, reproducibility, and deployment
 - Metaflow, which was developed by Netflix, is a framework that helps manage real-life data science projects and supports both Python and R;
 - IBM Watson Studio, is as an integrated environment, Watson Studio simplifies developing, training, and deploying models;
 - Amazon SageMaker Studio, is an integrated development environment (IDE) for machine learning that allows you to build, train, and deploy models all in one place.

**Model Deployment**

 - There are many applications that support the deployment of ML models into an API, such as:
    - Apache PredictionIO currently only supports Apache Spark ML models for deployment, but support for all libraries is on the roadmap;
    - Seldon is an interesting product since it supports nearly every framework including, TensorFlow, Apache SparkML, R, and scikit learn;
    - TensorFlow can serve any tensor flow model using the TensorFlow service;

**Model Monitoring** 

 - To track the model performance you can use some softwares, such as:
    - ModelDB is a machine model metadata base where information about the models is stored and queried;
    - Although it is not specifically made for machine learning model monitoring, Prometheus is widely used in the field;

**Code Management**

 - GitHub is now the de facto standard for code asset management;
 - Another choice is Bitbucket.

**Data Management**

 - Some of the tools used in data management are:
    - Apache Atlas;
    - ODPi Egeria;
    - Kylo.

# Commercial Tools for Data Science

**Data Management**

 - The most of an enterprise’s relevant data is stored in:
    - Oracle Database;
    - Microsoft SQL Server;
    - IBM DB2.

**Data Integration and Transformation**

 - According to a Gartner Informatica PowerCenter and IBM InfoSphere DataStage are the leaders, these are followed by SAP, Oracle, SAS, Talend, and Microsoft products;
 - These tools support the design and deployment of ETL data processing pipelines through a graphical interface;
 - And have connectors to most of the commercial and open-source target information systems.

**Data Visualization**
 
 - The most prominent commercial representatives are:
    - Tableau;
    - Microsoft Power BI;
    - IBM Cognos Analytics.

**Model Building**

 - The most prominent products in that space are:
    - SPSS Modeler and SAS enterprise miner;
    - Watson Studio Desktop, based on the tool's cloud version.

**Model Deployment**

 - Model deployment in commercial software is tightly integrated into the model-building process.

**Model Monitoring** 

 - Currently, relevant commercial tools are not available. Therefore, open source is the first choice.

**Code Management**

 - Currently, relevant commercial tools are not available. Therefore, open source is the first choice.

**Data Management**

 - Some tools provided are:
  - Information Governance;
  - IBM Cloud Pak for Data.

# Cloud Based Tools for Data Science

 - Watson Studio and Watson OpenScale cover the complete development life cycle for all data science, machine learning, and artificial intelligence (AI) tasks;
 - Another example is Microsoft Azure Machine Learning, which is a full cloud-hosted offering supporting the complete development life cycle of all data science, machine learning, and AI tasks;
 - Amazon SageMaker platform offers a wide range of tools and services to help you build, train, and deploy machine learning models efficiently.

# Jupyter vs RStudio vs Spyder

 - Jupyter is an open-source IDE that supports Julia, Python and R development. With Jupyter, users can create and share documents containing live code, equations, visualizations, and narrative text;
 - RStudio is a free and open-source IDE, built to manage and execute R code. RStudio includes version control and project management capabilities;
 - Spyder is an open-source python based IDE that has a unique combination of comprehensive development tools for advanced editing, analysis, debugging, profiling, and visualization capabilities. 

# Summary

 - The data science task categories which are:
    - Data Management;
    - Data Integration and Transformation;
    - Data Visualization;
    - Model Building;
    - Model Deployment;
    - Model Monitoring;
    - Code Management;
    - Data Management.
 - Open-source, commercial, and cloud-based tools for data science.
 - Popular environments, such as:
    - Jupyter;
    - RStudio;
    - Spyder.

# Glossary