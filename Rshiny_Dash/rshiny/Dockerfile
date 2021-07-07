FROM rocker/r-ver:4.0.0

RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev

RUN Rscript -e "install.packages('shiny', repos='http://cran.rstudio.com/')"

COPY ./app /app
WORKDIR /app

EXPOSE 3838
CMD ["R", "-e", "shiny::runApp('./', host = '0.0.0.0', port = 3838)"]