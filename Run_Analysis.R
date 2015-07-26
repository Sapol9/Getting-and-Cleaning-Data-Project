library(plyr)

##Load Data
X_train <- read.table("~/Unzipped/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("~/Unzipped/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_train <- read.table("~/Unzipped/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", quote="\"")
X_test <- read.table("~/Unzipped/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("~/Unzipped/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test <- read.table("~/Unzipped/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", quote="\"")                  
features <- read.table("~/Unzipped/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", quote="\"")

##Fix Headers
colnames(features)[2] <- "Headers"
features$Headers <- make.names(features$Headers)

colnames(X_test)
colnames(X_test) <- features[,2 ]

colnames(X_train)
colnames(X_train) <- features[,2 ]

##Combine Files
X_test <- cbind(y_test, X_test)
X_test <- cbind(subject_test, X_test)

X_train <- cbind(y_train, X_train)
X_train <- cbind(subject_train, X_train)

total <- rbind(X_test, X_train)
colnames(total)[1] <- "Subject"
colnames(total)[2] <-  "Activity"

##Elminate non 'Mean' and "STD" data
total

total <- total[, -grep("mad" , colnames(total))]
total <- total[, -grep("max" , colnames(total))]
total <- total[, -grep("min" , colnames(total))]
total <- total[, -grep("sma" , colnames(total))]
total <- total[, -grep("energy" , colnames(total))]
total <- total[, -grep("iqr" , colnames(total))]
total <- total[, -grep("entropy" , colnames(total))]
total <- total[, -grep("arCoeff" , colnames(total))]
total <- total[, -grep("correlation" , colnames(total))]
total <- total[, -grep("kurtosis" , colnames(total))]
total <- total[, -grep("bandsEnergy" , colnames(total))]
total <- total[, -grep("skewness" , colnames(total))]

##Find mean by Subject and Activity
total2 <- ddply(total, .(Subject, Activity), numcolwise(mean))

#Write new table as .txt
write.table(total2, file = "part5.txt", row.name = FALSE)
