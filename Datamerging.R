## Wild Horse Ecological Interactions Analysis
## White Mountain Sites
## Boggy and Wildcat Creek Grazed Sites
## Writing a final CVS for training
## 03/19/2019
## Written by Brandon Mayer

library("ggplot2", lib.loc="~/R/win-library/3.5")
library("dplyr", lib.loc="~/R/win-library/3.5")
library("xlsx", lib.loc="~/R/win-library/3.5")

## clear the enviroment
rm(list=ls(all=TRUE))
dev.off()

## set working directory and check if it's correct
setwd('C:/Users/BrandonMayer/Dropbox/Field_Research/MLProject/Excel_finals')
getwd()

## read in data
df1 <- read.csv('D:/MLphotos/Wildcat_18/WCS_Total_Photos/WCS_Total_Photos.csv')
View(df1)
df2 <- read.csv('D:MLphotos/Wildcat_18/WCS_Analysis_2018/WCS_Analysis_2018.csv')
View(df2)

## see similar files exist and if it matcches total in the to-be merged csv 
length(intersect(df1$ImageFilename,df2$ImageFilename))

## INNER JOIN: returns rows when there is a match in both tables.
df3<- merge(df1, df2, by ="ImageFilename", all=TRUE)


## Remove NAs and add 0s in ImageID column
df3[is.na(df3)] <- 0

# Write the first data set in a new workbook
write.csv(df4, file = "Wildcat2018Final.csv")
