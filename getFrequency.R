allAdj<-list()
allNoun<-list()

AdjDic<-list()
NounDic<-list()

FIVEadj<-list()
FOURadj<-list()
THREEadj<-list()
TWOadj<-list()
ONEadj<-list()

FIVEnoun<-list()
FOURnoun<-list()
THREEnoun<-list()
TWOnoun<-list()
ONEnoun<-list()

fileAdj="AdjDic"
fileNoun="NounDic"

fileName="Train"#input file
fileFive="FiveResult"#output file name for frequency of word appear in rating 5
fileFour="FourResult"
fileThree="ThreeResult"
fileTwo="TwoResult"
fileOne="OneResult"

fileFiveNoun="FiveResultNoun"#output file name for frequency of word appear in rating 5
fileFourNoun="FourResultNoun"
fileThreeNoun="ThreeResultNoun"
fileTwoNoun="TwoResultNoun"
fileOneNoun="OneResultNoun"

#read the data into memory
conn=file(fileName,open="r")
linn=readLines(conn)
close(conn)


for(i in 2:length(linn))
{
	#for each one of the user rating, split them with "\t"
	line=strsplit(linn[i],"\t")
	#the index of rating is 4
	rate=line[[1]][4]
	if(rate==5)
	{
		for(j in 5:length(line[[1]]))
		{
			#seperate the adjective and noun
			sentence=strsplit(line[[1]][j],"::")
			#if there is "," there will be multiple adjectives
			for(k in 2:length(sentence[[1]]))
			{	
				if(k==2)
				{
					if(grepl(",",sentence[[1]][k]))
					{
						adj=strsplit(sentence[[1]][k],",")
						for(l in 1:length(adj[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(FIVEadj[[adj[[1]][l]]])==0)
							{
								FIVEadj[[adj[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=FIVEadj[[adj[[1]][l]]]
								FIVEadj[[adj[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(FIVEadj[[sentence[[1]][k]]])==0)
						{
							FIVEadj[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=FIVEadj[[sentence[[1]][k]]]
							FIVEadj[[sentence[[1]][k]]]<-c(original+1)
						}
					}
				}
				else
				{
					if(grepl(",",sentence[[1]][k]))
					{
						noun=strsplit(sentence[[1]][k],",")
						for(l in 1:length(noun[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(FIVEnoun[[noun[[1]][l]]])==0)
							{
								FIVEnoun[[noun[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=FIVEnoun[[noun[[1]][l]]]
								FIVEnoun[[noun[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(FIVEnoun[[sentence[[1]][k]]])==0)
						{
							FIVEnoun[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=FIVEnoun[[sentence[[1]][k]]]
							FIVEnoun[[sentence[[1]][k]]]<-c(original+1)
						}
					}
					
				}
			}
		}
	}
	
	else if(rate==4)
	{
		for(j in 5:length(line[[1]]))
		{
			#seperate the adjective and noun
			sentence=strsplit(line[[1]][j],"::")
			#if there is "," there will be multiple adjectives
			for(k in 2:length(sentence[[1]]))
			{	
				if(k==2)
				{
					if(grepl(",",sentence[[1]][k]))
					{
						adj=strsplit(sentence[[1]][k],",")
						for(l in 1:length(adj[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(FOURadj[[adj[[1]][l]]])==0)
							{
								FOURadj[[adj[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=FOURadj[[adj[[1]][l]]]
								FOURadj[[adj[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(FOURadj[[sentence[[1]][k]]])==0)
						{
							FOURadj[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=FOURadj[[sentence[[1]][k]]]
							FOURadj[[sentence[[1]][k]]]<-c(original+1)
						}
					}
				}
				else
				{
					if(grepl(",",sentence[[1]][k]))
					{
						noun=strsplit(sentence[[1]][k],",")
						for(l in 1:length(noun[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(FOURnoun[[noun[[1]][l]]])==0)
							{
								FOURnoun[[noun[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=FOURnoun[[noun[[1]][l]]]
								FOURnoun[[noun[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(FOURnoun[[sentence[[1]][k]]])==0)
						{
							FOURnoun[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=FOURnoun[[sentence[[1]][k]]]
							FOURnoun[[sentence[[1]][k]]]<-c(original+1)
						}
					}
					
				}
			}
		}
	}

	
	else if(rate==3)
	{
		for(j in 5:length(line[[1]]))
		{
			#seperate the adjective and noun
			sentence=strsplit(line[[1]][j],"::")
			#if there is "," there will be multiple adjectives
			for(k in 2:length(sentence[[1]]))
			{	
				if(k==2)
				{
					if(grepl(",",sentence[[1]][k]))
					{
						adj=strsplit(sentence[[1]][k],",")
						for(l in 1:length(adj[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(THREEadj[[adj[[1]][l]]])==0)
							{
								THREEadj[[adj[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=THREEadj[[adj[[1]][l]]]
								THREEadj[[adj[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(THREEadj[[sentence[[1]][k]]])==0)
						{
							THREEadj[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=THREEadj[[sentence[[1]][k]]]
							THREEadj[[sentence[[1]][k]]]<-c(original+1)
						}
					}
				}
				else
				{
					if(grepl(",",sentence[[1]][k]))
					{
						noun=strsplit(sentence[[1]][k],",")
						for(l in 1:length(noun[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(THREEnoun[[noun[[1]][l]]])==0)
							{
								THREEnoun[[noun[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=THREEnoun[[noun[[1]][l]]]
								THREEnoun[[noun[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(THREEnoun[[sentence[[1]][k]]])==0)
						{
							THREEnoun[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=THREEnoun[[sentence[[1]][k]]]
							THREEnoun[[sentence[[1]][k]]]<-c(original+1)
						}
					}
					
				}
			}
		}
	}
	
	else if(rate==2)
	{
		for(j in 5:length(line[[1]]))
		{
			#seperate the adjective and noun
			sentence=strsplit(line[[1]][j],"::")
			#if there is "," there will be multiple adjectives
			for(k in 2:length(sentence[[1]]))
			{	
				if(k==2)
				{
					if(grepl(",",sentence[[1]][k]))
					{
						adj=strsplit(sentence[[1]][k],",")
						for(l in 1:length(adj[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(TWOadj[[adj[[1]][l]]])==0)
							{
								TWOadj[[adj[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=TWOadj[[adj[[1]][l]]]
								TWOadj[[adj[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(TWOadj[[sentence[[1]][k]]])==0)
						{
							TWOadj[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=TWOadj[[sentence[[1]][k]]]
							TWOadj[[sentence[[1]][k]]]<-c(original+1)
						}
					}
				}
				else
				{
					if(grepl(",",sentence[[1]][k]))
					{
						noun=strsplit(sentence[[1]][k],",")
						for(l in 1:length(noun[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(TWOnoun[[noun[[1]][l]]])==0)
							{
								TWOnoun[[noun[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=TWOnoun[[noun[[1]][l]]]
								TWOnoun[[noun[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(TWOnoun[[sentence[[1]][k]]])==0)
						{
							TWOnoun[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=TWOnoun[[sentence[[1]][k]]]
							TWOnoun[[sentence[[1]][k]]]<-c(original+1)
						}
					}
					
				}
			}
		}
	}
	
	else if(rate==1)
	{
		for(j in 5:length(line[[1]]))
		{
			#seperate the adjective and noun
			sentence=strsplit(line[[1]][j],"::")
			#if there is "," there will be multiple adjectives
			for(k in 2:length(sentence[[1]]))
			{	
				if(k==2)
				{
					if(grepl(",",sentence[[1]][k]))
					{
						adj=strsplit(sentence[[1]][k],",")
						for(l in 1:length(adj[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(ONEadj[[adj[[1]][l]]])==0)
							{
								ONEadj[[adj[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=ONEadj[[adj[[1]][l]]]
								ONEadj[[adj[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(ONEadj[[sentence[[1]][k]]])==0)
						{
							ONEadj[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=ONEadj[[sentence[[1]][k]]]
							ONEadj[[sentence[[1]][k]]]<-c(original+1)
						}
					}
				}
				else
				{
					if(grepl(",",sentence[[1]][k]))
					{
						noun=strsplit(sentence[[1]][k],",")
						for(l in 1:length(noun[[1]]))
						{
							#one particular word has not yet appeared before
							if(length(ONEnoun[[noun[[1]][l]]])==0)
							{
								ONEnoun[[noun[[1]][l]]]<-c(1)
							}
							#one particular word has appeared before
							else
							{
								original=ONEnoun[[noun[[1]][l]]]
								ONEnoun[[noun[[1]][l]]]<-c(original+1)
							}
						}
					}
					else
					{
						if(length(ONEnoun[[sentence[[1]][k]]])==0)
						{
							ONEnoun[[sentence[[1]][k]]]<-c(1)
						}
						else
						{
							original=ONEnoun[[sentence[[1]][k]]]
							ONEnoun[[sentence[[1]][k]]]<-c(original+1)
						}
					}
					
				}
			}
		}
	}
}
#get the adj dictionary and save them into map AdjDic
connAdj=file(fileAdj,open="r")
lineAdj=readLines(connAdj)
for(i in 1:length(lineAdj))
{
	line=strsplit(lineAdj[i],"\t")
	AdjDic[[line[[1]][2]]]=line[[1]][1]
}

connNoun=file(fileNoun,open="r")
lineNoun=readLines(connNoun)
for(i in 1:length(lineNoun))
{
	line=strsplit(lineNoun[i],"\t")
	NounDic[[line[[1]][2]]]=line[[1]][1]
}

#store them into file		
for(i in 1:length(FIVEadj))
{
	line=paste( AdjDic[[names(FIVEadj[i])]]   ,toString(FIVEadj[i]),sep="\t")
	write(line,file="FIVEadj.txt",append=TRUE)
}
		
for(i in 1:length(FOURadj))
{
	line=paste( AdjDic[[names(FOURadj[i])]]   ,toString(FOURadj[i]),sep="\t")
	write(line,file="FOURadj.txt",append=TRUE)
}

		
for(i in 1:length(THREEadj))
{
	line=paste( AdjDic[[names(THREEadj[i])]]   ,toString(THREEadj[i]),sep="\t")
	write(line,file="THREEadj.txt",append=TRUE)
}
		
for(i in 1:length(TWOadj))
{
	line=paste( AdjDic[[names(TWOadj[i])]]   ,toString(TWOadj[i]),sep="\t")
	write(line,file="TWOadj.txt",append=TRUE)
}
		
for(i in 1:length(ONEadj))
{
	line=paste( AdjDic[[names(ONEadj[i])]]   ,toString(ONEadj[i]),sep="\t")
	write(line,file="ONEadj.txt",append=TRUE)
}
				

for(i in 1:length(FIVEnoun))
{
	line=paste( NounDic[[names(FIVEnoun[i])]]   ,toString(FIVEnoun[i]),sep="\t")
	write(line,file="FIVEnoun.txt",append=TRUE)
}	

for(i in 1:length(FOURnoun))
{
	line=paste( NounDic[[names(FOURnoun[i])]]   ,toString(FOURnoun[i]),sep="\t")
	write(line,file="FOURnoun.txt",append=TRUE)
}

		
for(i in 1:length(THREEnoun))
{
	line=paste( NounDic[[names(THREEnoun[i])]]   ,toString(THREEnoun[i]),sep="\t")
	write(line,file="THREEnoun.txt",append=TRUE)
}
		
for(i in 1:length(TWOnoun))
{
	line=paste( NounDic[[names(TWOnoun[i])]]   ,toString(TWOnoun[i]),sep="\t")
	write(line,file="TWOnoun.txt",append=TRUE)
}
		
for(i in 1:length(ONEnoun))
{
	line=paste( NounDic[[names(ONEnoun[i])]]   ,toString(ONEnoun[i]),sep="\t")
	write(line,file="ONEnoun.txt",append=TRUE)
}
