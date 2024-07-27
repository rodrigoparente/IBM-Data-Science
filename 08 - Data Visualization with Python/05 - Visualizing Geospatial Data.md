# Introduction to Folium

 - Folium is a Python library that allows you to create interactive web maps from your data;
 - It combines the power of Leaflet.js (a popular JavaScript mapping library) with the simplicity and flexibility of Python.
 - Folium is ideal for visualizing geospatial data, such as locations, routes, and boundaries.

**Features**

 - Folium generates maps that users can interact with, zoom in/out, and explore;
 - You can add markers, popups, and tooltips to specific locations on the map;
 - Folium supports creating choropleth maps (color-coded maps based on data values);
 - Folium seamlessly integrates with pandas DataFrames for easy data manipulation and visualization.

**Use Cases**

 - Use Folium to explore and understand geographical datasets interactively;
 - Embed Folium maps in data science reports, Jupyter notebooks, or web applications;
 - Create web-based dashboards or applications with interactive maps.

**Example of Code**

In this example:
 - We create a map centered at the coordinates `[40.7128, -74.0060]` (New York City).
 - A marker is added to the map with a popup displaying "New York City."
 - The resulting map is saved as an HTML file (`my_map.html`).

    ```python
    import folium

    # Create a map centered at a specific location
    my_map = folium.Map(location=[40.7128, -74.0060], zoom_start=12)

    # Add a marker to the map
    folium.Marker(location=[40.7128, -74.0060], popup="New York City").add_to(my_map)

    # Save the map as an HTML file
    my_map.save("my_map.html")
    ```

# Summary

 - Folium is a data visualization library in Python that helps people visualize geospatial data; 
 - Markers play a vital role in enhancing interactivity and adding context to maps;
 - A choropleth map is a thematic map in which areas are shaded or patterned in proportion to the measurement of the statistical variable.

# Glossary