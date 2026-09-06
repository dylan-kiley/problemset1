gait <- read_csv("621_MMC_gait.csv")

summary(gait)
str(gait)

boxplot(walk_time ~ numdisease, data=gait,
        xlab="Number of Chronic Diseases", ylab="Walk Time (seconds)",
        main="4-Meter Walk Time by Disease Count")