# Introduction to Dash

 - Dash is a Python framework for building reactive web applications;
 - It's particularly useful for creating data science and machine learning web apps;
 - Developed by Plotly, it allows you to tie UI elements directly to your Python code;
 - Dash two main components are:
    - **`dash_core_components`**: this module provides higher-level components for creating interactive visual elements in your app;
    - **`dash_html_components`**: this module provides basic HTML components that you can use to structure your app's layout.
 - Example of a simple Dash code:
    ```python
    # app.py
    import pandas as pd
    from dash import Dash, dcc, html

    # Load data (for demonstration purposes)
    data = (
        pd.read_csv("avocado.csv")
        .query("type == 'conventional' and region == 'Albany'")
        .assign(Date=lambda data: pd.to_datetime(data["Date"], format="%Y-%m-%d"))
        .sort_values(by="Date")
    )

    # Create a Dash app
    app = Dash(__name__)

    # Define the app layout
    app.layout = html.Div([
        dcc.Dropdown(
            id='dropdown',
            options=[
                {'label': 'Option 1', 'value': 'opt1'},
                {'label': 'Option 2', 'value': 'opt2'}
            ],
            value='opt1'
        ),
        dcc.Graph(
            id='graph',
            figure={
                'data': [
                    {'x': data['Date'], 'y': data['AveragePrice'], 'type': 'line', 'name': 'Average Price'}
                ],
                'layout': {
                    'title': 'Avocado Prices in Albany'
                }
            }
        )
    ])

    if __name__ == '__main__':
        app.run_server(debug=True)
    ```

# Dash Callbacks

 - In Dash, callbacks are functions that automatically get called whenever an input component's property changes;
 - Callbacks allow users to update properties of other components (the outputs) based on user interactions
 - Bellow there is a simple callback code in Dash:

    ```python
    from dash import Dash, dcc, html, Input, Output, callback

    app = Dash(__name__)

    app.layout = html.Div([
        html.H6("Change the value in the text box to see callbacks in action!"),
        html.Div([
            "Input: ",
            dcc.Input(id='my-input', value='initial value', type='text')
        ]),
        html.Br(),
        html.Div(id='my-output'),
    ])

    @callback(
        Output(component_id='my-output', component_property='children'),
        Input(component_id='my-input', component_property='value')
    )
    def update_output_div(input_value):
        return f'Output: {input_value}'

    if __name__ == '__main__':
        app.run(debug=True)
    ```

# Summary

 - Dash is an Open-Source User Interface Python library for creating reactive, web-based applications;
 - It is easy to build Graphical User Interfaces using Dash as it abstracts all technologies required to make the applications.

# Glossary