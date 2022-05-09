library(nlme)
x <- "******************************"
x
getwd()
setwd("/Users/huongphucquynhvo/InnovationX/Bias_AI")
file <- read.csv("data.csv")
file_clean <- file[!(file$CCSexual%in% c("444","999","9999999")),]
total <- nrow(file_clean)
print(total)
x <- "Hispanic***********************"
x
asian <- file_clean
asian$Race[asian$Race != 8] <- 0
asian$Race[asian$Race == 8] <- 1
race_total = sum(asian$Race == 1)
print(race_total)
print("Percent")
print(race_total / total)
summary(lme(CCSexual ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Other*****************************"
x
asian <- file_clean
asian$Race[asian$Race != 7] <- 0
asian$Race[asian$Race == 7] <- 1
print(length(which(asian$Race == 0)))
print(length(which(asian$Race == 1)))
race_total = sum(asian$Race == 1)
print(race_total)
print("Percent")
print(race_total / total)
summary(lme(CCSexual ~ Race, 
            random = ~ Time | ID/ID_index,
            data=asian))



x <- "Multi-racial**************************"
x
asian <- file_clean
asian$Race[asian$Race != 6] <- 0
asian$Race[asian$Race == 6] <- 1
print(length(which(asian$Race == 0)))
print(length(which(asian$Race == 1)))
race_total = sum(asian$Race == 1)
print(race_total)
print("Percent")
print(race_total / total)
summary(lme(CCSexual ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Caucasian**************************"
x
asian <- file_clean
asian$Race[asian$Race != 5] <- 0
asian$Race[asian$Race == 5] <- 1
print(length(which(asian$Race == 0)))
print(length(which(asian$Race == 1)))
race_total = sum(asian$Race == 1)
print(race_total)
print("Percent")
print(race_total / total)
summary(lme(CCSexual ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Black American**************************"
x
asian <- file_clean
asian$Race[asian$Race != 4] <- 0
asian$Race[asian$Race == 4] <- 1
print(length(which(asian$Race == 0)))
print(length(which(asian$Race == 1)))
race_total = sum(asian$Race == 1)
print(race_total)
print("Percent")
print(race_total / total)
summary(lme(CCSexual ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Asian**************************"
x
asian <- file_clean
asian$Race[asian$Race != 2] <- 0
asian$Race[asian$Race == 2] <- 1
print(length(which(asian$Race == 0)))
print(length(which(asian$Race == 1)))
race_total = sum(asian$Race == 1)
print(race_total)
print("Percent")
print(race_total / total)
summary(lme(CCSexual ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Native Hawaiian**************************"
x
asian <- file_clean
asian$Race[asian$Race != 3] <- 0
asian$Race[asian$Race == 3] <- 1
print(length(which(asian$Race == 0)))
print(length(which(asian$Race == 1)))
race_total = sum(asian$Race == 1)
print(race_total)
print("Percent")
print(race_total / total)
summary(lme(CCSexual ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))
