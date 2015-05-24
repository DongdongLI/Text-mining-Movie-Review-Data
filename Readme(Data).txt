
Raw Data:

select_CFTM.txt is the raw dataset, with each line representing one review. The format is:

UserId\tItemId\tRating\tReviewTitle            ReviewBody

There are 12 blank space between Review Title and ReviewBody.
Personally, I do not recommend u to use this noisy data for analysis.







Processed Data:

The ProcessedData is carefully preprocessed:
1) clear the html tags and symbols, 
2) Use POS to tag the words, NER to recognize the named entities 
3) Stem the words,
4) Remove stop words, 
5) Remove infrequent words, 
6) Remove sentences that do not contain any adjective words, 
7) Remove the named entity words
8) Remove all the tokens except for Adjective and Noun tokens
9) Encoding user, item and words.
10) Split into train(60%), validate(20%) and test(20%).

P.S. the title is treated as an sentence(the first sentence) in the processedData

It contains 9 different files:

AdjCount:
Adjword\tFrequency

AdjDic:
Adjword\tEncodedId


ItemDic:
ItemId\tEncodedId

NounCount:
Nounword\tFrequency

NounDic:
Nounword\tEncodedId

Train, Validate, Test:

UserNumber\tItemNumber\tNounNumber\tAdjNumber
Doc_Global_Id\tUserId\tItemId\t[Sentence_Global_Id::Adjword[,Adjword]*::Nounword[,Nounword]*]*
...


Note: 
0. The encoding start from 0. For instance, when NounNumber is 10, then the encoded Id set is {0-9}
1. There can be no Nounwords in one sentence.
2. The Global_Id is for index, u can just ignore them when doing some analysis
3. U can find the specific word in the AdjDic and NounDic file by the Id