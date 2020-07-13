library(astsa, quietly=TRUE, warn.conflicts=FALSE)
library(ggplot2)
library(knitr)
library(printr)
library(plyr)
library(dplyr)
library(lubridate)
library(gridExtra)
library(reshape2)
library(TTR)
library(openxlsx)

data("EuStockMarkets")
EuStockMarkets

# Time Series:
#   Start = c(1991, 130) 
# End = c(1998, 169) 
# Frequency = 260 
plot.ts(EuStockMarkets)

dax<-EuStockMarkets[,1]
plot.ts(dax)

logdax <- log(dax)
plot.ts(logdax)

daxSMA3 <- SMA(dax, n=9)
plot.ts(daxSMA3)

daxComp <- decompose(dax)
plot(daxComp)

