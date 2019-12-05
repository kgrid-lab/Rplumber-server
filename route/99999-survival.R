#* @serializer json list(digits = 12)
#* @apiTitle Simple API
#* @post /predict
rfpredict <- function(req, res) {
  library(jsonlite)
  inputs <- fromJSON(req$postBody)
  datanew <- as.data.frame(inputs)
  source("shelf/99999-survival/predict.R", local=TRUE)
  output <- as.data.frame(result)
}

#* @get /test
function(req, res) {
  library(jsonlite)
  inputs <- fromJSON('shelf/99999-survival/testdata.json')
  datanew <- as.data.frame(inputs$input)
  expected <-as.data.frame(inputs$output)
  source("shelf/99999-survival/predict.R", local=TRUE)
  output <- as.data.frame(result)
  print(all.equal(expected, output, check.attributes = FALSE, tolerance = 1e-6))
}

#* @get /inputschema
#* @serializer unboxedJSON
function(req, res) {
  library(jsonlite)
  fromJSON('shelf/99999-survival/schema.json')
}
