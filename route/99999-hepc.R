#* @apiTitle Simple API
#* Predict
#* @post /predict
function(req, res) {
  library(jsonlite)
  inputs <- fromJSON(req$postBody)
  test_data <- as.data.frame(inputs)
  source("shelf/99999-hepc/predict.R", local=TRUE)
  output <- as.data.frame(result)
}
