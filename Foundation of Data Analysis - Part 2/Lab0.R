library(SDSFoundations)

bike = BikeData

# Find the number of student
table(bike$student)

# Pull out student data into a new dataframe
student = bike[bike$student == 1,]

# How often studen ride
table(student$cyc_freq)

# Calculate average distance
distance = student$distance
avg_distance = mean(student$distance)


#####################

# Biking frequency
table(bike$cyc_freq)

# Daily biking male number
daily = bike[bike$cyc_freq == 'Daily', ]
table(daily$gender)

# Average age of daily riders
avg_age_daily = mean(daily$age)

# Compare average age of daily male and female
male_daily = daily[daily$gender == 'M',]
female_daily = daily[daily$gender == 'F',]

avg_age_daily_male = mean(male_daily$age)
avg_age_daily_female = mean(female_daily$age)


# Subset of male daily riders age 30 or older
male_30_daily = male_daily[male_daily$age >= 30,]
