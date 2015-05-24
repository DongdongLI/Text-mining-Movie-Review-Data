data=read.table(file="FIVEadj.txt",sep="\t")
data=data[order(data$V2,decreasing=TRUE),]
for(i in 1:400)
{
	line=paste(data[[1]][i],toString(data[[2]][i]),sep="\t")
	write(line,file="FIVEadjSorted.txt",append=TRUE)
}

data=read.table(file="FOURadj.txt",sep="\t")
data=data[order(data$V2,decreasing=TRUE),]
for(i in 1:400)
{
	line=paste(data[[1]][i],toString(data[[2]][i]),sep="\t")
	write(line,file="FOURadjSorted.txt",append=TRUE)
}

data=read.table(file="THREEadj.txt",sep="\t")
data=data[order(data$V2,decreasing=TRUE),]
for(i in 1: 400)
{
	line=paste(data[[1]][i],toString(data[[2]][i]),sep="\t")
	write(line,file="THREEadjSorted.txt",append=TRUE)
}

data=read.table(file="TWOadj.txt",sep="\t")
data=data[order(data$V2,decreasing=TRUE),]
for(i in 1: 400)
{
	line=paste(data[[1]][i],toString(data[[2]][i]),sep="\t")
	write(line,file="TWOadjSorted.txt",append=TRUE)
}

data=read.table(file="ONEadj.txt",sep="\t")
data=data[order(data$V2,decreasing=TRUE),]
for(i in 1: 400)
{
	line=paste(data[[1]][i],toString(data[[2]][i]),sep="\t")
	write(line,file="ONEadjSorted.txt",append=TRUE)
}
