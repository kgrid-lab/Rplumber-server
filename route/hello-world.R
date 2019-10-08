#' Hello world
#' @post /welcome
function(req, res) {
  library(jsonlite)
  inputs <- fromJSON(req$postBody)
  name = inputs$name
  source('shelf/hello-world/hello.R', local=TRUE)
  output <- as.data.frame(result)
}
