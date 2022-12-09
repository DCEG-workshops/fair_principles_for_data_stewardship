---
layout: page
permalink: workshops/workshop_2/practical
menubar_toc: true
---

<script link="{{ site.baseurl }}/assets/js/vanilla-back-to-top.min.js"></script>
<script>addBackToTop()</script>

<script src="{{ site.baseurl }}/assets/js/copyCodeSnippet.js" defer></script>
<script src="{{ site.baseurl }}/assets/js/copyCodeBlock.js" defer></script>

## Practicum overview

Welcome to the practicum section of the "Introduction to GitHub" workshop!



<div style="display: flex; justify-content: center">
  <img src="images/practicum_overview.png" alt="" width="90%"/>
</div>

## Creator workflow

### Step 1: Create a local Git repository

```r
###########################
# SETUP
###########################
# Install "boxr", if you don't have it installed already. Load the boxr package. 
#
# boxr library establishes a communication ( allows you to read/write files that
# you have access to) from your local (e.g., in your laptop) RStudio and your 
# remotely located (on the cloud) Box.com storage space.

install.packages("boxr")
library(boxr)

####################################
# AUTHENTICATION
####################################
# Authentication is the process of providing permission to your RStudio tool to
# access your Box.com account, on your behalf.
# If you are not already logged into Box after running this code, you may be
# asked to log into Box. Identify Box as your hard disk in the cloud.

box_auth(client_id = "627lww8un9twnoa8f9rjvldf7kb56q1m",
         client_secret = "gSKdYKLd65aQpZGrq9x4QVUNnn5C8qqm") 

   # Set the working directory to the "DCEG GitHub_RStudio_FAIR Workshop" 
   # Box folder using the folder ID
box_setwd(dir_id = )

####################################
# READ IN FILES
####################################
# box_read reads the file into local memory - see the console after running the 
# code for the temporary file path. After closing your RStudio session the 
# file/data is deleted from the temporary local memory.

      # NOTE: The file ID is needed to read in the bc_data.csv file

bc_data = box_read(file_id = )

###################################
#### EXPLORATORY DATA ANALYSIS ####
###################################

# Work as always

plot_variable = "BMI" # change here
n_bins = 50

hist(bc_data[bc_data[["status"]]==1, plot_variable], 
     breaks=n_bins, prob=TRUE, 
     col=rgb(1, 0, 0, 0.5), 
     main=paste0("Distribution of ", plot_variable), 
     xlab=plot_variable)
lines(density(bc_data[bc_data[["status"]]==1, plot_variable]), 
      col="red", lwd=2)

hist(bc_data[bc_data[["status"]]==0, plot_variable], 
     breaks=n_bins, prob=TRUE,
     col=rgb(0, 0, 1, 0.5), 
     add=TRUE)
lines(density(bc_data[bc_data[["status"]]==0, plot_variable]), 
      col="blue", lwd=2)

legend("topright", 
       title="status",
       legend=c("Case","Control"), 
       col=c(rgb(1,0,0,0.5), 
             rgb(0,0,1,0.5)), 
       pt.cex=1, 
       cex=0.3, 
       pch=15 )

```

### Step 2: Create a remote copy of your local Git repository


### Step 3: the Git workflow


## Consumer workflow

### Adding collaborators


### Step 1: Clone a remote Git repository


### Git issues


## Advanced concepts in GitHub

## Contributor workflow

### Step 1: Fork a remote repository

### Step 2: Clone a remote repository

### Step 3: Create a new branch

### Step 4: the Git workflow

### Step 5: Create a pull request


## Project manager workflow


### Conflict resolution
