  # Read in the files
  features <- read.table("features.txt")
  activityLables <- read.table("activity_labels.txt")
  yTrain <- read.table("train/Y_train.txt")
  xTrain <- read.table("train/X_train.txt")
  subjectTrain <- read.table("train/subject_train.txt")
  yTest <- read.table("test/Y_test.txt")
  xTest <- read.table("test/X_test.txt")
  subjectTest <- read.table("test/subject_test.txt")

  # Piece the data together
  colnames(yTrain) <- c("Activity label")
  colnames(subjectTrain) <- c("Subject ID")
  colnames(xTrain) <- features$V2
  meanStdOnly <- grep("mean[()]|std[()]", colnames(xTrain))
  xTrain <- xTrain[c(meanStdOnly)]
  xyTrain <- cbind(subjectTrain,yTrain,xTrain)
  
  colnames(yTest) <- c("Activity label")
  colnames(xTest) <- features$V2
  colnames(subjectTest) <- c("Subject ID")
  meanStdOnly <- grep("mean[()]|std[()]", colnames(xTest))
  xTest <- xTest[c(meanStdOnly)]  
  xyTest <- cbind(subjectTest,yTest,xTest)  
  
  appended <- rbind(xyTrain, xyTest)
  
  # Change the activity label numbers to labels
  activityLabels.code <- c(Walking=1, `Walking upstairs`=2, `Walking downstairs`=3, Sitting=4, Standing=5, Laying=6)
  appended[,2] <- names(activityLabels.code)[match(appended[,2], activityLabels.code)]

  # Fix the variable names
  cleanedNames <- colnames(appended)
  cleanedNames <- gsub("[(][)]-X"," on the X axis",cleanedNames)
  cleanedNames <- gsub("[(][)]-Y"," on the Y axis",cleanedNames)
  cleanedNames <- gsub("[(][)]-Z"," on the Z axis",cleanedNames)
  cleanedNames <- sub("std","standard deviation",cleanedNames)
  cleanedNames <- sub("fBody","Fast Fourier transformed body ",cleanedNames)
  cleanedNames <- sub("tBody","Time domain body ",cleanedNames)
  cleanedNames <- sub("tGravity","Time domain gravity ",cleanedNames)
  cleanedNames <- sub("Acc","acceleration ",cleanedNames)
  cleanedNames <- gsub("[(][)]|-"," ",cleanedNames)
  cleanedNames <- sub("Mag"," magnitude",cleanedNames)
  cleanedNames <- sub("Gyro"," gyroscopic",cleanedNames)
  cleanedNames <- sub("Jerk"," jerk",cleanedNames)
  cleanedNames <- sub("body Body","body",cleanedNames)
  cleanedNames <- sub("  ", " ",cleanedNames)
  cleanedNames <- gsub(" $","",cleanedNames)
  colnames(appended) <- cleanedNames

  # Sort the data
  tidy1 <- appended[order(appended[,1],appended[,2]),]
  
  # Write the data to a file named tidy1.txt
  write.table(tidy1, file = "tidy1.csv", sep = ",", row.names = FALSE)
  
  # Reshape the data and then calculate averages
  tempNames <- colnames(appended)
  colnames(appended) <- gsub("\\s","", colnames(appended))
  melted <- melt(appended,id=c(1,2), measure.vars=c(3:68))
  averaged <- ddply(melted,.(SubjectID,Activitylabel,variable),summarize,summ=ave(value))
  uniqued <- unique(averaged)
  
  # Put data back in its original shape
  tidy2 <- dcast(uniqued, SubjectID + Activitylabel ~ variable, value.var="summ")
  colnames(tidy2) <- tempNames
  tidy2 <- tidy2[order(tidy2[,1],tidy2[,2]),]
  
  # Write the averages data to a file
  write.table(tidy2, file = "tidy2.csv", sep = ",", row.names = FALSE)
