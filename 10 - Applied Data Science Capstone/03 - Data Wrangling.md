# Data Wrangling

**Attributes to Review**

 - Flight Number;
 - Date;
 - Booster Version;
 - Payload Mass;
 - Orbit;
 - Launch Site;
 - Outcome;
 - Flights;
 - Grid Fins;
 - Reused;
 - Legs;
 - Landing Pad;
 - Block;
 - Reused Count;
 - Serial;
 - Longitude and Latitude of Launch.

**Launch Sites**

 - Vandenberg AFB Space Launch;
 - Kennedy Space Center;
 - CCAFS SLC 40.

**Orbits**

 - Altitude up to 2,000 km (LEO - Low Earth Orbit);
 - High Earth orbit matching Earth's rotation at 35,786 km (GTO - Geosynchronous Transfer Orbit).

**Outcome**

 - Indicates if the first stage successfully landed:
    - Booster landed successfully on a drone ship (True ASDS);
    - Booster did not land successfully on a drone ship (False ASDS).

**Classification**

 - Variable $Y$ Represents the classification variable for the outcome of each launch:
    - $0$ for bad outcome (booster did not land);
    - $1$ for good outcome (booster did land).