# Install necessary packages 
install.packages("tidyverse")
install.packages("skimr")
install.packages("DataExplorer")
install.packages("GGally")

# Load the libraries
library(tidyverse)
library(skimr)
library(DataExplorer)
library(GGally)
#Reading CSv File
data=read.csv("C:\\Users\\ACER\\OneDrive\\Documents\\animelist22.csv")

#display the structure of data
str(data)

#Summary of data/summary statistics
summary(data)

#view the first few rows of the data set
head(data)

#view last few rows of the data set
tail(data)

#Data cleaning
#check for missing values
sum(is.na(data))

#visualize missing data
plot_missing(data)

#finds the location of missing values
which(is.na(data))

#Handle missing values
data_clean<-na.omit(data)

#UNIVARIATE ANALYSIS
#Examine the distribution of individual variables
#summary statistics using skimr
skim(data_clean)

#visualize numerical variables
plot_histogram(data_clean)

#Visualize categorical variables
plot_bar(data_clean)

#BIVARIATE ANALYSIS
#Explore relationships between pairs of variable
#correlation matrix for numerical variables
plot_correlation(data_clean,type='continuous')

#scatter plot matrix for numerical variables
ggpairs(data_clean)

#Box plots
ggplot(data_clean,aes(x=factor_variable,y=numerical_variable))+geom_boxplot()
