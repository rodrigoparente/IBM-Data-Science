# Dashboard Overview

 - In data science, a dashboard is a tool that brings together data from various sources and summarizes it visually using key performance indicators (KPIs);
 - These visualizations, such as charts and graphs, provide a concise overview of key metrics, allowing decision-makers to quickly grasp trends and patterns without manual analysis;
 - Dashboards play a crucial role in making data-driven decisions, offering real-time insights, improving efficiency, and enhancing collaboration among teams;
 - Bellow there are some web-based dashboarding tools available in Python:
    - **Dash:** a Python framework for building web analytic applications. It runs on top of ``Flask``, ``Plotly.js``, and ``React.js``. Dash allows you to create highly customized data visualization apps with interactive features;
    - **Panel:** works with visualizations from ``Bokeh``, ``Matplotlib``, ``HoloViews``, and other Python plotting libraries. It enables instant viewing of visualizations, either individually or combined with interactive widgets. Panel is versatile, working well in Jupyter Notebooks and as a standalone deployed app in dashboards;
    - **Voila:** converts ``Jupyter notebooks`` into standalone web applications. It's compatible with layout tools like Jupyter-flex or templates like voila-vuetify;
    - **Streamlit:** easily transforms data scripts into shareable web apps. It follows three principles: embrace Python scripting, treat widgets as variables, and reuse data and computation.

# Introduction to Plotly

 - Plotly is an interactive, open-source plotting library for Python;
 - It supports over 40 unique chart types, making it versatile for various use cases;
 - It's built on top of the Plotly JavaScript library (plotly.js);
 - You can display Plotly charts:
    - In Jupyter notebooks;
    - Save them as standalone HTML files;
    - Integrate them into Python-built web applications using Dash.
 - Plotly two main sub-modules are:
    - ``plotly.graph_objects``: that provides objects for designing figures and visualizing data;
    - ``plotly.express``: is a high-level API within the Plotly library for creating interactive visualizations in Python.
 - You can install Plotly using pip:
 
     ```bash
     pip install plotly==5.23.0
     ```
 
 - Or via conda:
     ```bash
     conda install -c plotly plotly=5.23.0
     ```

 - Bellow a simple bar chart using ``plotly.graph_objects`` and ``plotly.express``:

    ```python
    import plotly.graph_objects as go
    fig = go.Figure(go.Scatter(x=[1, 2, 3], y=[4, 5, 6]))
    ```

     ```python
     import plotly.express as px
     fig = px.bar(x=["a", "b", "c"], y=[1, 3, 2])
     fig.write_html('first_figure.html', auto_open=True)
     ```

# Summary

 - In data science, a dashboard is a tool that brings together data from various sources and summarizes it visually using key performance indicators (KPIs);
 - Plotly is an interactive, open-source plotting library for Python.

# Glossary