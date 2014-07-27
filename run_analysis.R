features <- read.table(file="UCI HAR Dataset/features.txt", header=FALSE, 
                       sep=" ", stringsAsFactors=FALSE)
means <- grepl("-mean()-", features[,2],  fixed=TRUE)
sds <- grepl("-std()-", features[,2], fixed=TRUE)
subject <-rbind(read.table(file="UCI HAR Dataset/test/subject_test.txt", 
                           header=FALSE, sep="", col.names="subject"),
                read.table(file="UCI HAR Dataset/train/subject_train.txt",
                           header=FALSE, sep="", col.names="subject"))
act <-rbind(read.table(file="UCI HAR Dataset/test/Y_test.txt", header=FALSE,
                       sep="", col.names="activity"),
            read.table(file="UCI HAR Dataset/train/Y_train.txt", header=FALSE,
                       sep="", col.names="activity"))
features <- subset(features, means|sds)
data <- rbind(read.table(file="UCI HAR Dataset/test/X_test.txt",
                         header=FALSE, sep=""),
              read.table(file="UCI HAR Dataset/train/X_train.txt", 
                         header=FALSE, sep=""))

aclabels <- read.table(file="UCI HAR Dataset/activity_labels.txt", 
                       header=FALSE, sep="")
data <- data[features[[1]]]
colnames(data) <- features[[2]]
data <- cbind(subject, act, data)
data[,2] <-as.factor(data[,2])
levels(data[,2]) <- tolower(aclabels[,2])

data1 <- aggregate(data[3:length(colnames(data))], list(data[,1], data[,2]), mean)
colnames(data1)<-c("subject", "activity", colnames(data1[,-1:-2]))
data1<- data1[order(data1[1], data1[2]),]
row.names(data1) <- NULL
names(data1) <- tolower(names(data1))
names(data1) <- gsub("()", replacement="", names(data1), fixed=T)
names(data1) <- gsub("-", replacement="_", names(data1), fixed=T)
write.csv(data1, "UCI HAR Dataset/tidy_means_std.csv")
