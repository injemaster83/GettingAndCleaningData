# Before running please set the UCI HAR Dataset folder as the working directory
# Please remember to have all your packages up-to-date

library(data.table)


# Part 0: Read all data

## 1: Complementary data

features <- fread("./features.txt", sep=" ")
activity_labels <- fread("./activity_labels.txt", sep=" ")

### Set variable names for features and activity_levels

setnames(features,c("feat_id","feat_name"))
setnames(activity_labels,c("activity","act_name"))


## 2: Train set

### 2a: Data

subject_train <- fread("./train/subject_train.txt")
X_train <- fread("./train/X_train.txt")
y_train <- fread("./train/y_train.txt")

#### Set variable names forn subject_train, X_train and y_train

setnames(subject_train,"subject")
setnames(X_train,features$feat_name)
setnames(y_train,"activity")

### 2b: Inertial Signals (optional)

body_acc_x_train <- fread("./train/Inertial Signals/body_acc_x_train.txt") 
body_acc_y_train <- fread("./train/Inertial Signals/body_acc_y_train.txt") 
body_acc_z_train <- fread("./train/Inertial Signals/body_acc_z_train.txt") 

body_gyro_x_train <- fread("./train/Inertial Signals/body_gyro_x_train.txt") 
body_gyro_y_train <- fread("./train/Inertial Signals/body_gyro_y_train.txt") 
body_gyro_z_train <- fread("./train/Inertial Signals/body_gyro_z_train.txt") 

total_acc_x_train <- fread("./train/Inertial Signals/total_acc_x_train.txt") 
total_acc_y_train <- fread("./train/Inertial Signals/total_acc_y_train.txt") 
total_acc_z_train <- fread("./train/Inertial Signals/total_acc_z_train.txt")


## 3: Test set

### 3a: Data

subject_test <- fread("./test/subject_test.txt")
X_test <- fread("./test/X_test.txt")
y_test <- fread("./test/y_test.txt") 

#### Set variable names forn subject_test, X_test and y_test

setnames(subject_test,"subject")
setnames(X_test,features$feat_name)
setnames(y_test,"activity")

### 3b: Inertial Signals (optional)

body_acc_x_test <- fread("./test/Inertial Signals/body_acc_x_test.txt") 
body_acc_y_test <- fread("./test/Inertial Signals/body_acc_y_test.txt") 
body_acc_z_test <- fread("./test/Inertial Signals/body_acc_z_test.txt") 

body_gyro_x_test <- fread("./test/Inertial Signals/body_gyro_x_test.txt") 
body_gyro_y_test <- fread("./test/Inertial Signals/body_gyro_y_test.txt") 
body_gyro_z_test <- fread("./test/Inertial Signals/body_gyro_z_test.txt") 

total_acc_x_test <- fread("./test/Inertial Signals/total_acc_x_test.txt") 
total_acc_y_test <- fread("./test/Inertial Signals/total_acc_y_test.txt") 
total_acc_z_test <- fread("./test/Inertial Signals/total_acc_z_test.txt")

### END OF DATA READING ###


### START OF ASSIGNMENT ###
 

# Part 1: Merge train and test set

data <- rbind(cbind(X_train,y_train,subject_train),cbind(X_test,y_test,subject_test))


# Part 2: Extract measurements on the mean and standard deviation

##  In file features_info.txt is specified how to identify variables related to mean and standard deviation (=variable name contains the words "mean()" or "std()")

cols <- c(sapply(unique(rbind(features[grepl(pattern = 'mean()',x = features$feat_name,fixed = TRUE),2,with=F],features[grepl(pattern = 'std()',x = features$feat_name,fixed = TRUE),2,with=F])),as.character),"subject","activity")

data <- data[,cols,with=F]


# Part 3: Change activity variable from code to description

## Add column "act_name" from dataset "activity_labels" to dataset "data", using column "activity" as key
data <- merge(data,y = activity_labels,by = "activity",all.x = T)

## Now we have two activity columns in dataset "data": the original one called "activity" labeled as code, and "act_name" labeled as description
## Because we use merge, there is a one-to-one correspondance between "activity" and "act_name", as we can check with the table command below
table(data$activity,data$act_name)

## Since we only need the new activity column, we just delete the original one
data <- data[,-c("activity"),with=F]

## Finally we rename the description column as "activity", just as the original one
## One way to interpret this code is that we just "replaced" the codes in variable "activity" with their respective descriptions.
setnames(data,"act_name","activity")


# Part 4: Labels the data set with descriptive variable names. 

## For this part, the conventions of tidy data will be followed. That means the variables name:
## - Are intended to be descriptive (e.g. long names instead of short)
## - Will have NO underscores, dots, spaces or other symbols, EXCEPT hyphen ("-") to identify the schema of the information.
## - All will be lowercase

## Create initial vector with variable names in lowercase (excluding "subject" and "label", 66 in total)
new_var_names <- tolower(cols[1:(length(cols)-2)])

## 1: Replace the first character of every variable (f->frequency, t->time)
new_var_names <- paste(ifelse(substring(new_var_names,1,1)=="f","frequency-","time-"),substring(new_var_names,2,nchar(new_var_names)),sep="")
      
## 2: Replace "bodybody" for "body-"
new_var_names <- gsub('bodybody','body',x = new_var_names)
new_var_names <- gsub('body','body-',x = new_var_names)

## 3: Replace "acc" for "acceleration-"
new_var_names <- gsub('acc','acceleration-',x = new_var_names)

## 4: Replace "gyro" for "angularvelocity-"
new_var_names <- gsub('gyro','angularvelocity-',x = new_var_names)

## 5: Replace "mag" for "magnitude-"
new_var_names <- gsub('mag','magnitude-',x = new_var_names)

## 6: Replace "gravity" for "gravity-"
new_var_names <- gsub('gravity','gravity-',x = new_var_names)

## 7: Replace "jerk" for "jerk-"
new_var_names <- gsub('jerk','jerk-',x = new_var_names)

## 8: Replace "-std()" for "-standarddeviation"
new_var_names <- gsub('-std()','standarddeviation',x = new_var_names)

## 9: Replace "-mean()" for "-mean"
new_var_names <- gsub('-std()','standarddeviation',x = new_var_names)

## 10: Replace "()" for ""
new_var_names <- gsub('\\(\\)','\\-',x = new_var_names)

## 11: Replace "--" for "-"
new_var_names <- gsub('\\-\\-','\\-',x = new_var_names)

## 12: Delete the last character if it is "-"
new_var_names <- paste(substring(new_var_names,1,nchar(new_var_names)-1),ifelse(substring(new_var_names,nchar(new_var_names),nchar(new_var_names))=="-","",substring(new_var_names,nchar(new_var_names),nchar(new_var_names))),sep="")

## Add "subject" and "activity" to names vector
new_var_names <- c(new_var_names,"subject","activity")

## Put the final names to variables in dataset "data"
setnames(data,new_var_names)

## Check names
names(data)


# Part 5: Creating the tidy data file

## Calculate average for each variable (except "subject" and "activity", that are the variables used for grouping)
tidy_data <- data[, lapply(.SD, mean, na.rm=TRUE), by=list(subject,activity)]

## Export final dataset (using TAB as delimiter, strings NOT quoted)
write.table(tidy_data,"./output/tidy_data.txt",quote=F,row.name=FALSE,sep="\t")


### END OF ASSIGNMENT ###


# Annex

# Load file with details of the variables
details <- fread("./details.txt",header=T)

if(file.exists("./output/summary_tidy_data.txt")) file.remove("./output/summary_tidy_data.txt")
if(file.exists("./output/variables_tidy_data.txt")) file.remove("./output/variables_tidy_data.txt")
if(file.exists("./output/description_tidy_data.txt")) file.remove("./output/description_tidy_data.txt")

for(i in 1:ncol(tidy_data)) {
  write(paste("Variable ",i,": ",names(tidy_data[,i,with=F]),sep=""),"./output/summary_tidy_data.txt",append=TRUE)
  write("","./output/summary_tidy_data.txt",append=TRUE)
  write(summary(tidy_data[,i,with=F]),"./output/summary_tidy_data.txt",append=TRUE)
  write("","./output/summary_tidy_data.txt",append=TRUE)

  write(paste(i,". ",names(tidy_data[,i,with=F]),sep=""),"./output/variables_tidy_data.txt",append=TRUE)

  write(paste("Variable ",i,": ",names(tidy_data[,i,with=F]),sep=""),"./output/description_tidy_data.txt",append=TRUE)
  write("","./output/description_tidy_data.txt",append=TRUE)
  write(paste("* Class: ",class(names(tidy_data[,i,with=F])),sep=""),"./output/description_tidy_data.txt",append=TRUE)
  write("","./output/description_tidy_data.txt",append=TRUE)
  write("* Unique values:","./output/description_tidy_data.txt",append=TRUE)
  write(sapply(tidy_data[,i,with=F],unique),"./output/description_tidy_data.txt",append=TRUE)
  write("","./output/description_tidy_data.txt",append=TRUE)
  write("* Description of the variable:","./output/description_tidy_data.txt",append=TRUE)
  write(details$description[i],"./output/description_tidy_data.txt",append=TRUE)
  write("","./output/description_tidy_data.txt",append=TRUE)
  write("* Explanation of the schema:","./output/description_tidy_data.txt",append=TRUE)
  write(details$schema[i],"./output/description_tidy_data.txt",append=TRUE)
  write("","./output/description_tidy_data.txt",append=TRUE)
  write("","./output/description_tidy_data.txt",append=TRUE)
  
}
