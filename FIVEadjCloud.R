library(RColorBrewer)
library(wordcloud)

data=read.table(file="FIVEadjSorted.txt",sep="\t")
wordcloud(data$V1,data$V2,scale=c(10,0.5),random.order=T,rot.per=.15,vfont=c("sans serif","plain"),colors=brewer.pal(8, "Dark2"),shape="round")
