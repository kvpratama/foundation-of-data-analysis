library(SDSFoundations)

WR = WorldRecords

# Lab 5

menmile = WR[WR$Event == 'Mens Mile',]
womenmile = WR[WR$Event == 'Womens Mile',]

plot(menmile$Year,menmile$Record,main='Mens Mile World Records',xlab='Year',ylab='World Record Time (s)',pch=16)
plot(womenmile$Year,womenmile$Record,main='Womens Mile World Records',xlab='Year',ylab='World Record Time (s)',pch=16)

linFit(menmile$Year, menmile$Record)
linFit(womenmile$Year, womenmile$Record)

# Question 1

menpolevault = WR[WR$Event == 'Mens Polevault' & WR$Year >= 1970,]

plot(menpolevault$Year,menpolevault$Record,main='Mens Polevault World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

linFit(menpolevault$Year, menpolevault$Record)
#linFit(menpolevault$Record, menpolevault$Year)

# Question 2
#C = c(140, 280, 420, 560)
#h = c(0, 2, 4, 6)
#plot(C, h)
#linFit(C,h)
