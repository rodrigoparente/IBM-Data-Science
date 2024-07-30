# Practice Assignment Overview

This assignment is split into two parts. Part 1 will give you the opportunity to demonstrate your plotting and visualization skills and Part 2 is about creating and customizing dashboards.

**Part 1:** Analyzing the wildfire activities in Australia
**Part 2:** Dashboard to display charts based on selected Region and Year

# Data Description

This wildfire dataset contains data on fire activities in Australia starting from 2005. Additional information can be found [here](https://earthdata.nasa.gov/earth-observation-data/near-real-time/firms/c6-mcd14dl?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMSkillsNetworkDV0101ENCoursera2761-2023-01-01).

The dataset includes the following variables:

 - **Region**: the 7 regions;
 - **Date**: in UTC and provide the data for 24 hours ahead;
 - **Estimated_fire_area**: daily sum of estimated fire area for presumed vegetation fires with a confidence > 75% for a each region in km2;
 - **Mean_estimated_fire_brightness**: daily mean (by flagged fire pixels(=count)) of estimated fire brightness for presumed vegetation fires with a confidence level > 75% in Kelvin;
 - **Mean_estimated_fire_radiative_power**: daily mean of estimated radiative power for presumed vegetation fires with a confidence level > 75% for a given region in megawatts;
 - **Mean_confidence**: daily mean of confidence for presumed vegetation fires with a confidence level > 75%;
 - **Std_confidence**: standard deviation of estimated fire radiative power in megawatts;
 - **Var_confidence**: Variance of estimated fire radiative power in megawatts;
 - **Count**: daily numbers of pixels for presumed vegetation fires with a confidence level of larger than 75% for a given region;
 - **Replaced**: Indicates with an Y whether the data has been replaced with standard quality data when they are available (usually with a 2-3 month lag). Replaced data has a slightly higher quality in terms of locations.

# Part 1 : Analyzing the wildfire activities in Australia

The objective of this part of the Practice Assignment is to analyze and visualize the wildfire activities in Australia using the provided dataset. You will explore patterns and trends, and create visualizations to gain insights into the behavior of wildfires in different regions of Australia.

In this lab you will create visualizations using Matplotlib, Seaborn, Pandas and Folium.

# Part 2 : Dashboard to display charts based on selected Region and Year

The objective of this part of the practice assignment is to create dashboards to contain your plots and charts.

In this lab you will create dashboards using Dash and Plotly and then add user-interactions to your dashboards.