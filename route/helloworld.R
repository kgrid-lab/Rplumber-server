#' Hello world
#' @post /welcome
function(req, res) {
  library(jsonlite)
  inputs <- fromJSON(req$postBody)
  list(msg = paste0("Welcome to Knowledge Grid, ", inputs$name, "!"))
}
