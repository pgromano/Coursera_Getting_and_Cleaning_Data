# Check if activity data exists
if(!dir.exists('UCI HAR Dataset')){
    # Check if activity zip file has been downloaded
    if(!dir.exists('activity.zip')){
        site.url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip"
        download.file(site.url, destfile='activity.zip')
    }
    # Unzip activity data
    unzip('activity.zip')
}

# Pull activity labels
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt', stringsAsFactors=FALSE, col.names=c('ID', 'Names'))[,'Names']

# Pull the name of all features
feature_names <- read.table('UCI HAR Dataset/features.txt', stringsAsFactors = FALSE)[,'V2']

# We are only interested in the mean and standard deviations of features
# Subset for mean and std, join both, and sort
feature_keep <- sort(append(grep("mean\\(\\)", feature_names),grep("std\\(\\)", feature_names)))

# Load training and test values, subset, and append
activity <- rbind(
    cbind(
        read.table('UCI HAR Dataset/train/X_train.txt', stringsAsFactors = FALSE, col.names=feature_names)[,feature_keep],
        read.table('UCI HAR Dataset/train/y_train.txt', stringsAsFactors = FALSE, col.names='Activity')
    ),

    cbind(
        read.table('UCI HAR Dataset/test/X_test.txt', stringsAsFactors = FALSE, col.names=feature_names)[,feature_keep],
        read.table('UCI HAR Dataset/test/y_test.txt', stringsAsFactors = FALSE, col.names='Activity')
    )
)

# Rename activities to descriptive labels
activity$Activity <- factor(x=activity$Activity, labels=activity_labels)

# Write to file
write.table(activity, 'tidy_data.txt', row.names=FALSE)

# Create subsets of mean value of
n_features = dim(activity)[2]
activity_split <- split(activity[,1:n_features-1], activity$Activity)

activity_means <- as.data.frame(
    rbind(
        colMeans(activity_split[[1]], na.rm=TRUE),
        colMeans(activity_split[[2]], na.rm=TRUE),
        colMeans(activity_split[[3]], na.rm=TRUE),
        colMeans(activity_split[[4]], na.rm=TRUE),
        colMeans(activity_split[[5]], na.rm=TRUE),
        colMeans(activity_split[[6]], na.rm=TRUE)
    )
)
activity_means$Activity <- c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING')
