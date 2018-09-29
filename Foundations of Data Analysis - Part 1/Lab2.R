animaldata = AnimalData

adult_dog = animaldata[animaldata$Animal.Type == 'Dog' & animaldata$Age.Intake >=1,]
adult_cat = animaldata[animaldata$Animal.Type == 'Cat' & animaldata$Age.Intake >=1,]

hist(adult_dog$Weight)
hist(adult_cat$Weight)

fivenum(adult_dog$Weight)
fivenum(adult_cat$Weight)

adult_dog_weight_mean = mean(adult_dog$Weight)
adult_dog_weight_sd = sd(adult_dog$Weight)

adult_cat_weight_mean = mean(adult_cat$Weight)
adult_cat_weight_sd = sd(adult_cat$Weight)

(13-adult_cat_weight_mean) / adult_cat_weight_sd
(13-adult_dog_weight_mean) / adult_dog_weight_sd

1-pnorm(2.3)
1-pnorm(-0.9660889)

max(adult_dog$Weight)

table(animaldata$Intake.Type)
table(adult_dog$Intake.Type)

dog = animaldata[animaldata$Animal.Type == 'Dog',]
table(dog$Intake.Type)

81/291

owner_surrender = dog[dog$Intake.Type == 'Owner Surrender',]
table(owner_surrender$Outcome.Type)

mean(owner_surrender[owner_surrender$Outcome.Type == 'Return to Owner',]$Days.Shelter)
owner_surrender[owner_surrender$Outcome.Type == 'Return to Owner',]

barplot(dog$Intake.Type)
