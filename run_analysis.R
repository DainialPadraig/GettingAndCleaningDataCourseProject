## run_analysis.R
##   An R script to create a tidy data set from the "Human Activity Recognition
## Using Smartphones Data Set" sourced from the UCI Machine Learning Repository.
##
## Coursera Getting and Cleaning Data Course Project
## Course offering #8
##
## Dan Stormont
## 26 October 2014

## A function to check if the file specified in the fileName argument already 
## exists in the ./data folder and create the folder and/or download the file
## at the URL specified in fileUrl if it doesn't exist.
getDataSet <- function(fileName, fileUrl) {
   if (!file.exists("./data")) {
       dir.create("./data")
   }
   filePath <- paste("./data", fileName, sep = "/")
   if (!file.exists(filePath)) {
       download.file(fileUrl, destfile = filePath, method = "curl")
   }
}

run_analysis <- function() {
    
    ## Get the Samsung dataset, if it isn't already downloaded.
    fileName <- "UCI_HAR_Dataset.zip"
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    getDataSet(fileName, fileUrl)
}