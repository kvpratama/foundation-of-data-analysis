#reading
pop = c(35,8,13,64,13,87,193,124,11,6)
mill = c(86,18,22,141,26,207,368,228,20,11)

cor(pop, mill)

line(pop, mill)
line(mill, pop)

exercise = c(0,2,2,1,3,1,2,0,3,3,4,1,1,1,2)
memory_test = c(15,3,12,11,5,8,15,13,2,4,2,8,10,12,8)

plot(exercise, memory_test)
abline(lm(memory_test~exercise))

line(exercise, memory_test)

# R Tutorial

library(SDSFoundations)

men = WorldRecords[WorldRecords$Event == 'Mens 100m',]
men

plot(men$Year, men$Record)

men800 = WorldRecords[WorldRecords$Event == 'Mens 800m',]
men800

plot(men800$Year, men800$Record)
linFit(men800$Year, men800$Record)


#PreLab

table(WorldRecords$Event)

usain = WorldRecords[WorldRecords$Athlete == 'Usain Bolt',]
usain

womens_mile = WorldRecords[WorldRecords$Event == 'Womens Mile',]
womens_mile[order(womens_mile$Year),]

#Subset the data
menshot <- WorldRecords[WorldRecords$Event=='Mens Shotput',]
womenshot <- WorldRecords[WorldRecords$Event=='Womens Shotput',] 

#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)

