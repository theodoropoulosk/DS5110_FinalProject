# DS5110 - Final Project
End-to-end data science project: Wildfire analysis and prediction using an SQL database and exploratory data analysis.
By: Julian Baker & Konstantinos Theodoropoulos

Project Overview
This project explores how large-scale wildfire data from multiple countries can be merged, cleaned, and analyzed within a unified SQL database.
Our goals were to:
- Combine U.S. and Canadian wildfire datasets into a single, structured database
- Perform exploratory data analysis and advanced SQL reporting
- Evaluate how a unified international database can support wildfire prediction and environmental insights
- Build a reproducible analysis pipeline (SQL + Python + EDA + ML)
While our early prediction models did not produce high accuracy, the project demonstrates the importance of standardized wildfire data and provides a strong foundation for future modeling.

Instructions

To run the data exploration and analysis section of this project, start by downloading the datasets from the following links:
https://www.fs.usda.gov/rds/archive/catalog/RDS-2013-0009.6 

https://cwfis.cfs.nrcan.gc.ca/datamart/download/nfdbpnt 

Then, in order to merge the datasets, download the IPYNB file into Google Drive and place it alongside the datasets. 
Then, change the paths in the code to match where the files are located.
For example, in the data merging file, change this line:
df_canada = pd.read_csv('/content/gdrive/MyDrive/DS 5110 Final Project/Data to use/NFDB_point_20240613.csv')
To the path of where the data is located in your drive. 

The results should appear when you first load in the IPYNB files.

To recreate the SQL database, the schema.sql file is provided and it is designed to be used with the merged dataset that is created after running the IPYNB files. All 8 SQL queries can also be run, as the respective .sql files are in the SQL folder of the repository.

Note: The datasets and the full SQLite database file are not included in this repository because they exceed GitHub’s 25MB upload limit.
