library(SDSFoundations)

survey = StudentSurvey

hist(survey$name_letters)

mean_pop = mean(survey$name_letters)
std_pop = sd(survey$name_letters)

# Draw 1000 sample of size 5
xbar5 = rep(NA, 1000)
for (i in 1:1000) {
  s = sample(survey$name_letters, 5)
  m = mean(s)
  xbar5[i] = m
}
hist(xbar5)

mean_sample5 = mean(xbar5)
std_sample5 = sd(xbar5)

# Draw 1000 sample of size 15
xbar15 = rep(NA, 1000)
for (i in 1:1000) {
  s = sample(survey$name_letters, 15)
  m = mean(s)
  xbar15[i] = m
}
hist(xbar15)

mean_sample15 = mean(xbar15)
std_sample15 = sd(xbar15)

# Draw 1000 sample of size 25
xbar25 = rep(NA, 1000)
for (i in 1:1000) {
  s = sample(survey$name_letters, 25)
  m = mean(s)
  xbar25[i] = m
}
hist(xbar25)

mean_sample25 = mean(xbar25)
std_sample25 = sd(xbar25)
