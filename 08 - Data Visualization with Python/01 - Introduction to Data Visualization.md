# Overview of Data Visualization

 - Data visualization is the representation of data through visual attributes that are easy to understand;
 - It involves using visual elements such as charts, diagrams, maps, and interactive pieces to convey information effectively
 - The Benefits of Data Visualization are:
    - **Clarity**: visualizations simplify complex data, making it easier to interpret;
    - **Efficiency**: visuals allow faster comprehension than lengthy written descriptions;
    - **Precision**: well-designed visualizations reveal precise details and patterns.
 - Some examples of plots and what they can communicate:
    - **Bar Charts**: compare values across categories;
    - **Line Charts**: show trends over time;
    - **Pie Charts**: display parts of a whole;
    - **Scatter Plots**: visualize relationships between two variables;
    - **Heatmaps**: depict data density using color gradients.
 - Data visualization can be divide into two categories:
    - **Interactive Visualizations**: engage users and enhance understanding;
    - **Storytelling Dashboards**: combine visuals to tell a data-driven story.
 - Popular tools include **Tableau**, **Power BI**, **Matplotlib**, and **Seaborn**.

# Types of Plot

Here are some common types of data plots used in data visualization, along with examples in Python:

**Line Plot**:

 - Displays data as a series of data points connected by straight lines;
 - Visualizing stock prices over a month.

    ```python
    import matplotlib.pyplot as plt

    x = [1, 2, 3, 4, 5]
    y = [10, 15, 20, 18, 25]

    plt.plot(x, y)
    plt.xlabel('X-axis')
    plt.ylabel('Y-axis')
    plt.title('Line Plot Example')
    plt.show()
    ```

**Bar Chart**

 - Displays data using rectangular bars;
 - The height or length of the bars represents the magnitude of the data;
 - Comparing sales across different product categories.

    ```python
    import matplotlib.pyplot as plt

    categories = ['A', 'B', 'C', 'D']
    values = [10, 20, 15, 30]

    plt.bar(categories, values)
    plt.xlabel('Categories')
    plt.ylabel('Values')
    plt.title('Bar Chart Example')
    plt.show()
    ```

**Scatter Plot**:

 - Uses cartesian coordinates to display values for two variables;
 - Value of one variable determines the position on the horizontal axis, and the value of the other variable determines the position on the vertical axis;
 - Plotting height vs. weight for a group of individuals.

    ```python
    import matplotlib.pyplot as plt

    x = [1, 2, 3, 4, 5]
    y = [10, 15, 20, 18, 25]

    plt.scatter(x, y)
    plt.xlabel('X-axis')
    plt.ylabel('Y-axis')
    plt.title('Scatter Plot Example')
    plt.show()
    ```

**Box Plot**:

 - Displays the distribution of continuous data along with key statistical measures;
 - Represents the interquartile range as a box, a median line, and whiskers indicating range;
 - Represents outliers as individual data points beyond whiskers;
 - Comparing salaries across different job roles.

    ```python
    import matplotlib.pyplot as plt

    data = [10, 15, 20, 18, 25, 22, 30, 28]

    plt.boxplot(data)
    plt.ylabel('Values')
    plt.title('Box Plot Example')
    plt.show()
    ```

**Histogram**:

 - Graphical representation of data distribution;
 - Shows frequency or relative frequency within intervals;
 - Bars represent the data count in each interval;
 - Analyzing the distribution of exam scores.

    ```python
    import matplotlib.pyplot as plt

    data = [10, 15, 20, 18, 25, 22, 30, 28]

    plt.hist(data, bins=5)
    plt.xlabel('Values')
    plt.ylabel('Frequency')
    plt.title('Histogram Example')
    plt.show()
    ```

# Plot Libraries

Some popular Python libraries used in data science and visualization:

**Matplotlib**

 - Matplotlib is a versatile plotting library for creating static, publication-quality visualizations. It provides fine-grained control over aesthetics such as fonts, colors, and line styles;
 - Commonly used for creating line plots, scatter plots, bar charts, histograms, and more;
 - Often integrated with pandas for exploratory data analysis (EDA).

    ```python
    import matplotlib.pyplot as plt
    plt.scatter(x=[1, 2, 3], y=[10, 15, 8])
    plt.xlabel('X-axis')
    plt.ylabel('Y-axis')
    plt.title('Scatter Plot using Matplotlib')
    plt.show()
    ```

**Pandas**
 
 - Pandas is a powerful data manipulation library that simplifies working with structured data (e.g., tabular data, time series). It provides data structures like DataFrames and Series;
 - Data cleaning, transformation, and exploration;
 - Built-in plotting methods (based on Matplotlib) for quick visualizations.
 
    ```python
    import pandas as pd
    data = {'Date': ['2022-01-01', '2022-01-02'], 'Value': [10, 15]}
    df = pd.DataFrame(data)
    df.plot(x='Date', y='Value', kind='line')
    ```

**Seaborn**

 - Seaborn is a statistical data visualization library built on top of Matplotlib. It simplifies creating aesthetically pleasing plots with fewer lines of code;
 - Ideal for visualizing statistical relationships, distributions, and categorical data;
 - Enhances Matplotlib plots with better default styles.

    ```python
    import seaborn as sns
    tips = sns.load_dataset('tips')
    sns.scatterplot(x='total_bill', y='tip', data=tips, hue='sex')
    sns.regplot(x='total_bill', y='tip', data=tips, scatter=False)
    ```

**Plotly**

 - Plotly is an interactive plotting library that generates web-based visualizations. It's suitable for geographical, scientific, statistical, and financial data;
 - Creates interactive plots (e.g., scatter plots, 3D plots, heatmaps);
 - Well-integrated with pandas and offers interactivity.

    ```python
    import plotly.express as px
    df = px.data.iris()
    fig = px.scatter(df, x='sepal_width', y='sepal_length', color='species')
    fig.show()
    ```

# Summary

 - Process of presenting data visually (charts, graphs, maps) for easy understanding and analysis;
 - Diverse use cases across business, science, healthcare, and finance;
 - Best practices include appropriate visualizations, readable fonts, and clutter reduction.

# Glossary