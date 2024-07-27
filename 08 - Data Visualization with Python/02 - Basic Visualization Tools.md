# Area Plot

 - Area chart (also known as an area plot) is a graphical representation that displays quantitative data;
 - An area chart emphasizes the area between the axis (usually the x-axis) and a line (or lines);
 - It is commonly used to show how one or more groups' numeric values change over time or another variable;
 - The area between the line(s) and the baseline (often the x-axis) is filled with colors, textures, or hatchings;
 - There are two types of area plots.
    1. **Overlapping Area Chart**:
        - Compares values between groups (series).
        - Each group's line is shaded from its value to a zero baseline.
        - Transparency helps distinguish overlapping groups.
        - Useful for showing how a whole is divided into parts.

    2. **Stacked Area Chart**:
        - Lines are plotted one at a time, with the height of the most recently-plotted group serving as a moving baseline.
        - Fully-stacked height corresponds to the total when summing across all groups.
        - Helps track total value and breakdown by groups.
 - Bellow is a basic example of an area plot using the `Matplotlib` library:

    ```python
    import matplotlib.pyplot as plt
    import numpy as np

    # Generate example data
    x = np.arange(0.0, 2, 0.01)
    y1 = np.sin(2 * np.pi * x)
    y2 = 0.8 * np.sin(4 * np.pi * x)

    # Create subplots
    fig, (ax1, ax2, ax3) = plt.subplots(3, 1, sharex=True, figsize=(6, 6))

    # Fill between y1 and 0
    ax1.fill_between(x, y1)
    ax1.set_title('Fill between y1 and 0')

    # Fill between y1 and 1
    ax2.fill_between(x, y1, 1)
    ax2.set_title('Fill between y1 and 1')

    # Fill between y1 and y2
    ax3.fill_between(x, y1, y2)
    ax3.set_title('Fill between y1 and y2')
    ax3.set_xlabel('x')

    # Adjust layout
    fig.tight_layout()

    # Show the plot
    plt.show()
    ```

# Histogram Plot

 - A histogram is a graphical representation of the distribution of quantitative data;
 - It shows how data points are distributed across different intervals (bins);
 - Each bin represents a range of values, and the height of the bar indicates the frequency (count) of data points falling within that range.
 - Bellow is a basic example of a histogram plot using the `Matplotlib` library:

    ```python
    import matplotlib.pyplot as plt
    import numpy as np

    # Generate random data (two normal distributions)
    rng = np.random.default_rng(19680801)
    N_points = 100000
    dist1 = rng.standard_normal(N_points)
    dist2 = 0.4 * rng.standard_normal(N_points) + 5

    # Create subplots
    fig, axs = plt.subplots(1, 2, sharey=True, tight_layout=True)

    # Plot histograms
    n_bins = 20
    axs[0].hist(dist1, bins=n_bins)
    axs[1].hist(dist2, bins=n_bins)

    plt.show()
    ```

# Bar Chart

 - A bar chart (also known as a bar graph) represents data graphically using rectangular bars;
 - Each bar's height corresponds to the data it represents;
 - Bar charts are commonly used to compare values across different categories or discrete data points;
 - They highlight differences between categories and help identify relationships;
 - Bellow is a basic example of a bar plot using the `Matplotlib` library:

    ```python
    import matplotlib.pyplot as plt
    import numpy as np

    # Example data
    categories = ['A', 'B', 'C', 'D', 'E']
    values = [23, 45, 56, 78, 213]

    # Create a basic bar chart
    plt.bar(range(len(values)), values, color='royalblue', alpha=0.7)
    plt.xticks(range(len(values)), categories)
    plt.xlabel('Class')
    plt.ylabel('Amounts')
    plt.title('Bar Chart Example')
    plt.show()
    ```

