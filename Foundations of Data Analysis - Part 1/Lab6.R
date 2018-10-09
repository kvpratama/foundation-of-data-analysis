library(SDSFoundations)

world = WorldBankData

denmark = world[world$Country == 'Denmark',]

# Proportion of internet user
denmark$proportion = denmark$internet.users / denmark$population

# Subset of Denmark from the year of 1990 onward
denmark1990onward = denmark[denmark$year >= 1990,]

# Year since 1990
denmark1990onward$year_since_1990 = denmark1990onward$year - 1990

# Function to fit an exponential and logistic model for 1990-2012
expFit(denmark1990onward$year_since_1990, denmark1990onward$proportion)
logisticFit(denmark1990onward$year_since_1990, denmark1990onward$proportion)

# Problem Set Question 1

brazil = world[world$Country == 'Brazil', ]
brazil95 = brazil[brazil$year >= 1995, ]
brazil95$year_since_1995 = brazil95$year - 1995
brazil95$mobile.users = brazil95$mobile.users / 1000000

# Change column name "mobile.users" to "mobile.users.mill"
colnames(brazil95)[colnames(brazil95) == "mobile.users"] <- "mobile.users.mill"

linFit(brazil95$year_since_1995, brazil95$mobile.users.mill)
expFit(brazil95$year_since_1995, brazil95$mobile.users.mill)
logisticFit(brazil95$year_since_1995, brazil95$mobile.users.mill)

l = logisticFitPred(brazil95$year_since_1995, brazil95$mobile.users.mill, 30)

wolf = c(25,45)
year = c(1,3)
e = expFit(year, wolf)
e0 = expFitPred(year, wolf, 0)
e7 = expFitPred(year, wolf, 7)
e10 = expFitPred(year, wolf, 10)
