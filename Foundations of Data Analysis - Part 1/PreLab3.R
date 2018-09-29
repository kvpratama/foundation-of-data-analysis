#Subset Column
bull_riders13 = BullRiders[,c('Events13','Rides13', 'Top10_13')]
bull_riders13

#Select only rider with >0 event participation in 2013
bull_riders13 = bull_riders13[bull_riders13$Events13 > 0,]
bull_riders13

hist(bull_riders13$Rides13)
fivenum(bull_riders13$Rides13)
mean(bull_riders13$Rides13)
sd(bull_riders13$Rides13)

hist(bull_riders13$Top10_13)
fivenum(bull_riders13$Top10_13)
mean(bull_riders13$Top10_13)
sd(bull_riders13$Top10_13)

#Create a Scatterplot
plot(bull_riders13$Rides13, bull_riders13$Top10_13)

#Add line of best fit
abline(lm(bull_riders13$Top10_13~bull_riders13$Rides13))

#Calculate the correlation coefficient
cor(bull_riders13$Rides13, bull_riders13$Top10_13)
#cor(bull_riders13$Top10_13, bull_riders13$Rides13)

#Correlation Matrix
vars = c('Rides13', 'Top10_13')
cor(bull_riders13[,vars])

#Outlier rider
which(bull_riders13$Rides13>20 & bull_riders13$Top10_13<9)
which(bull_riders13$Rides13==22 & bull_riders13$Top10_13==2)
bull_riders13[4,]
