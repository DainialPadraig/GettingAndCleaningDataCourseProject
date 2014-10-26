GettingAndCleaningDataCourseProject
===================================

Repository containing code and documentation for the Coursera Getting and Cleaning Data Course Project.

## Contents of this repository
- README.md - This file that describes the contents of the repo and using the R script contained in it.
- CodeBook.md - The code book for this data set that describes the variables and data, as well as any transformations made to the data to make a clean data set.
- run_analysis.R - The R script that analyzes the Mobilephone data set used for this project. The script is described in the next section.

## Using run_analysis.R

run_analysis.R performs the following steps:
- Checks to see if the data set has already been downloaded to the local drive and downloads it if it hasn't.
- Creates data frames for the training and test data sets from the zipped data file.
- Reduces the dimensionality of the data sets to only the essential variables and ensures the data exists.
- Combines the data sets into a single data set.
- Ensures the data names are meaningful.
- Creates a tidy data set and saves it so it can be used for later analysis.

 *The script assumes the data file will be named "UCI_HAR_Dataset.zip" and that it is installed in the ./data directory.*
 
**To use run_analysis.R, source the run_analysis.R script and run it by entering run_analysis at the R prompt. The script should handle the rest automatically.**