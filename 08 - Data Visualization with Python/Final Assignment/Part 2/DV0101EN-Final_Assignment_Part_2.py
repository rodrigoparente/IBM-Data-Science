from dash import Dash, html, dcc, Output, Input
import plotly.express as px
import pandas as pd


app = Dash()

# load the data using pandas
data = pd.read_csv('https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/historical_automobile_sales.csv')  # noqa E501

year_list = [i for i in range(1980, 2024, 1)]

app.layout = [
    # TASK 2.1: Create a Dash application and give it a meaningful title
    html.H1(
        'Automobile Sales Statistics Dashboard',
        style={'textAlign': 'center', 'color': '#503D36', 'font-size': 24}
    ),
    # TASK 2.2: Add drop-down menus to your dashboard with appropriate titles and options
    html.Div(
        children=[
            dcc.Dropdown(
                id='dropdown-statistics',
                options=[
                    {'label': 'Yearly Statistics', 'value': 'Yearly Statistics'},
                    {'label': 'Recession Period Statistics', 'value': 'Recession Period Statistics'}
                ],
                placeholder='Select a report type',
                value='Select Statistics',
                style={'width': '99%', 'font-size': '20px', 'text-align': 'center', 'display': 'inline-block'}
            ),
            dcc.Dropdown(
                id='select-year',
                options=[{'label': i, 'value': i} for i in year_list],
                placeholder='Select-year',
                value='Select-year',
                style={'width': '99%', 'font-size': '20px', 'text-align': 'center', 'display': 'inline-block'}
            )
        ],
        style={'display': 'flex'}
    ),
    # TASK 2.3: Add a division for output display with appropriate id and classname property
    html.Div([
        html.Div(id='output-container', className='chart-grid', style={'display': 'flex'}),
    ])
]


# TASK 2.4: Define the callback function to update the input container
# based on the selected statistics and the output container
@app.callback(
    Output(component_id='select-year', component_property='disabled'),
    Input(component_id='dropdown-statistics', component_property='value'))
def update_input_container(selected_statistics):
    if selected_statistics == 'Yearly Statistics':
        return False
    else:
        return True


@app.callback(
    Output(component_id='output-container', component_property='children'),
    [
        Input(component_id='dropdown-statistics', component_property='value'),
        Input(component_id='select-year', component_property='value')
    ]
)
def update_output_container(selected_statistics, input_year):
    # TASK 2.5: Create and display graphs for Recession Report Statistics
    # Filter the data for recession periods
    if selected_statistics == 'Recession Period Statistics':
        recession_data = data[data['Recession'] == 1]

        # plot 1 Automobile sales fluctuate over Recession Period (year wise)
        # use groupby to create relevant data for plotting
        yearly_rec = recession_data.groupby('Year')['Automobile_Sales'].mean().reset_index()
        R_chart1 = dcc.Graph(
            figure=px.line(
                yearly_rec, x='Year', y='Automobile_Sales',
                title="Average Automobile Sales fluctuation over Recession Period"))

        # plot 2 Calculate the average number of vehicles sold by vehicle type
        # use groupby to create relevant data for plotting
        average_sales = recession_data.groupby('Vehicle_Type')['Automobile_Sales'].mean().reset_index()
        R_chart2 = dcc.Graph(
            figure=px.line(
                average_sales, x='Vehicle_Type', y='Automobile_Sales',
                title='Average Automobile Sales for each Vehicle Type in the Recession Period'))

        # plot 3 Pie chart for total expenditure share by vehicle type during recessions
        # use groupby to create relevant data for plotting
        exp_rec = recession_data.groupby('Vehicle_Type')['Advertising_Expenditure'].sum().reset_index()
        R_chart3 = dcc.Graph(
            figure=px.pie(
                exp_rec, values='Advertising_Expenditure', names='Vehicle_Type',
                title='Total Expenditure for each Vehicle Type during the Recession'))

        # plot 4 bar chart for the effect of unemployment rate on vehicle type and sales
        # use groupby to create relevant data for plotting
        unemp_data = recession_data.groupby(['Vehicle_Type', 'unemployment_rate'])
        unemp_data = unemp_data['Automobile_Sales'].mean().reset_index()
        R_chart4 = dcc.Graph(
            figure=px.bar(
                unemp_data, x='unemployment_rate', y='Automobile_Sales', color='Vehicle_Type',
                labels={'unemployment_rate': 'Unemployment Rate', 'Automobile_Sales': 'Average Automobile Sales'},
                title="Effect of Unemployment Rate on Sales of various Vehicle Types")
        )

        return [
            html.Div(
                className='chart-item',
                children=[
                    html.Div(children=R_chart1),
                    html.Div(children=R_chart3)
                ], style={'display': 'inline-block'}),
            html.Div(
                className='chart-item',
                children=[
                    html.Div(children=R_chart2),
                    html.Div(children=R_chart4)
                ], style={'display': 'inline-block'})
        ]

    # TASK 2.6: Create and display graphs for Yearly Report Statistics
    # Yearly Statistic Report Plots
    elif (input_year and selected_statistics == 'Yearly Statistics'):
        yearly_data = data[data['Year'] == input_year]

        # plot 1 Yearly Automobile sales using line chart for the whole period.
        yas = data.groupby('Year')['Automobile_Sales'].mean().reset_index()
        Y_chart1 = dcc.Graph(
            figure=px.line(
                yas, x='Year', y='Automobile_Sales',
                title="Average Automobile Sales fluctuation over Recession Period (Year Wise)"))

        # plot 2 Total Monthly Automobile sales using line chart
        mas = data.groupby('Month')['Automobile_Sales'].mean().reset_index()
        Y_chart2 = dcc.Graph(
            figure=px.line(
                mas, x='Month', y='Automobile_Sales',
                title="Total Monthly Automobile Sales"))

        # plot 3 Plot bar chart for average number of vehicles sold during that given year
        avr_vdata = yearly_data.groupby('Vehicle_Type')['Automobile_Sales'].sum().reset_index()
        Y_chart3 = dcc.Graph(
            figure=px.bar(
                avr_vdata, x='Vehicle_Type', y='Automobile_Sales',
                title=f'Average Vehicles Sold by Vehicle Type in the year {input_year}'))

        # plot 4 Total Advertisement Expenditure for each vehicle using pie chart
        exp_data = yearly_data.groupby('Vehicle_Type')['Advertising_Expenditure'].sum().reset_index()
        Y_chart4 = dcc.Graph(
            figure=px.pie(
                exp_data, names='Vehicle_Type', values='Advertising_Expenditure',
                title=f'Total Advertisement Expenditure by Vehicle Type in the year {input_year}'))

        return [
            html.Div(
                className='chart-item',
                children=[
                    html.Div(children=Y_chart1),
                    html.Div(children=Y_chart3)
                ], style={'display': 'inline-block'}),
            html.Div(
                className='chart-item',
                children=[
                    html.Div(children=Y_chart2),
                    html.Div(children=Y_chart4)
                ], style={'display': 'inline-block'})
        ]

    return None


if __name__ == '__main__':
    app.run(debug=True)
