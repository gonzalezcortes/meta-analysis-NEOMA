#Meta-analysis workshop
#libraries

#call psychmeta library
library(psychmeta)

#get wd automaticly 
setwd(getwd())

#Open data in folder data
#Dummy data
data <- read.csv("data/data_code.csv", sep = ";")

meta<-ma_r(data = data,
           ma_method = "ic",
           rxyi = "r",
           n = "N",
           construct_x = "x_name",
           construct_y = "y_name",
           rxx = "rxxi",
           ryy = "ryyi",
           clean_artifacts = TRUE,
           impute_artifacts = TRUE) 
summary(meta)

moderator <- "SampleType"
meta.Mod<-ma_r(data = data,
               ma_method = "ic",
               rxyi = "r",
               n = "N",
               construct_x = "x_name",
               construct_y = "y_name",
               rxx = "rxxi",
               ryy = "ryyi",
               clean_artifacts = TRUE,
               impute_artifacts = TRUE,
               moderators = moderator,
               cat_moderators = c(TRUE),
               moderator_type = "simple")
summary(meta.Mod)
