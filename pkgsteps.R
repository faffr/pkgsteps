#STEP FOR CREATING A R PACKAGE ON THE FLY
#SOURCE: https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

# 1. INSTALL DEVTOOLS AND LOAD IT IN ORDER TO BE ABLE TO DOWNLOAD PACKAGES FROM GITHUB
#install.packages("devtools")
library(devtools)

# 2. INSTALL ROXYGEN FROM GITHUB AND LOAD IT
#install.packages("roxygen2")
library(roxygen2)

# 3. CREATE A DIRECTORY FOR THE PACKAGE 
setwd("somelocation/Desktop")
create("packagename") 

# 4. CREATE AN .R SCRIPT WITH THE FUNCTION THAT YOU DESIRE TO MAKE INTO A PACKAGE

# 5. ADD DOCUMENTATION AT THE TOP OF THE .R SCRIPT AS FOLLOWS:
    #'A title for the package
    #'
    #'Some comment about the package and what it does
    #'
    #'@param ParamA Comment about ParamA
    #'@param ParamB Comment about ParamB 
    #'@keywords Keyword about the function
    #'@export Not sure what this is
    #'@examples
    #'examples to make it clear to the user on how to use the parameters vis-a-vis the function with a toy example

# 6. PLACE THE .R SCRIPT IN THE FOLDER THAT WAS JUST CREATED INTO THE FOLDER CALLED "R"  

# 7. SETWD TO THE PACKAGE FOLDER AND USE DOCUMENT() TO CREATE DOCUMENTS NECESSARY FOR THE PACKAGE      
setwd("somelocation/Desktop/GitHub/packagename") #points to the parent location where the function is located. If this is a change in an existing function, this should point to the GIT clone folder
document() #creates/edits the .Rd function inside the "man" folder. Do this every time there is a change in the function or the package will not update when it is uploaded to GIT.

# 8. TEST THE PACKAGE LOCALLY - LOCATE THE DIRECTORY WHERE THE PACKAGE FOLDER LIVES - INSTALL
setwd("..")
install("raschamle")

# 8. UPLOAD TO GIT USING THE GIT APPLICATION TOOL
