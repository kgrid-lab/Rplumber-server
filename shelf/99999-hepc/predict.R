library(randomForest)
## load("outputRF.Rdata")
load("shelf/99999-hepc/outputRF.Rdata")

## The test data contains a dummy column "CRP_response"
## in order to use the predict() function, the value could be set to either T or F
## and is not used in the prediction

## test_data = read.csv("test_outputRF2.csv")

##remove the first column which is the row number automatically created in CSV
## test_data = test_data[,-1]

##transform the sex race ethnics to correct factors
test_data$sex = factor(test_data$sex,levels=c("F","M"))
test_data$race =factor(test_data$race,levels=c("AMERICAN INDIAN OR ALASKA NATIVE",
                                               "ASIAN","BLACK OR AFRICAN AMERICAN",
                                               "MULTIPLE","NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER",
                                               "NOT REPORTED","OTHER","UNKNOWN","WHITE"))
test_data$ethnic =factor(test_data$ethnic,levels=c("HISPANIC OR LATINO","NOT HISPANIC OR LATINO",
                                                   "NOT REPORTED","UNKNOWN"))

## print(test_data)
result <- predict(rf_out_clean,newdata = test_data,type="prob")
