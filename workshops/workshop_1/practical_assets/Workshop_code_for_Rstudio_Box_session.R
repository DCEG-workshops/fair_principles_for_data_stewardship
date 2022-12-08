###########################
# SETUP
###########################
# Install "boxr",if necessary, and load the boxr package (and other packages 
# used in this script). boxr will allow you to access and write data to the box
# folders to which you you have access.

install.packages("boxr")
install.packages("plyr")
library(boxr)
library(plyr)

####################################
# AUTHENTICATION
####################################
# Authentication is the process of syncing RStudio with your Box.com account.
# If you are not already logged into Box after running this code, you may be
# asked to log into Box. Identify Box as hard disk in the cloud.

box_auth(client_id = "627lww8un9twnoa8f9rjvldf7kb56q1m",
         client_secret = "gSKdYKLd65aQpZGrq9x4QVUNnn5C8qqm") 

   # Set the working directory to the "DCEG Box_RStudio_FAIR Workshop" 
   # Box folder using the folder ID
box_setwd(dir_id = )

####################################
# READ IN FILES
####################################
# box_read reads the file into local memory - see the console after running the 
# code for the temporary file path. After closing your RStudio session the 
# file/data is deleted from the temporary local memory.

      # NOTE: The file ID is needed to read in the workshop_bc_data.csv file

bc_data = box_read(file_id = )

####################################
# RUN ANALYSES
####################################
# We can now run standard R code. Here we are generating descriptive statistics,
# creating a new variable, and running a logistic model.

   # Generate descriptive statistics
apply(bc_data[c('age', 'BMI')], 2, summary)

apply((bc_data[c('famhist', 'menarche_cat', 'parity', 'agemeno_cat',
                 'ever_smoke')]), 2, table)

   # Create new variable: BMICAT, a 4-level categorical variable  
bc_data$BMIcat <- cut(bc_data$BMI,c(0, 18.5, 25, 30, 35, 100), 
                      labels=c("under weight", "normal","over weight","obese1",
                               "obese2"),right=FALSE)

   # Check BMI categories
ddply(bc_data, "BMIcat", summarise,
      N    = length(BMI),
      Min  = min(BMI),
      Mean = mean(BMI),
      Max  = max(BMI))

   # Run logistic model
logit_parity <- glm(status ~ parity + age, data=bc_data, family = "binomial")
summary(logit_parity)

####################################
# WRITE UPDATED FILE TO BOX
####################################
# We can use the box_write function to write the updated data set with the
# newly created BMIcat variable back to your personal Box folder.

   # Set the working directory to the your personal Box folder that you created
   # by setting 'dir_id' to your folder ID
box_setwd(dir_id = 161291860699)

   # Save the file using the 'box_write' function
box_write(object = bc_data, file_name = "bc_data_TUA.csv",
             description = "TUA updated workshop dataset, July 14: added BMI_cat variable")

# PASTE FILE DOCUMENTATION OUTPUT BELOW:


####################################
# READ IN UPDATED FILE
####################################
# The updated data that was saved in the last step can be loaded using the
# file id for the new file (found in console).

   # Set the working directory to the your personal Box folder that you created
   # by setting 'dir_id' to your folder ID
box_setwd(dir_id = )

   # Read in the updated data file from your personal folder using the file ID

   # NOTE: When reading in a file without specifying a 'version_id' or 
   # 'version_no', you will always get the most recent file version

bc_data_new = box_read(file_id = )

####################################
# MANIPULATE UPDATED FILE
####################################
# The data can then be manipulated or analyzed as needed

   # Subset the data to include only those 50 years of age or older
bc_data_new = subset(bc_data_new, age>=50)

####################################
# SAVE UPDATED FILE
#################################### 
# Because we are using the same file name, Box will update the data set using
# version control (rather than creating a new file)

box_write(object = bc_data_new, file_name = "bc_data_TUA.csv",
          description = "ANH Updated workshop dataset, July 14: ages>=50")
   
# PASTE FILE DOCUMENTATION OUTPUT BELOW


####################################
# READ IN PREVIOUS FILE VERSION 
####################################
# Previous versions of the data file can be loaded from Box using either the
# version ID or version number of the version of interest.

      # Option 1: Load file using version ID
bc_data_org = box_read(file_id = , version_id = )

      # Option 2: Load file using version number
bc_data_org = box_read(file_id = , version_no = 1)
