# Worthingon Industries

### Contributors
Ethan Byrd  
Patrick Tiernan  
Gordon Woolbert  
Jiayi Zhou

### Purpose

This is the repostory created for use in conjunction with the course project of BUSADM 3632, section 4235. 

### Contents

Cleaned_Data Folder:  
This folder contains 5 .csv files that we will update as we clean and transform. These are the data sets that will be used for our analysis in Tableau and other non-R software.  

Data Folder:  
This folder contains 5 .csv files, each containing the sheet of the same name from the original workbook. These files will be the starting point for the data cleaning/transformation process. The .csv format is used here in order to facilitate easy importing to the programs we intend to use (R, Tableau, etc.). These files should remain untouched as well. We will clean them with an R script and save the updated files to the Cleand_Data folder.

ORIGINAL_DATA_DO_NOT_TOUCH.xlsx:  
This is the orginal workbook sent from Worthington Industries. As the file name suggests, this file should not be edited except under extreme circumstances. It's only purpose is to be a (hopefully unnecessary) backup.

Worthington_Industries.Rproj:  
This file contains workspace data for our R analysis.

clean_data.RData:  
This file contains an object that has all 5 data sets saved in a format native to R and will be used for our R analysis.

data_cleaner.R:  
This R script cleans the data sets found in the Data folder and then writes the newly cleaned data sets to both the Cleaned_Data folder (as .csv files) and to clean_data.RData.
