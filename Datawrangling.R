library(tidyverse)
library(readxl)
library(dplyr)

df1 <- read_excel("Newstate.xlsx")
df2 <- read_excel("children.xlsx")
head(df1)
head(df2)

Total <- merge(df1,df2, by="Location", all.x=TRUE)
head(Total)

write.csv(Total, file = "Total.csv", row.names = FALSE)