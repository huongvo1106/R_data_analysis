library(nlme)
x <- "******************************"
x
getwd()
setwd("/Users/huongphucquynhvo/InnovationX/Bias_AI")
file <- read.csv("data.csv")
file_clean <- file[!(file$PhFemalePitchMean%in% c("444","999","9999999")),]
x <- "Hispanic***********************"
x
asian <- file_clean
asian$Race[asian$Race != 8] <- 0
asian$Race[asian$Race == 8] <- 1

summary(lme(PhFemalePitchMean ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Other*****************************"
x
asian <- file_clean
asian$Race[asian$Race != 7] <- 0
asian$Race[asian$Race == 7] <- 1

summary(lme(PhFemalePitchMean ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))


x <- "Multi-racial**************************"
x
asian <- file_clean
asian$Race[asian$Race != 6] <- 0
asian$Race[asian$Race == 6] <- 1


summary(lme(PhFemalePitchMean ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Caucasian**************************"
x
asian <- file_clean
asian$Race[asian$Race != 5] <- 0
asian$Race[asian$Race == 5] <- 1


summary(lme(PhFemalePitchMean ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Black American**************************"
x
asian <- file_clean
asian$Race[asian$Race != 4] <- 0
asian$Race[asian$Race == 4] <- 1


summary(lme(PhFemalePitchMean ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Asian**************************"
x
asian <- file_clean
asian$Race[asian$Race != 2] <- 0
asian$Race[asian$Race == 2] <- 1


summary(lme(PhFemalePitchMean ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))

x <- "Native Hawaiian**************************"
x
asian <- file_clean
asian$Race[asian$Race != 3] <- 0
asian$Race[asian$Race == 3] <- 1


summary(lme(PhFemalePitchMean ~ Race, 
            random = ~ Time | ID/ID_index, 
            data=asian))
