1. What type of data does a Bar Chart best represent?

- [ ] Location Data
- [ ] Numerical
- [x] Categorical
- [ ] None of the above

2. What are the total number of columns in the features dataframe after applying one-hot encoding to columns `Orbits`, `LaunchSite`, `LandingPad`, and `Serial`?  
Here, the features dataframe consists of the following columns: `FlightNumber`, `PayloadMass`, `Orbit`, `LaunchSite`, `Flights`, `GridFins`, `Reused`, `Legs`, `LandingPad`, `Block`, `ReusedCount`, `Serial`

- [ ] 120
- [ ] 80
- [ ] 83
- [x] 96

3. The catplot code to show the scatterplot of `FlightNumber` vs `LaunchSite` with `x` as `FlightNumber`, `y` as `LaunchSite`, and `hue` as `Class` is:

- [ ] `sns.catplot(y="LaunchSite", x="FlightNumber", hue="Class", data=df, aspect=1, kind='cat')`  
      `plt.ylabel("Launch Site", fontsize=15)`  
      `plt.xlabel("Flight Number", fontsize=15)`  
      `plt.show()`

- [ ] `sns.catplot(y="LaunchSite", x="FlightNumber", hue="Class", data=df, aspect=1)`  
      `plt.ylabel("Launch Site", fontsize=15)`  
      `plt.xlabel("Flight Number", fontsize=15)`  
      `plt.show()`

- [x] `sns.catplot(y="LaunchSite", x="FlightNumber", hue="Class", data=df, aspect=1, kind='scatter')`  
      `plt.ylabel("Launch Site", fontsize=15)`  
      `plt.xlabel("Flight Number", fontsize=15)`  
      `plt.show()`

- [ ] `sns.catplot(y="LaunchSite", x="FlightNumber", hue="Class", col="Class", data=df, aspect=1)`  
      `plt.ylabel("Launch Site", fontsize=15)`  
      `plt.xlabel("Flight Number", fontsize=15)`  
      `plt.show()`
      `plt.show()`
