# Read the input files for the given directory (test/train)
readData <- function(dirname, selected.features) {
    library(plyr)
    
    # Read activities and add activity label
    activities <- read.table(file.path(dirname, paste0("y_", dirname, ".txt")), header=FALSE, col.names=c("id"))
    activities.labels <- read.table("activity_labels.txt", header=FALSE, col.names=c("id", "label"))
    activities.labelled <- join(activities, activities.labels, type="inner")

    # Read the feature column names 
    features  <- read.table("features.txt", header=FALSE, as.is=TRUE, col.names=c("feature.id", "feature.name"))
    
    # Read the measures and appropiately label the measures
    measures  <- read.table(file.path(dirname, paste0("X_", dirname, ".txt")), header=FALSE, as.is=TRUE, col.names=features$feature.name)
    
    # Subset the measures to match only selected terms
    matching.features <- vector("integer")
    for (selected.feature in selected.features) {
        matching.features <- c(matching.features, grep(paste0(".*",selected.feature,"\\(\\)"), features$feature.name))
    }
    measures <- measures[, matching.features]
    
    # Read the subjects
    subjects <- read.table(file.path(dirname, paste0("subject_", dirname, ".txt")), header=FALSE, as.is=TRUE, col.names=c("subject.id"))
    
    # Create result dataset with subject, activities id & label first, then measures
    data <- data.frame(subject.id=subjects$subject.id, activity.id=activities.labelled$id)
    data <- cbind(data, activity.label=activities.labelled$label)
    data <- cbind(data, measures)
    
    data
}

# Construct both datasets and merge them
getMergedData <- function(dirname.a, dirname.b, selected.features) {
    
    train  <- readData(dirname.a, selected.features)
    test   <- readData(dirname.b, selected.features)
    merged.data <- rbind(train, test)
    
    # tidy up the column names of the measures
    column.names <- colnames(merged.data)
    for (selected.feature in selected.features) {
        selected.feature.uppercase <- paste0(toupper(substring(selected.feature, 1,1)), substring(selected.feature, 2))
        column.names <- gsub(paste0("\\.+", selected.feature, "\\.+"), column.names, replacement=selected.feature.uppercase)
    }
    colnames(merged.data) <- column.names
    
    merged.data
}

# Gets the merged dataset and calculates average measures per activity and subject
getTidyDataSet <- function(dirname.a, dirname.b, selected.features) {
    library(reshape2)
    
    merged.data <- getMergedData(dirname.a, dirname.b, selected.features)
    
    # melting the dataset to subject.id, activity.id, activity.label + variable&value per line
    # could also use aggregate
    id_vars = c("subject.id","activity.id", "activity.label")
    measure_vars <- setdiff(colnames(merged.data), id_vars)
    melted.data <- melt(merged.data, id=id_vars, measure.vars=measure_vars)
    
    # unmelt using dcast to calculate mean per activity and subject
    tidy.dataset <- dcast(melted.data, activity.label + subject.id ~ variable, mean)
    
    tidy.dataset
}

# Write the tidy dataset to a file
writeTidyDataSet <- function(dirname.a, dirname.b, selected.features, file.name) {
    
    tidy.data.set <- getTidyDataSet(dirname.a, dirname.b, selected.features) 
    write.table(tidy.data.set, file.name)
}


print("Assuming you are executing run_analysis in the directory where you unzipped the UCI HAR Dataset:")
print("    zipped dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
print("    description of dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones")
print("Creating and writing the tidy dataset")

writeTidyDataSet("train", "test", c("mean", "std"), "tidy.txt")

print("Done.")





