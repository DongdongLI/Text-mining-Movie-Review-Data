# Text-mining-Movie-Review-Data
Text mining with R and wordcloud

Data folder: contains all the processed data files

Readme(Data).txt: decribes how words are encoded when processing raw data

processed data folder: the result of the second time procession of data, 
                for each different rating from one to five, I keep the top 400 words that are used most frequently.
                
getFrequency.R: processes data files in Data folder and put the results in processed data folder

SortAdj.R: processes the data files generated by getFrequency.R.

FIVEadjCloud.R: uses wordcloud library to visualize the result of the adjectives usage in 5 points rating.
