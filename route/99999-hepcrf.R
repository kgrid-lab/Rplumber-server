#* @apiTitle Simple API
#* @post /predict
rfpredict <- function(req, res) {
  library(jsonlite)
  inputs <- fromJSON(req$postBody)
  test_data <- as.data.frame(inputs)
  source("shelf/99999-hepcrf/predict.R", local=TRUE)
  output <- as.data.frame(result)
}

#* @get /test
function(req, res) {
  library(jsonlite)
  inputs <- fromJSON('shelf/99999-hepcrf/testdata.json')
  test_data <- as.data.frame(inputs$input)
  expected <-as.data.frame(inputs$output)
  source("shelf/99999-hepcrf/predict.R", local=TRUE)
  output <- as.data.frame(result)
  print(all.equal(expected, output,check.attributes = FALSE))
}

#* @get /inputschema
#* @serializer unboxedJSON
function(req, res) {
  library(jsonlite)
  fromJSON('shelf/99999-hepcrf/schema.json')
}
