Getdata-project1
================
This project is from "Getting and Cleaning Data" course assignment on COURSERA.

Data source of this assignment:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files including in this repo are:  

- Codebook:  
  Check out the details of data and variables.  
  
- Rscript: run_analysis.R  
  The Rscript will  
  1. download the zip file from the source url and unzip to tempfile
  2. read out train/test dataset and merge
  3. name each column of variables descriptively and label each row of observations appropriately
  4. extract out values of mean and standard deviation, and integrate each variables by activities per subject

- data2  
  The final output of cleaned dataset, as "data2.txt"
