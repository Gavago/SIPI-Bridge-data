###########
# Welcome to R in R Studio!
###########


#######
# 1. Install tools to access data
#######

install.packages("tidyverse")
library(tidyverse)
install.packages("devtools", type = "win.binary") #possibly also install "usethis")
library(devtools) 
install_github("Gavago/SIPI-Bridge-data")
library(sipibridge)

#######
# 2. View data sets
#######

View(cancer)
#### https://data.world/adamhelsinger/cancer-rates-by-u-s-state
View(hum_traff)
#### https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/additional-publications/human-trafficking
View(city_crime)
#### https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/topic-pages/tables/table-4
View(gun_deaths)
#### data collection: https://www.cdc.gov/nchs/nvss/deaths.htm
View(diabetes)
#### https://www.kaggle.com/uciml/pima-indians-diabetes-database

str()
names()

#####
# 3. Learn to manipulate data in the dplyr package - watch & copy Nicole
######


# pipe %>% and select()




# filter()




# summarize()





# mutate() --- 



# update the data frame with <- "assignment"



# but new var needs to be a factor ---



# group_by() + summarize()---- 




######
# 3. Learn to manipulate data in the dplyr package - Fill in the blank
######

# a. find the maximum value of a continuous ("num") variable in your data set
str(DATA)

DATA %>%
  filter(VARIABLE == max(VARIABLE))

# b. find the *mean* value of a different continuous ("num") variable in your data set
str(DATA)

mean(DATA$VARIABLE)

# c. filter the data set to observations where the value of the variable is above average

DATA %>%
  filter(VARIABLE > mean(VARIABLE))

# d. create a new categorical variable based on the inequality

DATA %>%
  mutate(NEW_VARIABLE_NAME = as.factor(VARIABLE > mean(VARIABLE)))

# e. now find the average of a continuous variable according to a categorical variable

DATA %>%
  group_by(CATEGORICAL) %>%
  summarise(avg_VARIABLE = mean(VARIABLE))
  
  
########
# 4. Question driven exploration --- discuss with, watch, and copy Nicole
########











#######
# 5. Reform teams - what functions needed to answer your questions?
#######

# Role switch:
# lead investigator becomes reporter
# reporter becomes scribe
# scribe becomes lead investigator

# 1 - list below the functions you can use to answer each of your questions
# either write the command in full or explain in a sentence 
# how you would use the function. Reporters be ready to share with the class.
#
#
#
#
#
#
