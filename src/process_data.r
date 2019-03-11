
#source("http://www.bioconductor.org/biocLite.R")
#biocLite("affy")
library(affy)

# Don't have to set this if Jupyter notebook in `src` directory
#setwd("/Users/dominicanene/Google Drive/Northwestern/2018-2019/q2/bioinformatics/project/src")

# directory that holds raw files
rawdata.dir <- "../data/raw"
dir.alzheimer <- file.path(rawdata.dir,"AH")
dir.cte <- file.path(rawdata.dir,"CTE")

# directory that holds clean/processed files
cleandata.dir <- "../data/clean"



ah.names.23Months = list("GSM252558" = "23Months_9",
                     "GSM252557" = "23Months_8",
                     "GSM252556" = "23Months_7", 
                     "GSM252555" = "23Months_6", 
                     "GSM252554" = "23Months_5", 
                     "GSM252553" = "23Months_4", 
                     "GSM252552" = "23Months_3", 
                     "GSM252551" = "23Months_15", 
                     "GSM252550" = "23Months_14", 
                     "GSM252549" = "23Months_13", 
                     "GSM252548" = "23Months_11", 
                     "GSM252547" = "23Months_10", 
                     "GSM252546" = "23Months_1")

ah.names.12Months = list("GSM252545" = "12Months_9",
                      "GSM252544" = "12Months_8",
                      "GSM252543" = "12Months_7", 
                      "GSM252542" = "12Months_6", 
                      "GSM252541" = "12Months_5", 
                      "GSM252540" = "12Months_4", 
                      "GSM252539" = "12Months_3", 
                      "GSM252538" = "12Months_2", 
                      "GSM252537" = "12Months_1")

ah.names.9Months = list("GSM252536" = "9Months_9",
                      "GSM252535" = "9Months_8",
                      "GSM252534" = "9Months_7", 
                      "GSM252533" = "9Months_6", 
                      "GSM252532" = "9Months_5", 
                      "GSM252531" = "9Months_4", 
                      "GSM252530" = "9Months_3", 
                      "GSM252529" = "9Months_2", 
                      "GSM252528" = "9Months_1")

ah.names.6Months = list("GSM252527" = "6Months_9",
                      "GSM252526" = "6Months_8",
                      "GSM252525" = "6Months_7", 
                      "GSM252524" = "6Months_6", 
                      "GSM252523" = "6Months_5", 
                      "GSM252522" = "6Months_4", 
                      "GSM252521" = "6Months_3", 
                      "GSM252520" = "6Months_2", 
                      "GSM252519" = "6Months_1")

ah.names.3Months = list("GSM252518" = "3Months_9",
                      "GSM252517" = "3Months_8",
                      "GSM252516" = "3Months_7", 
                      "GSM252515" = "3Months_6", 
                      "GSM252514" = "3Months_5", 
                      "GSM252513" = "3Months_4", 
                      "GSM252512" = "3Months_3", 
                      "GSM252511" = "3Months_2", 
                      "GSM252510" = "3Months_1")

cte.names.30m = list("GSM44533" = "JMR-RatInj30m-5aA-s2",
                     "GSM44500" =  "JMR-RatInj30m-1aA-s2",
                     "GSM44492" = "JMR-RatInj30m-3aA-s2",
                     "GSM44480" = "JMR-RatInj30m-4aA-s2",
                     "GSM44473" = "JMR-RatInj30m-2aA-s2")

cte.names.4h = list("GSM44667" = "JMR-RatInj4h-2bA-s2",
                    "GSM44498" = "JMR-RatInj4h-3bA-s2",
                    "GSM44466" = "JMR-RatInj4h-1bA-s2")
                    
cte.names.8h = list("GSM44532" = "JMR-RatInj8h-1aA-s2", 
                    "GSM44531" = "JMR-RatInj8h-2aA-s2",
                    "GSM44491" = "JMR-RatInj8h-3aA-s2")
                                        
cte.names.24h = list("GSM44493" = "JMR-RatInj24hf-2aA-s2",
                     "GSM44482" = "JMR-RatInj24hf-3aA-s2",
                     "GSM44477" =  "JMR-RatInj24hf-1aA-s2")
                                         
cte.names.72h = list("GSM44549" = "JMR-RatInj72h-3aA-s2",
                     "GSM44520" = "JMR-RatInj72h-1aA-s2",
                     "GSM44484" = "JMR-RatInj72h-2aA-s2")
                            
cte.names.21d = list("GSM44497" = "JMR-RatInj21d-1bA-s2",
                     "GSM44481" = "JMR-RatInj21d-2aA-s2", 
                     "GSM44471" = "JMR-RatInj21d-3aA-s2")

cte.naive.names = list("GSM44513" = "JMR-RatNaive-1cA-s2",  
                       "GSM44496" = "JMR-RatNaive-2cA-s2",
                       "GSM44478" = "JMR-RatNaive-3bA-s2")

#To be complete include names below but the sham dataset will not be used in analyis
cte.sham.names.30m = list("GSM44509" = "JMR-RatSham30m-3aA-s2",
                          "GSM44494"= "JMR-RatSham30m-1aA-s2",
                          "GSM44489" = "JMR-RatSham30m-2aA-s2",
                            "GSM44488" = "JMR-RatSham30m-4aA-s2")
    
cte.sham.names.4h = list("GSM44529" = "JMR-RatSham4h-3aA-s2",
                         "GSM44528" = "JMR-RatSham4h-4aA-s2",
                          "GSM44511" = "JMR-RatSham4h-1aA-s2", 
                         "GSM44486" = "JMR-RatSham4h-2aA-s2")
                         
cte.sham.names.8h = list("GSM44530" = "JMR-RatSham8h-1aA-s2",
                         "GSM44467" = "JMR-RatSham8h-2aA-s2",
                         "GSM44467" = "JMR-RatSham8h-2aA-s2")
                         
cte.sham.names.24h = list("GSM44508" = "JMR-RatSham24hf-2aA-s2",
                          "GSM44490" = "JMR-RatSham24hf-1aA-s2",
                          "GSM44490" = "JMR-RatSham24hf-1aA-s2")
                          
cte.sham.names.72h = list("GSM44485" = "JMR-RatSham72h-2aA-s2", 
                          "GSM44483" = "JMR-RatSham72h-1aA-s2")
                          
cte.sham.names.21d = list("GSM44507" = "JMR-Sham21d-1aA-s2",
                          "GSM44495" = "JMR-Sham21d-2aA-s2")

library(purrr)

#column names: Convert into a named vector
ah.colnames <- c(unlist(ah.names.3Months),
                 unlist(ah.names.6Months),
                 unlist(ah.names.9Months),
                 unlist(ah.names.12Months),
                 unlist(ah.names.23Months))

cte.colnames <- c(unlist(cte.names.30m),
                 unlist(cte.names.4h),
                 unlist(cte.names.8h),
                 unlist(cte.names.24h),
                 unlist(cte.names.72h),
                 unlist(cte.names.21d))

cte.naive.colnames<-unlist(cte.naive.names)

#Get raw CEL files names
fnames.ah <- map_chr(names(ah.colnames), (function(fn) (paste(fn,".CEL.gz",sep=""))))
fnames.cte <- map_chr(names(cte.colnames), (function(fn) (paste(fn,".CEL.gz",sep=""))))
fnames.naive.cte <- map_chr(names(cte.naive.colnames), (function(fn) (paste(fn,".CEL.gz",sep=""))))

#presence call threshold
THRESHOLD = .4

#Load Affymetrix data                                                         
pcraw.ah<- ReadAffy(filenames=fnames.ah,celfile.path=dir.alzheimer)
sampleNames(pcraw.ah) <-ah.colnames

# Present, Absent, Marginal Intensity Measurment
ah.pma<- mas5calls(pcraw.ah)
ah.pma<- exprs(ah.pma) # "P", "M" or "A" representing a call of present, marginal or absent;
ah.pma = ah.pma == "P" #| ah.pma == "M" # Boolean matrix: 1 = Present or Marginal, 0 = Absent
ah.pma = rowSums(ah.pma) # Get total number of Present or Marginal for a gene
ah.pma.Idx = which(ah.pma >= length(ah.colnames)*THRESHOLD) #Get indices of genes present in >= 40% of arrays

#Robust Micro Array Avg w/ Quantile Normalization and log scaling. 
ah.ExprDta <-rma(pcraw.ah)
alzheimer.dta<-exprs(ah.ExprDta)
alzheimer.dta <- alzheimer.dta[ah.pma.Idx,] #filter for sig genes. 

#Save data
write.table(alzheimer.dta, file = file.path(cleandata.dir,"alzheimer.txt"), sep = "\t", row.names = TRUE,col.names =TRUE)

cat(paste("Number of genes: ",length(ah.pma.Idx),"\n"))

get.ctedata<-function(THRESHOLD = .4){
    # load Affymetrix data                                                         
    pcraw.cte<- ReadAffy(filenames=fnames.cte,celfile.path=dir.cte)
    pcraw.naive.cte<-ReadAffy(filenames=fnames.naive.cte,celfile.path=dir.cte)                                               
    sampleNames(pcraw.cte) <-cte.colnames
    sampleNames(pcraw.naive.cte) <-cte.naive.colnames

    # subtract the means of naive 
    pm(pcraw.cte)<-pm(pcraw.cte) - rowMeans(pm(pcraw.naive.cte)) 
    mm(pcraw.cte)<-mm(pcraw.cte) - rowMeans(mm(pcraw.naive.cte)) 

    # present, Absent, Marginal Intensity Measurment
    cte.pma<- mas5calls(pcraw.cte)
    cte.pma<- exprs(cte.pma) 
    cte.pma = cte.pma == "P"#| cte.pma == "M" 
    cte.pma = rowSums(cte.pma) 
    cte.pma.Idx = which(cte.pma >= length(cte.colnames)*THRESHOLD) 

    # robust Micro Array Avg w/ Quantile Normalization and log scaling. 
    cte.ExprDta <-rma(pcraw.cte)
    cte.dta<-exprs(cte.ExprDta)
    cte.dta <- cte.dta[cte.pma.Idx,] 

    #Save data
    fn = file.path(cleandata.dir,paste("cte_threshold",round(THRESHOLD*100),".txt",sep = ""))
    write.table(cte.dta, file = fn, sep = "\t", row.names = TRUE,col.names =TRUE)
    message(paste("Call Threshold: ",round(THRESHOLD*100) ," Number of genes: ",length(cte.pma.Idx), "\n"))
    
    return (cte.dta)
}

# output cte data precense call threshold 40%
cte_threshold40.dta = get.ctedata()

# output cte data precense call threshold 45%
cte_threshold45.dta = get.ctedata(.45)

# output cte data precense call threshold 50%
cte_threshold50.dta = get.ctedata(.50)

# output cte data precense call threshold 55%
cte_threshold55.dta = get.ctedata(.55)



#Print out the portion of data make sure don't have `NA problem`
head(cte_threshold40.dta)
head(cte_threshold45.dta)
head(cte_threshold50.dta)
head(cte_threshold55.dta)


print(paste("Num of sig genes for CTE",nrow(cte_threshold40.dta)))
print(paste("Num of sig genes for AH",length(ah.pma.Idx)))

#source("https://bioconductor.org/biocLite.R")
#biocLite("multtest")
#biocLite("qvalue")
library(multtest)
library(qvalue)

ah.colnamesList <- list(ah.names.3Months,
                 ah.names.6Months,
                 ah.names.9Months,
                 ah.names.12Months,
                 ah.names.23Months)

cte.colnamesList <- list(cte.names.30m,
                 cte.names.4h,
                 cte.names.8h,
                 cte.names.24h,
                 cte.names.72h,
                  cte.names.21d)

# Function outputs genes that are not significantly expressed over the entire timeline. 
filter.genes<-function(F = rownames(alzheimer.dta), data =  alzheimer.dta, colName = ah.colnamesList, lvl = .05){

    if ((length(colName) == 1) | is.null(F)){
        return (F)
    }else{
        treatment = unlist(colName[1])
        control = unlist(colName[2])
        labels = c(rep(0,length(treatment)), rep(1,length(control)))
        
        # Get the test statstic and keep non-sig genes onles
        tstat = mt.teststat(data[F,c(treatment,control)],labels,test="t.equalvar")
        rawp0 = 2*(1-pt(abs(tstat), df = length(F) -1))
        adjp = mt.rawp2adjp(rawp0, "Bonferroni")
        p_correctOrder  = adjp$adjp[order(adjp$index),]
        
        notsigIDX = which(p_correctOrder[,2] > lvl)
        
        #Next iteration
        F = F[notsigIDX]
        filter.genes(F,data, colName[2:length(colName)] )
    }
}

# Output data for 40% cutoff for AH
nonSig.ah = filter.genes()
cat(paste("Num of sig genes AH: ", dim(alzheimer.dta)[1]- length(nonSig.ah),"\n"))
write.table(alzheimer.dta[-which(rownames(alzheimer.dta) %in% nonSig.ah),], file = file.path(cleandata.dir,"alzheimerFILTER.txt"), sep = "\t", row.names = TRUE,col.names =TRUE)




# function to write cte data to file
filter.cte<-function(cte.dta, threshold, cte.colnamesList){
    nonSig.cte = filter.genes(rownames(cte.dta), cte.dta, cte.colnamesList)
    num_non_sig = dim(cte.dta)[1]- length(nonSig.cte)
    message(paste("Call Threshold: ",round(threshold*100) ," Number of sig genes CTE:",num_non_sig, "\n", sep = ""))
    fn = file.path(cleandata.dir,paste("cte_threshold",round(threshold*100),"FILTER",".txt",sep = ""))
    write.table(cte.dta[-which(rownames(cte.dta) %in% nonSig.cte),], file = fn, sep = "\t", row.names = TRUE,col.names =TRUE)
}

# Output data for different cutoffs for CTE
filter.cte(cte_threshold40.dta,.4, cte.colnamesList)
filter.cte(cte_threshold45.dta,.45,cte.colnamesList )
filter.cte(cte_threshold50.dta,.5,cte.colnamesList )
filter.cte(cte_threshold55.dta,.55,cte.colnamesList )

