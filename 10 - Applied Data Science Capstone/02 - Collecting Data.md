# Collecting Data

**Objective**

 - Work with SpaceX launch data from the SpaceX REST API;
 - Predict whether SpaceX will attempt to land a rocket.

**Data Source**

 - SpaceX REST API: `api.spacexdata.com/v4/launches/past`;
 - API provides data on rockets, payloads, launch specs, landing specs, and outcomes;
 - Use the `requests` library to perform GET requests and retrieve JSON data;
 - Convert JSON data to a DataFrame using `json_normalize`.

**Additional Data Source**

 - Web scraping Falcon 9 launch data from Wiki pages using BeautifulSoup;
 - Parse HTML tables and convert to a Pandas DataFrame.

**Data Preparation**

 - Transform raw data into a clean dataset;
 - Handle issues like:
    - Data wrangling using API;
    - Sampling data to exclude Falcon 1 launches;
    - Dealing with NULL values, particularly in the `PayloadMass` column;
    - Replace NULL values in `PayloadMass` with the mean;
    - Leave NULL values in the `LandingPad` column for one-hot encoding later.

**Functions Provided**

 - Functions to gather specific data for each ID (e.g., Booster, Launchpad, Payload, Core).

**Goal**

 - Create a dataset for visualization and analysis;
 - Use the clean dataset to predict the likelihood of SpaceX reusing the first stage.