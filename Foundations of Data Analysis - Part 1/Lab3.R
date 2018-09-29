bull_riders12 = BullRiders[BullRiders$Events12 > 0,]

hist(bull_riders12$Earnings12)
fivenum(bull_riders12$Earnings12)

plot(bull_riders12$RidePer12, bull_riders12$Earnings12)
cor(bull_riders12$RidePer12, bull_riders12$Earnings12)

plot(bull_riders12$CupPoints12, bull_riders12$Earnings12)
cor(bull_riders12$CupPoints12, bull_riders12$Earnings12)

which(bull_riders12$Earnings12 == max(bull_riders12$Earnings12))
bull_riders12[4,]

# Remove Outlier
nooutlier = bull_riders12[bull_riders12$Earnings12 < 1000000,]
plot(nooutlier$RidePer12, nooutlier$Earnings12)
cor(nooutlier$RidePer12, nooutlier$Earnings12)
plot(nooutlier$CupPoints12, nooutlier$Earnings12)
cor(nooutlier$CupPoints12, nooutlier$Earnings12)

#########
#Question

bull_riders14 = BullRiders[BullRiders$Rides14 > 0,]

rides_per_event14 = bull_riders14$Rides14/bull_riders14$Events14
hist(rides_per_event14)
fivenum(rides_per_event14)

plot(rides_per_event14, bull_riders14$Rank14)
abline(lm(bull_riders14$Rank14~rides_per_event14))
cor(rides_per_event14, bull_riders14$Rank14)


mins_study = c(30,45,180,95,130,140,30,80,60,110,0,80)
exam_grade = c(74,68,87,90,94,84,92,88,82,93,65,90)
cor(mins_study, exam_grade)
plot(mins_study, exam_grade)

# Remove Outlier
mins_study = c(30,45,180,95,130,140,80,60,110,0,80)
exam_grade = c(74,68,87,90,94,84,88,82,93,65,90)
cor(mins_study, exam_grade)
plot(mins_study, exam_grade)
