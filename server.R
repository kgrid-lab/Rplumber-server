library(plumber)
make_server <- function(files) {
  pr <- plumber$new()

  for (file in files) {
    print(file)
    prFile <- plumb(file)
    path <- gsub("\\..*$", "", basename(file))
    path <- paste0("/", path)
    pr$mount(path, prFile)
  }

  pr
}

server <- make_server(dir("route", pattern = ".R", full.names = TRUE))
server$run(  port = 7000, 
             swagger = function(pr_, spec, ...) {
               spec <- yaml::read_yaml("service.yaml", handlers = list(seq = function(x) x))
               spec
             })
