# Data Collection and Organization
 
 - Data repository is a general term used to refer to data that has been collected, organized, and isolated;
 - Types of data repositories:
    - **Databases:** is a collection of data, or information, designed for the input, storage, search and retrieval, and modification of data. The two main types of databases are relational (SQL) and non-relational (NoSQL);
    - **Data Warehouses:** works as a central repository that merges information coming from disparate sources and consolidates it through the extract, transform, and load process, also known as the ETL process, into one comprehensive database for analytics and business intelligence;
    - **Big Data Stores:** include distributed computational and storage infrastructure to store, scale, and process very large datasets. 

# SQL vs. NoSQL

To summarizethe key differencesbetween relational and non-relational databases:

- RDBMS schemas rigidly define how all data inserted into the database must be typed and composed, whereas NoSQL databases can be schema-agnostic, allowing unstructured and semi-structured data to be stored and manipulated;
- Maintaining high-end, commercial relational database management systems is expensive whereas NoSQL databases are specifically designed for low-cost commodity hardware;
- Relational databases, unlike most NoSQL, support ACID-compliance, which ensures reliability of transactions and crash recovery;
- RDBMS is a mature and well-documented technology, which means the risks are more or less perceivable as compared to NoSQL, which is a relatively newer technology;

# Data Marts, Data Lakes, ETL, and Data Pipelines

**Data Warehouses**

 - A data warehouse works like a multi-purpose storage for different use cases;
 - By the time the data comes into the warehouse, it has already been modeled and structured for a specific purpose, meaning it is analysis ready.
 - As an organization, you would opt for a data warehouse when you have massive amounts of data from your operational systems that needs to be readily available for reporting and analysis.

**Data Marts**

 - A data mart is a sub-section of the data warehouse, built specifically for a particular business function, purpose, or community of users;
 - The idea is to provide stakeholders data that is most relevant to them, when they need it;
 - Since a data mart offers analytical capabilities for a restricted area of the data warehouse, it offers isolated security and isolated performance;
 - The most important role of a data mart is business-specific reporting and analytics.

**Data Lake**

 - A Data Lake is a storage repository that can store large amounts of structured, semi-structured, and unstructured data in their native format, classified and tagged with metadata;
 - So, while a data warehouse stores data processed for a specific need, a data lake is a pool of raw data where each data element is given a unique identifier and is tagged with metatags for further use;
 - You would opt for a data lake if you generate, or have access to, large volumes of data on an ongoing basis, but don’t want to be restricted to specific or pre-defined use cases;
 - Unlike data warehouses, a data lake would retain all source data, without any exclusions.

**Extract, Transform, and Load process (ETL)**

 - ETL is how raw data is converted into analysis-ready data;
 - It is an automated process in which you gather raw data from identified sources, extract the information that aligns with your reporting and analysis needs, clean, standardize, and transform that data into a format that is usable in the context of your organization; and load it into a data repository;
 - Steps of ETL process are:
    - **Extract** is the step where data from source locations is collected for transformation;
    - **Transform** involves the execution of rules and functions that converts raw data into data that can be used for analysis;
    - **Load** is the step where processed data is transported to a destination system or data repository.

**Data Pipelines**

 - And although both move data from source to destination, data pipeline is a broader term that encompasses the entire journey of moving data from one system to another, of which ETL is a subset;
 - A data pipeline is a high performing system that supports both long-running batch queries and smaller interactive queries;
 - The destination for a data pipeline is typically a data lake, although the data may also be loaded to different target destinations, such as another application or a visualization tool;
 - Data pipelines can be architected for batch processing, for streaming data, and a combination of batch and streaming data.
 

# Summary

 - The basics of data collection and organization methods;
 - What RDBMS is and its significance;
 - NoSQL databases and their flexible schema;
 - Types of data storage and the ways to process data;
 - The factors influencing data repository selection;
 - The various data integration tools and the solutions they provide.

# Glossary

| Term | Definition |
|------|------------|
| ACID-compliance |	Ensuring data accuracy and consistency through Atomicity, Consistency, Isolation, and Durability (ACID) in database transactions |
| Data at rest | Data that is stored and not actively in motion, typically residing in a database or storage system for various purposes, including backup |
| Portability | The capability of data integration tools to be used in various environments, including single-cloud, multi-cloud, or hybrid-cloud scenarios, provides flexibility in deployment options |
| Vendor lock-in | A situation where a user becomes dependent on a specific vendor’s technologies and solutions, making it challenging to switch to other platforms |