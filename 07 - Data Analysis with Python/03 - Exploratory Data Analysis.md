# Descriptive Statistics

 - Before building models, explore your data by calculating descriptive statistics;
 - Descriptive statistical analysis provides a summary of a dataset's basic features;
 - Use Pandas' `describe` function to compute basic statistics for numerical variables (mean, count, standard deviation, quartiles, extreme values);
 - `describe` function skips NaN values and helps understand variable distribution;
 - Categorical variables have discrete values and can be divided into categories;
 - Use `value_counts` to summarize categorical data;
 - Box plots visualize numeric data distributions, showing median, quartiles, inter-quartile range, and outliers;
 - Box plots help compare groups and spot outliers;
 - Scatter plots show relationships between two variables (predictor on x-axis, target on y-axis);
 - Use Matplotlib's `scatter` function for scatter plots; label axes and add titles for clarity.

# GroupBy

 - `groupby` groups data into subsets based on categorical variables;
 - Transform grouped data into a pivot table using Pandas' `pivot` method for easier visualization;
 - Pivot tables display one variable along columns and another along rows;
 - Use a heatmap plot to visualize pivot table data, assigning color intensity based on data values;
 - Heatmaps provide visual clues about relationships between variables and the target variable.

# Correlation

 - Correlation is a statistical measure that describes how two variables are related to each other;
 - It can be a:
    - **Positive Correlation:** as one variable increases, the other variable also increases;
    - **Negative Correlation:** as one variable increases, the other variable decreases;
    - **Zero Correlation:** no relationship between the variables;
 - Heatmaps provide an overview of relationships between variables, especially their correlation with price.

## Correlation Statistics

 - Correlation is often quantified using a correlation coefficient, which ranges from -1 to 1;
 - A value close to 1 indicates a strong positive correlation, a value close to -1 indicates a strong negative correlation, and a value around 0 indicates no correlation;
 - Pearson Correlation measures the strength of correlation between continuous numerical variables;
 - P-value indicates certainty of the correlation:
    - **< 0.001:** Strong certainty;
    - **0.001 - 0.05:** Moderate certainty;
    - **0.05 - 0.1:** Weak certainty;
    - **> 0.1:** No certainty.

# Summary

 - Descriptive statistical analysis provides a summary of a dataset's basic features;
 - Use `groupby` to explore relationships between categorical variables;
 - Correlation measures how changes in one variable relate to another.

# Glossary