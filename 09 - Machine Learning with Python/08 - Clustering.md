# Intro to Clustering

 - Clustering is an unsupervised learning technique that groups a set of data points or objects in a dataset into clusters based on their similarity;
 - Each cluster contains data points that are more similar to each other than to those in other clusters.

# Difference Between Clustering and Classification

**Clustering**:

 - Does not require labeled data (unsupervised learning).
 - Its goals it to discover the inherent grouping in data;
 - Can be used, for example, to group customers based on purchasing behavior without predefined categories.

**Classification**

 - Requires labeled data for training (supervised learning);
 - Its goal is to assign data points to predefined classes;
 - Can be used, for example, to predicting whether a customer will default on a loan based on historical data.

# Examples of Clustering Applications

**Retail/Marketing**

 - Identifying customer segments based on purchasing behavior and demographics;
 - Enhancing recommendation systems by grouping similar products or customers.

**Banking**

 - Detecting patterns of fraudulent credit card transactions;
 - Segmenting customers into categories such as loyal customers and those at risk of churn.

**Insurance**

 - Fraud detection in claims analysis by identifying unusual patterns;
 - Evaluating insurance risk by grouping customers with similar risk profiles.

**Media**

 - Auto-categorizing news articles based on content;
 - Recommending similar news articles to readers based on clustering of interests.

**Medicine and Biology**

 - Characterizing patient behavior to tailor medical treatments;
 - Grouping genes or genetic markers to study genetic relationships and family ties.

# Purpose of Clustering

 - **Exploratory Data Analysis:** understanding the underlying structure of the data;
 - **Summary Generation:** reducing the complexity of data by summarizing it into clusters;
 - **Outlier Detection:** identifying unusual data points for tasks such as fraud detection or noise removal;
 - **Finding Duplicates:** detecting similar data points to remove redundancy;
 - **Pre-processing Step:** simplifying data for subsequent prediction or data mining tasks.

# Clustering Algorithms

**Partition-based Clustering**

 - **Algorithms:** K-Means, K-Medians, Fuzzy c-Means;
 - **Characteristics:** 
    - Efficient for medium and large datasets; 
    - Produces spherical clusters.

**Hierarchical Clustering**

 - **Algorithms:** Agglomerative, Divisive;
 - **Characteristics:** 
  - Intuitive and suitable for small datasets; 
   - Produces hierarchical trees of clusters.

**Density-based Clustering**

 - **Algorithm:** DBSCAN;
 - **Characteristics:** 
    - Effective for data with noise and arbitrary-shaped clusters; 
    - Good for spatial data.