#Assignment 4_1 - Session - 4

#Q1: Histogram for all variables in a dataset mtcars. Write a program to create histograms for all columns.

#Solution 1:
library(reshape2)
library(tidyverse)
mpgid <- mutate(mtcars, id=as.numeric(rownames(mtcars)))
mpgstack <- melt(mpgid, id="id")
pl <- qplot(value, data=mpgstack) + facet_wrap(~variable, scales="free")
pl

#Q2: Check the probability distrubution of all variables in mtcars

#Solution 2:
library(reshape2)
library(tidyverse)
mpgid <- mutate(mtcars, id=as.numeric(rownames(mtcars)))
mpgstack <- melt(mpgid, id="id")
pl <- ggplot(mpgstack, aes(value)) +
  facet_wrap(~ variable,scales = "free") +
  stat_density()
pl

#Q3: Write a program to create boxplot for all variables.

#Solution 3:
library(reshape2)
library(tidyverse)
mpgid <- mutate(mtcars, id=as.numeric(rownames(mtcars)))
mpgstack <- melt(mpgid, id="id")
pl <- ggplot(mpgstack, aes(x = variable, y = value)) +
  facet_wrap(~ variable,scales = "free") +
  geom_boxplot()
pl
                