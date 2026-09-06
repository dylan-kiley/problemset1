library(tidyverse)
ce621 <- read_csv("ce621.csv")

summary(ce621)
table(ce621$sex, useNA = "ifany")
table(ce621$smoker, useNA = "ifany")

ce621.male = filter(ce621, sex=="Male")
ce621.female = filter(ce621, sex=="Female")

stem(ce621.male$totchg)
stem(ce621.female$totchg)