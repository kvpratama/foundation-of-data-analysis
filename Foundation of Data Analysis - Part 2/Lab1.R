library(SDSFoundations)

survey = StudentSurvey

happy = survey$happy
hist(happy)

mean_happy = mean(happy)
std_happy = sd(happy)

# Draw 1000 sample of size 5
xbar5 = rep(NA, 1000)
for (i in 1:1000) {
  s = sample(happy, 5)
  m = mean(s)
  xbar5[i] = m
}
hist(xbar5)
mean_happy5 = mean(xbar5)
std_happy5 = sd(xbar5)

# Draw 1000 sample of size 15
xbar15 = rep(NA, 1000)
for (i in 1:1000) {
  s = sample(happy, 15)
  m = mean(s)
  xbar15[i] = m
}
hist(xbar15)
mean_happy15 = mean(xbar15)
std_happy15 = sd(xbar15)

# Draw 1000 sample of size 25
xbar25 = rep(NA, 1000)
for (i in 1:1000) {
  s = sample(happy, 25)
  m = mean(s)
  xbar25[i] = m
}
hist(xbar25)
mean_happy25 = mean(xbar25)
std_happy25 = sd(xbar25)


### Problem Set 1
austin = survey$austin
hist(austin)

austin_mean = mean(austin)
austin_std = sd(austin)

xbar10 = rep(NA, 1000)
for (i in 1:1000) {
  s = sample(austin, 10)
  m = mean(s)
  xbar10[i] = m
}
hist(xbar10)
mean_austin10 = mean(xbar10)
std_austin10 = sd(xbar10)
