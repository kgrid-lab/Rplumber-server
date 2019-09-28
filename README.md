# Rplumber-server
A test server powered by R plumber as the first step to convert the model in R script into a knowledge object.  

The purpose of this exploratory work is to convert the existing research model in R script into the form of knowledge object and provide the web service API enabled by R package `plumber`.

## Required IDE and R packages

The test server requires [RStudio](https://rstudio.com/products/rstudio/download/) to run.

You can install packages by
- using RStudio UI under `Tool -> Install Packages`, or,
- using the console command
```
install.packages("plumber")
```

The following packages are needed to run the R script KO in the test server:
- plumber
- jsonlite
- randomForest
- yaml

## start the server

To start the server, go to Rstudio Console and run the command
```
source("server.R")
```

A Swagger UI will open in a separate window for you to try the API.

### Test Server Routes
The test server mounts three routes, each with an endpoint
`/index/predict`
`/index-2/predict`
`helloworld/welcome`

Both '/predict' endpoints use the same HepC example prediction script, with different output format.
