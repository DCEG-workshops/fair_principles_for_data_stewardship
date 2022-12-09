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

As a researcher and a programmer you wear several hats. You are a—
- **Creator**: you solve research problems, and provide these solutions to the public.
- **Consumer**: you use other people's code to either reproduce or replicate their findings.
- **Contributor**: you contribute to the code of others by adding new features, fixing bugs, or improving their documentation.
- **Project manager**: you manage the development of a software project that includes your own code, and the code from others (your team, your collaborators, and open source contributors from the public).

For each role, Git & GitHub provides you with a specialized set of features to help you better achieve your goals. In this practicum, you will learn how to use Git & GitHub to play the role of a _Creator_ and a _Consumer_. If you scroll further down this document, we show you how to also play the roles of a _Contributor_ and a _Project manager_. 

The figure below summarizes the task ahead. 

<div style="display: flex; justify-content: center">
  <img src="./images/practicum_overview.png" alt="h" width="90%"/>
</div>

As a **creator**, you will create a local directory for a project in your computer. This can either be an empty directory for a new project or an existing project that you have already been working on. We will then create a copy of this project remotely on GitHub. This step will instantly make our work significantly FAIRer, and we shall see how. You will then continue to make changes to the project files locally as you always do but then also update these changes to the remote copy of your project on GitHub. 

As a **consumer**, you will _clone_ (similar to a download but empowered with Git features) a remote copy of a project that you like to your computer. You will then run the cloned code locally in your computer.

As you walk through this practicum, please pay a special attention to how each of these steps help you achieve FAIRness.

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
