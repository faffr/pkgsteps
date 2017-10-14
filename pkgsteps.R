#STEP FOR CREATING AN R PACKAGE ON THE FLY
#SOURCE: https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

#1. INSTALL DEVTOOLS AND LOAD IT IN ORDER TO DOWNLOAD PACKAGES FROM GITHUB
#install.packages("devltools")
library(devtools)

#2. INSTALL ROXYGEN FROM GITHUB AND LOAD IT
devtools::install_github("klutometis/roxygen")
library(roxygen2)

#3. CREATE A DIRECTORY FOR THE PACKAGE 
setwd("somelocation/Desktop")
create("packagename") 

#4. CREATE AN .R SCRIPT WITH THE FUNCTION THAT YOU DESIRE TO MAKE INTO A PACKAGE
#5. ADD DOCUMENTATION AT THE TOP OF THE .R SCRIPT AS FOLLOWS:
    #'A FUNCTION
    #'
    #'SOME COMMENTS HERE ABOUT THE FUNCTION
    #'
    #'@param ParamA Comment about ParamA
    #'@param ParamB Comment about ParamB 
    #'@keywords Keyword about the function
    #'@export Not sure what this is
    #'@examples
    #'examples to make it clear to the user on how to use the parameters vis-a-vis the function with a toy example

#.6 CREATE ANOTHER DOCUMENT NECESSARY FOR THE PACKAGE BY USING THE FOLLOWING LINES      
setwd("somelocation/Desktop/GitHub/packagename") #points to the parent location where the function is located. If this is a change in an existing function, this should point to the GIT clone folder
document() #creates/edits the .Rd function inside the "man" folder. Do this every time there is a change in the function or the package will not update when it is uploaded to GIT.

#.7 UPLOAD TO GIT USING THE GIT APPLICATION TOOL
