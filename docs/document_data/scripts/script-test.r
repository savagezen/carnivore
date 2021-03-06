#!/usr/bin/R
# compute descriptive statistics, correlation, and regression from raw.txt

# required pacakges
# - dplyr
# - Hmisc

# library
library("dplyr")
library("Hmisc")

# improt raw .txt to data frame
raw_data <- read.delim("raw_data-test.txt")

# convert data to numerical matrix
df <- as.matrix(as.data.frame(lapply(raw_data, as.numeric)))

# output file - descriptive stats
sink("descriptive_stats-test.txt", split=TRUE, append=FALSE)

# descriptive stats
summary(raw_data)

# output file - correlation and regression
sink("correlation-test.txt", split=TRUE, append=FALSE)

# correlations (r) and significance (p)
rcorr(df, type=c("pearson"))
