#Final Project
#Will Minor, Sara Wixon, Jide Anene
#3/12/19

#upload Affy
source("http://www.bioconductor.org/biocLite.R")
biocLite("affy")
library(affy)



#Cluster Analysis
#adapted from hw4

#upload Gplots
source("https://bioconductor.org/biocLite.R")
biocLite("gplots")
library (gplots)


#Read txt file outputs from Jide's codes that Will converted into CSV files with new labels that allowed for temporal analysis on heatmaps. 
#Data used were 45% threshold for Alzheimer's significant genes and 55% threshold for CTE Genes. 55% was used instead of 45% in order to get a more
#reasonable number of genes to work with. Reduced a few thousand genes into 340. In contrast, Alzheimer's disease was narrowed down to 17 genes at 45%
#threshold.


ALZ<-read.table("\\Users\\minor\\Documents\\2018 Northwestern Masters Biotech Program\\Class Stuff\\Winter Quarter 2019\\1. Bioinformatics\\CeL Files\\Final Term Project\\alzheimerFILTER.csv",sep=",",header=TRUE,fill=TRUE)
CTE<-read.table("\\Users\\minor\\Documents\\2018 Northwestern Masters Biotech Program\\Class Stuff\\Winter Quarter 2019\\1. Bioinformatics\\CeL Files\\Final Term Project\\cte_threshold55FILTER.csv",sep=",",header=TRUE,fill=TRUE)



#Turn data frame csv file into a numerical matrix with the gene names as row names. 
indi<-apply(ALZ[,2:50],1,sum)
ALZ<-ALZ[is.na(indi)==F,]
ALZ1=ALZ[,2:50]
row.names(ALZ1)=ALZ[,1]

#Turn data frame csv file into a numerical matrix with the gene names as row names. 
indi2<-apply(CTE[,2:21],1,sum)
CTE<-CTE[is.na(indi2)==F,]
CTE1=CTE[,2:21]
row.names(CTE1)=CTE[,1]




#Standardize all of the data in each matrix using this function
#standardization function is created to get mean of 1. Standard deviation of 1. 
standardize <- function(x){
  x <- (x-mean(x))/sd(x)
}
###standardize the data set by using the standardization function that was just made. 
ALZ1=apply(ALZ1,2,standardize)
CTE1=apply(CTE1,2,standardize)

#create the dendrogram by initiating clusters using the hierarchal method
#then initialize them and plot the tree diagram. 


####ALzheimer's Disease  heatmaps and clustering
ddALZ1 <- as.dist((1 - cor(t(ALZ1)))/2)
hcALZ1=hclust(ddALZ1)
plot(hcALZ1) # Plot tree chart

#Memb1 defines which gene is in which cluster
memb1 <- cutree(hcALZ1, k = 3)


#extracts info for cluster1
cluster1A=ALZ1[memb1==1,]
cluster2A=ALZ1[memb1==2,]
cluster3A=ALZ1[memb1==3,]

#three clusters were chosen in order to encapsulate every single gene. Higher number of clusters resulted in singular genes being in their own 
#clusters which lead to no heatmap outputs for those clusters.

library(gplots) 
#the characteristic of each temporal heatmap is commented next to its line of code.
#Getting the heatmaps to go temporally from left to right was an important and interesting part of these heatmaps.  

rg=colorpanel(50, low="green", mid="black", high="red")
heatmap(as.matrix(cluster1A), Colv=NA, col=rg) #LAte-down
heatmap(as.matrix(cluster2A),Colv=NA, col=rg) #Late- Up
heatmap(as.matrix(cluster3A),Colv=NA, col=rg) #Cycle- ambiguous 

  

##CTE
####CTE heatmaps and clustering 
ddCTE1 <- as.dist((1 - cor(t(CTE1)))/2)
hcCTE1=hclust(ddCTE1)
plot(hcCTE1) # Plot tree chart
## cut tree into 10 clusters and created a heatmap

#Memb2 defines which gene is in which cluster
memb2 <- cutree(hcCTE1, k = 10)

#extracts info for cluster1
cluster1C=CTE1[memb2==1,]
cluster2C=CTE1[memb2==2,]
cluster3C=CTE1[memb2==3,]
cluster4C=CTE1[memb2==4,]
cluster5C=CTE1[memb2==5,]
cluster6C=CTE1[memb2==6,]
cluster7C=CTE1[memb2==7,]
cluster8C=CTE1[memb2==8,]
cluster9C=CTE1[memb2==9,]
cluster10C=CTE1[memb2==10,]

library(gplots) 

#the characteristic of each temporal heatmap is commented next to its line of code.
#Getting the heatmaps to go temporally from left to right was an important and interesting part of these heatmaps.  

# I tinkered with the number of clusters and ultimately decided on 10. It left the most distinct heatmaps that were possible, though some other ones 
#are still quite messy. 

rg=colorpanel(50, low="green", mid="black", high="red")
heatmap(as.matrix(cluster1C), Colv = NA, col=rg)#Late Up
heatmap(as.matrix(cluster2C),Colv=NA, col=rg)#messy- CYCLE?
heatmap(as.matrix(cluster3C),Colv=NA, col=rg)#early down
heatmap(as.matrix(cluster4C), Colv = NA, col=rg)#Messy- 
heatmap(as.matrix(cluster5C),Colv=NA, col=rg)#messy
heatmap(as.matrix(cluster6C),Colv=NA, col=rg)#messy
heatmap(as.matrix(cluster7C), Colv = NA, col=rg)#maybe good. Cycle?
heatmap(as.matrix(cluster8C),Colv=NA, col=rg)#Cycle dynamics. worthwhile
heatmap(as.matrix(cluster9C), Colv = NA, col=rg)#weird. early up?
heatmap(as.matrix(cluster10C),Colv=NA, col=rg)#messy






