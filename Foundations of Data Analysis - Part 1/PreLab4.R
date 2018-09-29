acl_a30 = AustinCityLimits[AustinCityLimits$Age >= 30,]

# Table of Marginal distributions
table(acl_a30$Gender)
table(acl_a30$Genre)

# Contingency Table
c_table = table(acl_a30$Gender, acl_a30$Genre)
c_table

# Visualize the counts
barplot(c_table, legend= T, beside = T)

# Calculate P(A) : prob of each genre being played
prop.table(table(acl_a30$Genre))

# Calculate P(A|B) : prob of each genre being played given gender
genre_tab = prop.table(c_table,1)
genre_tab

# Male >= 30
table(acl_a30$Gender)

# prop_table = prop.table(c_table)
# prop_table
#
# gender_tab = prop.table(c_table,2)
# gender_tab
# 
# barplot(gender_tab, legend=T)
# barplot(t(genre_tab), legend=T, beside=T)
