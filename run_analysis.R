library(dplyr)
library(plyr)
library(reshape2)

setwd("C://Users//arun.gopalkrishnan//Documents//R Work//proj")

featureLabels <- read.table("features.txt")
featureLabels$V3 <- gsub("\\.","",make.names(featureLabels$V2))

#--Put Test Data in Shape

VariableData <- read.table("test/X_test.txt", col.names = featureLabels$V3)
activity <- read.table("test/Y_test.txt")

activityLabels <- read.table("activity_labels.txt")
activity2 <- join(activity,activityLabels,by = "V1", type="left")

Testdata <- data.frame(read.table("test/subject_test.txt"), "TEST", activity2$V2,VariableData)
names(Testdata)[1] <- "SUB_ID"
names(Testdata)[2] <- "TYPE"
names(Testdata)[3] <- "ACTIVITY"

Testdata2 <- melt(Testdata, id=c("SUB_ID","TYPE","ACTIVITY"),measure.vars = c(4:564))

Testdata3 <- subset(Testdata2, grepl("*mean*",Testdata2$variable, ignore.case = TRUE) | grepl("*std*",Testdata2$variable, ignore.case = TRUE))



#--Put Train Data in Shape

VariableData <- read.table("train/X_train.txt", col.names = featureLabels$V3)

activity <- read.table("train/Y_train.txt")

activityLabels <- read.table("activity_labels.txt")
activity2 <- join(activity,activityLabels,by = "V1", type="left")

Traindata <- data.frame(read.table("train/subject_train.txt"), "TRAIN", activity2$V2,VariableData)
names(Traindata)[1] <- "SUB_ID"
names(Traindata)[2] <- "TYPE"
names(Traindata)[3] <- "ACTIVITY"

Traindata2 <- melt(Traindata, id=c("SUB_ID","TYPE","ACTIVITY"),measure.vars = c(4:564))

Traindata3 <- subset(Traindata2, grepl("*mean*",Traindata2$variable, ignore.case = TRUE) | grepl("*std*",Traindata2$variable, ignore.case = TRUE))



#--Merge Test and Train - Q1

MergeData <- rbind(Testdata3, Traindata3)
head(MergeData,5)


# ---- Aggregate of each variable - Q2

AggData <- aggregate(MergeData$value, by=list(MergeData$SUB_ID,MergeData$TYPE,MergeData$ACTIVITY,MergeData$variable),FUN=mean)
names(AggData)
names(AggData)[1] <- "SUB_ID"
names(AggData)[2] <- "TYPE"
names(AggData)[3] <- "ACTIVITY"
names(AggData)[4] <- "Variable"
names(AggData)[5] <- "Value"

write.table(AggData,file ="AggData.txt" ,row.name=FALSE)
head(AggData)
