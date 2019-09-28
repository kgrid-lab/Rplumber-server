#* @apiTitle Simple API
#* Predict
#* @post /predict
function(req, res) {
  library(jsonlite)
  inputs <- fromJSON(req$postBody)
  test_data <- as.data.frame(inputs)
  source("predict.R", local=TRUE)
  output <- as.data.frame(result)
}
