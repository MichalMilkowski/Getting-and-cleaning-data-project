###setting directory
setwd("D:/COURSERA/Data science/Getting and Cleaning Data/PROJECT")
getwd()

#################################################
#     task 1
#################################################

###getting test values
test<-read.table("./UCI HAR Dataset/test/X_test.txt")
# head(test)
# dim(test)

###getting train values
train<-read.table("./UCI HAR Dataset/train/X_train.txt")
# head(train)
# dim(train)

######getting test activity labels
test_label<-read.table("./UCI HAR Dataset/test/Y_test.txt")
dim(test_label)
######getting train activity labels
train_label<-read.table("./UCI HAR Dataset/train/Y_train.txt")
dim(train_label)

#### getting names of variables
var_table<-read.table("./UCI HAR Dataset/features.txt")
#dim(var_table)

### merging train and dataset with rbind

data<-rbind(train,test)
# dim(data)

#assigning names to the merged dataset
names(data)<-var_table[,2]
# summary(test)


#################################################
#     task 2
#################################################

#creating indexes of means
mean.ind<-grep(c('mean()'),names(data))
#creating indexes of std.dev
std.ind<-grep(c('std()'),names(data))

####subsetting inly means and std.deviations and excluding meanFreq
data.ms<-data[,c(mean.ind,std.ind)]
head(data.ms)
dim(data.ms)
#excluding meanFreq
meanfreq<-grep(c('meanFreq()'),names(data.ms))
data.ms<-data.ms[,-meanfreq]

head(data.ms)
dim(data.ms)

#################################################
#     tasks 3 and 4
#################################################

#merging test and train labels
labels<-rbind(train_label,test_label)
dim(labels)
#merging data set with activity labels
data_labels<-cbind(data.ms,labels)
dim(data_labels)
colnames(data_labels)[colnames(data_labels)=="V1"] <- "activity"
names(data_labels)
## reading activity labels descriptive names
desc_names<-read.table("./UCI HAR Dataset/activity_labels.txt")
#naming it
names(desc_names)<-c("id","desc_activity_name")

# merging (left joining)
data_labels<-merge(data_labels,desc_names,by.x="activity",by.y="id",all=TRUE)
dim(data_labels)
head(data_labels)
#################################################
#     task 5
#################################################

#reading subjects
train_subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")

subjects<-rbind(train_subject,test_subject)

#merging data set with subjects
data_all<-cbind(data_labels,subjects)
dim(data_all)
names(data_all)
#renaming the subjects
colnames(data_all)[colnames(data_all)=="V1"] <- "subject"
head(data_all)
summary(data_all)

# choosing names 
nazwy<-names(data_all)
#renaming so that it would be easier to aggregate
names(data_all)[2:67]<-paste("var",1:66, sep='')
#creating final names
names2<-paste("avg",nazwy[2:67],sep='_')

#reading package plyr
library(plyr)

# Creating final aggregated tidy dataset
dataset_tidy<-ddply(data_all,.(subject,desc_activity_name),
                    summarize, 
                    mean(var1),
                    mean(var2),
                    mean(var3),
                    mean(var4),
                    mean(var5),
                    mean(var6),
                    mean(var7),
                    mean(var8),
                    mean(var9),
                    mean(var10),
                    mean(var11),
                    mean(var12),
                    mean(var13),
                    mean(var14),
                    mean(var15),
                    mean(var16),
                    mean(var17),
                    mean(var18),
                    mean(var19),
                    mean(var20),
                    mean(var21),
                    mean(var22),
                    mean(var23),
                    mean(var24),
                    mean(var25),
                    mean(var26),
                    mean(var27),
                    mean(var28),
                    mean(var29),
                    mean(var30),
                    mean(var31),
                    mean(var32),
                    mean(var33),
                    mean(var34),
                    mean(var35),
                    mean(var36),
                    mean(var37),
                    mean(var38),
                    mean(var39),
                    mean(var40),
                    mean(var41),
                    mean(var42),
                    mean(var43),
                    mean(var44),
                    mean(var45),
                    mean(var46),
                    mean(var47),
                    mean(var48),
                    mean(var49),
                    mean(var50),
                    mean(var51),
                    mean(var52),
                    mean(var53),
                    mean(var54),
                    mean(var55),
                    mean(var56),
                    mean(var57),
                    mean(var58),
                    mean(var59),
                    mean(var60),
                    mean(var61),
                    mean(var62),
                    mean(var63),
                    mean(var64),
                    mean(var65),
                    mean(var66)  )

#renaming the tidy data set with final names
names(dataset_tidy)[3:68]<-names2

#writing the tidy dataset
write.table(dataset_tidy,"tidy_dataset.txt")
