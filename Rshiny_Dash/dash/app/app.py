import dash
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output
from pages import *

external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']
app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

app.layout = html.Div([
    dcc.Location(id='url', refresh=False),
    html.Div(className = "header", children = [
            html.Div(className = "header-left", children = [
                html.A(href = "/", className = "menu", id = 'dash1', children = "Dash1"),
                html.A(href = "/dash2", className = "menu", id = 'dash2', children = "Dash2"),
                html.A(href = "/shiny/?shiny1", className = "menu rshiny_1", children = "Rshiny1"),
                html.A(href = "/shiny/?shiny2", className = "menu rshiny_2", children = "Rshiny2")
            ])
    ]),
    html.Div(id='page-content')
])

@app.callback(Output('page-content', 'children'),
              Output('dash1', 'className'), 
              Output('dash2', 'className'),
              [Input('url', 'pathname')])
def display_page(pathname):
    if pathname == "/":
        return page_dash1.layout, "active menu", "menu"
    elif pathname == '/dash2':
        return page_dash2.layout, "menu", "active menu"
    else:
        return page_invalid.layout, "menu", "menu"

if __name__ == '__main__':
    app.run_server(debug=False, host= '0.0.0.0', port=8050)