library(data.table)


# 1 download file
tmp <- tempfile()
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, tmp)


# 2 read out features for variables, and labels for activities
## 2-1
features <- read.table(unz(tmp, "UCI HAR Dataset/features.txt"), sep = " ")
## 2-2
lab_tmp <- read.table(unz(tmp, "UCI HAR Dataset/activity_labels.txt"), sep = " ")


# 3 read out test/train data
test_subject <- read.table(unz(tmp, "UCI HAR Dataset/test/subject_test.txt"))
test_x <- read.table(unz(tmp, "UCI HAR Dataset/test/X_test.txt"), col.names = features$V2)
test_y <- read.table(unz(tmp, "UCI HAR Dataset/test/y_test.txt"))

train_subject <- read.table(unz(tmp, "UCI HAR Dataset/train/subject_train.txt"))
train_x <- read.table(unz(tmp, "UCI HAR Dataset/train/X_train.txt"), col.names = features$V2)
train_y <- read.table(unz(tmp, "UCI HAR Dataset/train/y_train.txt"))

## 3-1 integrate the train/test data
subject <- rbind(train_subject, test_subject)
x <- rbind(train_x, test_x)
y <- rbind(train_y, test_y)


# 4 remove the tmp zipfile via unlink(), and also the temp train/test data
unlink(tmp)
rm(train_subject, test_subject, train_x, test_x, train_y, test_y)

# 5 extract colums with mean and standar deviation
n <- features[[2]]
v <- grep("mean|std", n, ignore.case=TRUE)
data1 <- data.table()
data1 <- x[v]

# 6 insert columns indicating subjects (30 subjects, from step#3-1),
#   and labeling the activities (labels from step#2-1)
labels <- factor(y[[1]], labels = lab_tmp$V2)
data1 <- cbind(labels, data1)
data1 <- cbind(subject, data1)
colnames(data1)[1:2] <- c("Subject", "Activity")
data1$Subject <- as.factor(data1$Subject)

# data1 finished, with:
# a. train/testdata merged,
# b. variable names
# c. observation labels (by subjects and activities)




# data2:
# process data1 into avearge values for each activity per subject


# 1 start from NULL dataset
data2 <- NULL


# 2 split data1 into groups per subject
data_s <- split(data1, data1$Subject)


# 3 set some constants for looping
l <- length(data_s)     # for looping through subjects, in this case, l = 30 subjects
c <- ncol(data1)        # for looping through columns, in this case, c = 86 columns
r <- nrow(lab_tmp)      # for labeling subject to all activities, in this case, 
                        # r = 6 activities


# 4 start looping from subject.1 and column.3
i <- 1
for ( i in 1:l ) {
    j <- 3
    d <- data.table("Activity"=lab_tmp[,2]) 
    for ( j in 3:c ) {
        d0 <- lapply(split(data_s[[i]][[j]], data_s[[i]]$Activity), mean)
        d1 <- data.table(Vx=unlist(d0))
        d <- cbind(d, d1)
        setnames(d, "Vx", colnames(data1)[[j]])
    }
    d <- cbind(data.table("Subject"=rep(i,r)), d)
    data2 <- rbind(data2, d)    
}


# 5 output data2 as text file
write.table(data2, file="data2.txt", row.name=FALSE)

# script end