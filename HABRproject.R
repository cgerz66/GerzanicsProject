#This is my R project on Harmful Algal Blooms 

library(dplyr)
library(ggplot2)

HAB_data<- read.csv("../data/habsos_20190211.csv")
print(HAB_data)

ggplot(HAB_data, aes(x=sample_depth, y=cellcount)) + 
  geom_point(size=3, color = "blue", alpha = 0.5)

ggplot(HAB_data, aes(x=salinity, y=cellcount)) + #create plot of sample date and salinity
  geom_point(size=3, color = "blue", alpha = 0.5) +
  labs(x = "salinity (ppt)", y = "cell count")

head(HAB_data)
  
HAB_data%>% mutate(water_temp_qa = NULL)
HAB_data%>% mutate(wind_dir_qa = NULL)



