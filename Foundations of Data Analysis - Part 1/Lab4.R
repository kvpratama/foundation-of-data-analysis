male = AustinCityLimits[AustinCityLimits$Gender == "M",]

genre = table(male$Genre)
genre

grammy = table(male$Grammy)
grammy

c_table = table(male$Grammy, male$Genre)
c_table

barplot(c_table, legend=T, beside = T)

prop_genre = prop.table(c_table,2)
prop_genre

barplot(prop_genre, legend=T)

prop_grammy = prop.table(table(male$Grammy))
prop_grammy

# Question 1

fb_age = AustinCityLimits

table(fb_age$Age.Group)
table(fb_age$Facebook.100k)

c_table = table(fb_age$Facebook.100k, fb_age$Age.Group)
c_table

# P(A and B)
cond_table = prop.table(c_table)
cond_table

pop = prop.table(c_table, 1)
pop

age_group = prop.table(c_table, 2)
age_group
