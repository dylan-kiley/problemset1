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

boxplot(totchg ~ sex + agecat, data=ce621e95, 
        names=c("F <= 50", "M <= 50", "F 51-64", "M 51-64", "F >=65", "M >=65"),
        col=c("pink", "lightblue"), 
        ylab="Total Charge ($)", 
        main="Carotid Endarterectomy Costs by Sex and Age (1995)")

ce621e95$log10chg = log10(ce621e95$totchg)