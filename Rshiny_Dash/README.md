# Introduction
This repo is about how to combine [R Shiny](https://shiny.rstudio.com/) and [Dash](https://dash.plotly.com/) to make people think they are looking at one app rather than two apps from two separate frameworks. This is might not be the best practice, but definitely a workable way to make R Shiny developer and Dash developer work together without having both sides compromise too much. This is exactly how our team do in one of our internal projects and so far everything runs smoothly. :blush:

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

![image](https://drive.google.com/uc?export=view&id=1mRj-gJc9QRKQWr2TDm05GAo8c23V-46k)
