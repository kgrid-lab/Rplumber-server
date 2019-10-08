# Rplumber-server
A test server powered by R plumber as the first step to convert the model in R script into a knowledge object.  

The purpose of this exploratory work is to convert the existing research model in R script into the form of knowledge object and provide the web service API enabled by R package `plumber`.

## Required IDE and R packages

The test server requires [RStudio](https://rstudio.com/products/rstudio/download/) to run.

You can install packages by
- using RStudio UI under `Tool -> Install Packages`, or,
- using the console command

For example,

```
install.packages("randomForest")
```

The following packages are needed to run the R script KO in the test server:
- remote
- jsonlite
- randomForest
- yaml

Additionally, a dev version of `plumber` is needed for the test server to be able to serve the customized OpenAPI yaml file.
To install the dev version, run
```
remotes::install_github("trestletech/plumber")
```

## start the server

To start the server, go to Rstudio Console and run the command
```
source("server.R")
```

A Swagger UI will open in a separate window for you to try the API.

### Test Server Routes
The test server mounts three routes, each with an endpoint
- `/99999-hepc/predict`
- `/hello-world/welcome`
