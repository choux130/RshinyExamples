# Introduction
This repo is about how to combine [R Shiny](https://shiny.rstudio.com/) and [Dash](https://dash.plotly.com/) into a same app which makes users think they are really from the same app but actually they are not. With some tricks, R Shiny users and Dash users can develop on the same app without any problems. This is exactly how I work with my current colleagues in one of our company internal products!

# Local Test
* Build
    ```
    cd Rshiny_Dash
    docker-compose build 
    ```
* Deploy locally
    ```
    docker-compose up
    ```
    Go to [http://localhost:9090](http://localhost:9090)
* Clean up 
    ```
    docker-compose down
    ```