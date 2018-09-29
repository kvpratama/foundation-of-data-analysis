animaldata = AnimalData
males = animaldata[animaldata$Sex == 'Male',]

adopted = animaldata[animaldata$Outcome.Type == 'Adoption',]
daystoadopt = adopted$Days.Shelter

hist(daystoadopt)
fivenum(daystoadopt)

max(daystoadopt)
which(adopted$Days.Shelter==max(daystoadopt))

adopted[187,]

daystoadopt_mean = mean(daystoadopt)
daystoadopt_std = sd(daystoadopt)
z_211 = (211 - daystoadopt_mean) / daystoadopt_std
