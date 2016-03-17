## just a start to correlate different variables with death of patient

library(dplyr)
library(reshape2)
a <- read.csv("statsathon/AIS_train70.csv")

b <- tbl_df(a)

correlations  <- cor(b$died, b[,3:1232])

tcorrs <- melt(t(correlations))

ranked_corrs <- arrange(tcorrs, desc(abs(value)))
