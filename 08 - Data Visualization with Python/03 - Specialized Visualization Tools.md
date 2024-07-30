# Pie Charts

 - A pie chart (also known as a circle chart) is a circular statistical graphic that visually represents data by dividing the circle into slices or sectors;
 - Each slice (or sector) of the pie chart corresponds to a specific category or value;
 - The size of each slice is proportional to the quantity it represents;
 - The total sum of all the slices equals 360° (a full circle);
 - Pie charts are commonly used to show relative proportions, percentages, or parts of a whole.
 - Bellow is a basic example of a pie plot using the `Matplotlib` library:

    ```python
    import matplotlib.pyplot as plt

    # Example data (percentages)
    sizes = [25, 12.5, 12.5, 25]
    labels = ['Frogs', 'Hogs', 'Dogs', 'Logs']
    colors = ['olivedrab', 'rosybrown', 'gray', 'saddlebrown']
    explode = (0.1, 0, 0, 0)  # "explode" the 1st slice (Hogs)

    # Create the pie chart
    fig, ax = plt.subplots()
    ax.pie(sizes, labels=labels, colors=colors, explode=explode, autopct='%1.1f%%', shadow=True, startangle=90)

    plt.title('Animal Distribution')
    plt.show()
    ```

# Box Plots

 - A box plot, also known as a box-and-whisker plot, provides a snapshot of the distribution of continuous data;
 - It visually summarizes key statistical properties of a dataset; 
 - The five-number summary elements of a box plot are:
    - **Minimum (Q0):** the lowest data point (excluding outliers);
    - **Maximum (Q4):** the highest data point (excluding outliers);
    - **Median (Q2):** the middle value in the dataset;
    - **First Quartile (Q1):** the median of the lower half of the data;
    - **Third Quartile (Q3):** the median of the upper half of the data.
 - The box plot components, are:
    - A box drawn from Q1 to Q3, with a horizontal line inside denoting the median.
    - Whiskers extending from the box to indicate variability beyond the quartiles.
    - Outliers (data points significantly different from the rest) plotted individually beyond the whiskers.
 - Bellow is a basic example of a box plot using the `Matplotlib` library:
 
    ```python
    import matplotlib.pyplot as plt
    import numpy as np

    # Generate example data
    spread = np.random.rand(50) * 100
    center = np.ones(25) * 40
    flier_high = np.random.rand(10) * 100 + 100
    flier_low = np.random.rand(10) * -100
    data = np.concatenate((spread, center, flier_high, flier_low))

    # Create a basic box plot
    plt.boxplot(data)
    plt.title('Basic Box Plot')
    plt.xlabel('Data')
    plt.ylabel('Values')
    plt.show()
    ```
# Scatter Plots

 - A scatter plot (also known as a scatter chart or scatter graph) is a powerful visualization that shows the relationship between two numerical variables;
 - A scatter plot uses dots to represent data points;
 - Each dot's position on the horizontal and vertical axes corresponds to the values of two variables;
 - Scatter plots help us observe patterns, correlations, and outliers in data;
 - Bellow is a basic example of a scatter plot using the `Matplotlib` library:

    ```python
    import matplotlib.pyplot as plt
    import pandas as pd

    # Load the Ames Housing dataset
    df = pd.read_csv('AmesHousing.csv')

    # Create a scatter plot
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.scatter(x=df['Gr Liv Area'], y=df['SalePrice'])
    plt.xlabel("Living Area Above Ground")
    plt.ylabel("House Price")
    plt.title("Scatter Plot: Area vs. Price")
    plt.show()
    ```

# Tree Map Plots

 - A tree map is a visualization method that displays hierarchical data using nested rectangles;
 - Each rectangle represents a category or branch within the hierarchy
 - Each branch of the tree corresponds to a rectangle, which is then subdivided into smaller rectangles representing sub-branches;
 - The size of each rectangle is proportional to a specified dimension of the data (e.g., sales, population, or any other relevant metric);
 - They can represent data across multiple levels, making them suitable for displaying complex information;
 - Bellow is a basic example of a tree map plot using the `Pandas` and `Plotly` library:

    ```python
    import pandas as pd
    import plotly.express as px

    # Sample data (you can replace this with your own dataset)
    data = {
        'Region': ['North', 'South', 'East', 'West'],
        'Sub-Category': ['Electronics', 'Clothing', 'Furniture', 'Books'],
        'Sales': [1200, 800, 1500, 600]
    }

    df = pd.DataFrame(data)

    # Create a tree map using Plotly Express
    fig = px.treemap(df, path=['Region', 'Sub-Category'], values='Sales')
    fig.update_traces(root_color="lightgrey")
    fig.update_layout(margin=dict(t=50, l=25, r=25, b=25))
    fig.show()
    ```

# Data Storytelling and Data Visualization

**Data Analysis Visualization**

 - Data visualization aims to present data objectively, emphasizing clarity and accuracy;
 - Its purpose is to enhance understanding of data patterns, trends, and distributions;
 - Data visualization key characteristics are:
    - Focuses on visual representation (charts, graphs, plots);
    - Provides an overview of data;
    - Helps users explore and analyze data;
    - Commonly used by data analysts and scientists.
 - Data visualization can be used for creating scatter plots, bar charts, histograms, and line graphs.

**Machine Data Storytelling**

 - Data storytelling goes beyond visualization—it requires narrators to deliver a more encompassing view of the message;
 - Its purpose is to Communicate data insights effectively to a broader audience;
 - Data storytelling key characteristics are:
    - Combines quantitative data with cognitive and communication skills;
    - Personalizes and contextualizes data;
    - Creates engaging narratives;
 - Data storytelling helps stakeholders understand the implications of data;

# Summary

 - Pie charts are circular statistical graphic divided into segments;
 - Box plot statistically represents data distribution;
 - Scatter plot displays values of two variables against each other
 - Matplotlib is a versatile plotting library for various plot types;
 - Data storytelling involves creating narratives around data;
 - Data visualization creates engaging visuals to communicate insights.

# Glossary