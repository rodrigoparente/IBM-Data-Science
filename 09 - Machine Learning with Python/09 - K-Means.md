# K-Means Clustering

 - K-Means is a popular partition-based clustering algorithm that divides a dataset into $K$ clusters;
 - It tries to minimizes the distance intra-cluster and maximize the distances inter-cluster;
 - Each cluster is represented by its centroid, which is the mean of the data points in the cluster.

**Algorithm Steps**

 1. **Initialization**: Select $K$ initial centroids randomly from the dataset;
 2. **Assignment**: Assign each data point to the nearest centroid based on the Euclidean distance;
 3. **Update**: Calculate the new centroids by taking the mean of all data points assigned to each centroid;
 4. **Repeat**: Repeat steps 2 and 3 until the centroids no longer change significantly (convergence).


**Mathematical Explanation**

 - Given a set of data points $\{x_1, x_2, \ldots, x_n\}$ and the number of clusters $K$:
   1. **Initialization**: Choose $K$ initial centroids $\{\mu_1, \mu_2, \ldots, \mu_K\}$ randomly.
   2. **Assignment Step**: Assign each data point $x_i$ to the nearest centroid $\mu_j$:
       
    $$ C_i = \arg \min_{j} \| x_i - \mu_j \|^2 $$

   3. **Update Step**: Recalculate the centroids:
       
    $$ \mu_j = \frac{1}{|C_j|} \sum_{x_i \in C_j} x_i $$

   4. **Convergence**: Repeat the assignment and update steps until the centroids do not change significantly.

**Python Code**

Here's an example of how to implement K-Means clustering using the `scikit-learn` library:

```python
from sklearn.cluster import KMeans
import numpy as np

# Sample data: let's create a dataset with 2 features
X = np.array([[1, 2], [1.5, 1.8], [5, 8], [8, 8], [1, 0.6], [9, 11], [8, 2], [10, 2], [9, 3]])

# Specify the number of clusters
k = 3

# Initialize the KMeans model
kmeans = KMeans(n_clusters=k)

# Fit the model to the data
kmeans.fit(X)

# Get the cluster centroids
centroids = kmeans.cluster_centers_

# Get the cluster labels for each data point
labels = kmeans.labels_

# Print the centroids and labels
print("Centroids:", centroids)
print("Labels:", labels)
```

Plot the data points with different colors for each cluster and mark the centroids with an $x$ using `matplotlib`.

```python
import matplotlib.pyplot as plt

# Plot the data points and centroids
colors = ["g.", "r.", "b."]

for i in range(len(X)):
    plt.plot(X[i][0], X[i][1], colors[labels[i]], markersize=10)

plt.scatter(centroids[:, 0], centroids[:, 1], marker='x', s=150, linewidths=5, zorder=10)
plt.show()
```

**Elbow Point**

 - The elbow point is a method used to determine the optimal number of clusters $K$;
 - It is identified by plotting the within-cluster sum of squares (WCSS) as a function of the number of clusters and finding the "elbow point" where the rate of decrease sharply changes;
 - This point suggests that adding more clusters beyond this value does not significantly improve the clustering performance.
 - WCSS is defined as:
    $$ WCSS = \sum_{i=1}^{K} \sum_{x_j \in C_i} \| x_j - \mu_i \|^2 $$
    where $K$ is the number of clusters, $C is the set of points in cluster $i$, and $\$i is the centroid of cluster $i$.
 - Below there is an example of how to implement the elbow method using `scikit-learn`:

    ```python
    from sklearn.cluster import KMeans
    import matplotlib.pyplot as plt
    import numpy as np

    # Sample data: let's create a dataset with 2 features
    X = np.array([[1, 2], [1.5, 1.8], [5, 8], [8, 8], [1, 0.6], [9, 11], [8, 2], [10, 2], [9, 3]])

    # Range of K values to test
    K_range = range(1, 11)

    # List to store the WCSS values for each K
    wcss = []

    for K in K_range:
        kmeans = KMeans(n_clusters=K)
        kmeans.fit(X)
        wcss.append(kmeans.inertia_)  # Inertia is the WCSS for the clusters

    # Plotting the WCSS values to visualize the elbow
    plt.plot(K_range, wcss, 'bx-')
    plt.xlabel('Number of clusters')
    plt.ylabel('WCSS')
    plt.title('Elbow Method For Optimal K')
    plt.show()
    ```
