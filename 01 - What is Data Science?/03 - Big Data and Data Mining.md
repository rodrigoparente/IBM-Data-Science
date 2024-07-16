# How Big Data is Driving Digital Transformation

- Digital Transformation affects business operations, updating existing processes and creating new ones to harness the benefits of new technologies;
- The availability of vast amounts of data, and the competitive advantage that analyzing it brings, has triggered digital transformations throughout many industries;
- This digital change integrates digital technology into all areas of an organization resulting in fundamental changes to how it operates and delivers value to customers;
- Digital transformation is not simply duplicating existing processes in digital form; the in-depth analysis of how the business operates helps organizations discover how to improve their processes and operations, and harness the benefits of integrating data science into their workflows.

# Introduction to Cloud

Cloud computing is the delivering of on-demand computing resources (such as networks, servers, storages, etc) over the Internet on a pay-for-use basis. Some key concepts:

- **Characteristics of cloud computing**
    - *On-demand self-service* means that you get access to cloud resources such as the processing power, storage, and network you need, using a simple interface, without requiring human interaction with each service provider;
    - *Broad network access* means that cloud computing resources can be accessed via the network through standard mechanisms and platforms such as mobile phones, tablets, laptops, and workstations;
    - *Resource pooling* is when computing resources are pooled to serve multiple consumers, and cloud resources are dynamically assigned and reassigned according to demand, without customers needing to know the physical location of these resources;
    - *Rapid elasticity* implies that you can access more resources when you need them, and scale back when you don’t, because resources are elastically provisioned and released;
    - *Measured service* means that you only pay for what you use or reserve as you go. If you’re not using resources, you’re not paying.
- **Cloud deployment models**
    - *Public cloud* is when you leverage cloud services over the open internet on hardware owned by the cloud provider, but its usage is shared by other companies;
    - *Private cloud* means that the cloud infrastructure is provisioned for exclusive use by a single organization. It could run on-premises or it could be owned, managed, and operated by a service provider;
    - *Hibrid cloud* is when you use a mix of both public and private clouds, working together seamlessly, that is classified as the hybrid cloud model.
- **Cloud service models**
    - *Infrastructure as a Service* (or IaaS), is when you can access the infrastructure and physical computing resources such as servers, networking, storage, and data center space without the need to manage or operate them;
    - Platform as a Service (or PaaS), is when you can access the platform that comprises the hardware and software tools that are usually needed to develop and deploy applications to users over the Internet;
    - *Software as a Service* (or SaaS), is when a software licensing and delivery model in which software and applications are centrally hosted and licensed on a subscription basis.

# Cloud for Data Science

- Cloud enables you to get instant access to open source technologies without the need to install and configure them locally;
- Using the Cloud also gives you access to the most up-to-date tools and libraries without the worry of maintaining them and ensuring that they are up to date;
- The Cloud is accessible from everywhere and in every time zone;
- Multiple collaborators or teams can access the data simultaneously, working together on producing a solution;
- Some big tech companies offer cloud platforms like:
    - IBM Cloud;
    - Amazon Web Services or AWS;
    - Google Cloud platform.

# Foundations of Big Data

- Ernst and Young offers the following definition: 

    > “Big Data refers to the dynamic, large and disparate volumes of data being created by people, tools, and machines. It requires new, innovative, and scalable technology to collect, host, and analytically process the vast amount of data gathered in order to derive real-time business insights that relate to consumers, risk, profit, performance, productivity management, and enhanced shareholder value.”

- The V's of Big Data:
    - **Velocity** is the speed at which data accumulates;
    - **Volume** is the scale of the data, or the increase in the amount of data stored;
    - **Variety** is the diversity of the data;
    - **Veracity** is the quality and origin of data, and its conformity to facts and accuracy
    - **Value** is our ability and need to turn data into value.

#     What is Hadoop?
 
 - Hadoop is a collection of open-source software utilities that facilitates using a network of many computers to solve problems involving massive amounts of data and computation;
 - Hadoop uses the Map-Reduce programming model;
 - Mapper process is a function or task which is used to process all input records from a file and generate the output which works as input for Reducer. The output of the mapper is in the form of key-value pairs;
- Reducer process mainly performs some computation operation like addition, filtration, and aggregation. The output generated by the reducer will be the final output which is then stored on HDFS(Hadoop Distributed File System).

# Big Data Processing Tools

 - **Hadoop** is a collection of tools that provides distributed storage and processing of big data;
    - In Hadoop distributed system, a node is a single computer, and a collection of nodes forms a cluster;
    - Hadoop can scale up from a single node to any number of nodes, each offering local storage and computation;
    - Hadoop provides a reliable, scalable, and cost-effective solution for storing data with no format requirements.
    - Benefits include:
        - Better real-time data-driven decisions;
        - Improved data access and analysis;
        - Data offload and consolidation.
 - **Hadoop Distributed File System**, or HDFS, which is a storage system for big data that runs on multiple commodity hardware connected through a network, provides scalable and reliable big data storage by partitioning files over multiple nodes;
    - Benefits include:
        - Fast recovery from hardware failures;
        - Access to streaming data;
        - Accommodation of large datasets;
        - Portability.
 - **Hive** is a data warehouse for data query and analysis build on top of Hadoop;
    - Hive is better suited for data warehousing tasks such as ETL, reporting, and data analysis.
 - **Spark** is a distributed analytics framework for complex real-time data analytics.
    - Key attributes:
        - In-memory processing which significantly increase speed of computations;
        - Provides interface for major programming languages such as Java, Python, and R;
        - Can run using its standalone clustering technology;
        - Can access data in a large variety of data sources, including HDFS and Hive;
        - Performs complex analytics in real-time.

# Data Mining Steps

 - **Establishing goals:** identify the key questions that need to be answered. However, going beyond identifying the key questions are the concerns about the costs and benefits of the exercise. Furthermore, you must determine, in advance, the expected level of accuracy and usefulness of the results obtained from data mining;
 - **Selecting data:** identify the right kind of data needed for data mining that could answer the questions at reasonable costs. At times, data are readily available for further processing. On the other hand, data may not be readily available for data mining. In such cases, you must identify other sources of data or even plan new data collection initiatives, including surveys.The output of a data-mining exercise largely depends upon the quality of data being used;
 - **Preprocessing Data:** often raw data are messy, containing erroneous or irrelevant data. In addition, even with relevant data, information is sometimes missing. In the preprocessing stage, you identify the irrelevant attributes of data and expunge such attributes from further consideration. Lastly, you must develop a formal method of dealing with missing data and determine whether the data are missing randomly or systematically;
 - **Transforming Data:** an important consideration in data mining is to reduce the number of attributes needed to explain the phenomena. This may require transforming data using algorithms, such as Principal Component Analysis, of Aggregation functions. Another thing to do is transform variables from one type to another, which can help capture the non-linearities in the underlying behaviors;
 - **Storing Data:** the data must be stored in a format that gives unrestricted and immediate read/write privileges to the data scientist. It is also important to store data on servers or storage media that keeps the data secure and also prevents the data mining algorithm from unnecessarily searching for pieces of data scattered on different servers or storage media;
 - **Mining Data:** after data is appropriately processed, transformed, and stored, it is subject to data mining. This step covers data analysis methods, including parametric and non-parametric methods, and machine-learning algorithms. A good starting point for data mining is data visualization. Multidimensional views of the data using the advanced graphing capabilities;
 - **Evaluating Mining Results:** after results have been extracted from data mining, you do a formal evaluation of the results. Formal evaluation could include testing the predictive capabilities of the models on observed data to see how effective and efficient the algorithms have been in reproducing data. In addition, the results are shared with the key stakeholders for feedback, which is then incorporated in the later iterations of data mining to improve the process.

 # Summary

 - Handling massive datasets requires new technologies;
 - Cloud enables us to work with big data;
 - Data science can benefit from big data because it addresses some computing challenges related to:
    - Scalability;
    - Collaboration;
    - Accessibility;
    - Maintenance;

 # Glossary

| Term | Definition |
|------|------------|
| Analytics | The process of examining data to draw conclusions and make informed decisions is a fundamental aspect of data science, involving statistical analysis and data-driven insights |
| Chief Data Officer (CDO) | An emerging role responsible for overseeing data-related initiatives, governance, and strategies, ensuring that data plays a central role in digital transformation efforts |
| Chief Information Officer (CIO) | An executive is responsible for managing an organization's information technology and computer systems, contributing to technology-related aspects of digital transformation |
| Commodity Hardware | Standard, off-the-shelf hardware components are used in a big data cluster, offering cost-effective solutions for storage and processing without relying on specialized hardware |
| Deep Learning | A subset of machine learning that involves artificial neural networks inspired by the human brain, capable of learning and making complex decisions from data on their own |
| Digital Change | The integration of digital technology into business processes and operations leads to improvements and innovations in how organizations operate and deliver value to customers |
| Digital Transformation | A strategic and cultural organizational change driven by data science, especially Big Data, to integrate digital technology across all areas of the organization, resulting in fundamental operational and value delivery changes |