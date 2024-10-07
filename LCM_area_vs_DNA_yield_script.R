#Load packages
library(tidyverse)

#Read in the data
lcmb_dataset <- read_csv("data/area_to_dna_lcmb.csv")

#Investigate data
head(lcmb_dataset)

#Plot
ggplot(lcmb_dataset, aes(`Area (um^2)`, `Yield ng/ul`)) +
  geom_point() +
  geom_smooth(method = lm) +
  ggtitle("Investigating the area cut for LCMB against the amount of DNA extracted") +
  xlim(0,400000)
