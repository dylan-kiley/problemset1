library(tidyverse)
ce621 <- read_csv("ce621.csv")

summary(ce621)
table(ce621$sex, useNA = "ifany")
table(ce621$smoker, useNA = "ifany")

ce621.male = filter(ce621, sex=="Male")
ce621.female = filter(ce621, sex=="Female")

stem(ce621.male$totchg)
stem(ce621.female$totchg)

summary(ce621.male$totchg)
sd(ce621.male$totchg)
quantile(ce621.male$totchg, c(0, .10, .25, .50, .75, .90, 1))

summary(ce621.female$totchg)
sd(ce621.female$totchg)
quantile(ce621.female$totchg, c(0, .10, .25, .50, .75, .90, 1))

ce621e <- read_csv("ce621entire.csv")
ce621e95 = filter(ce621e, year==1995)

ce621e95$agecat = cut(ce621e95$age, c(0, 50, 64, 100), right=TRUE, labels=c("<=50","51-64",">=65"))