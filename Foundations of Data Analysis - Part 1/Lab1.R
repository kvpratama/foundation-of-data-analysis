bike = BikeData

daily_bike = bike[bike$cyc_freq == "Daily", ]

table(daily_bike$gender)

mean(daily_bike$age)

male_daily = daily_bike[daily_bike$gender == 'M',]
female_daily = daily_bike[daily_bike$gender == 'F',]
mean(male_daily$age)
mean(female_daily$age)

male_above_30 = male_daily[male_daily$age >= 30,]
