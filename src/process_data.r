source("http://www.bioconductor.org/biocLite.R")
biocLite("affy")
library(affy)

#Initialize directories
data.dir <- "../data"
dir.alzheimer <- file.path(data.dir,"AH")
dir.cte<-  file.path(data.dir,"CTE")


###### AH: Dataset ######
# Goal of study: analyzed the temporal sequence and cellular localization of aging changes in expressio
#
# - Animals:            (9) (9)  (9)  (9)  (15)
# - Age Groups(months):  3   6    9    12   23 
#   - Correspond to early(3-6), intermediate(6-9), midlife(9-12), late(12-23)
# - 1 microarray per an animal
#
# Note: Evidence of cognitive impairment appeared in the 12-month-old group (midlife)
#       and was increased further in the 23-month-old group.
# Note:  Two aged animals (E2 and E12) were removed from the study for poor health, reducing the 23 month cohort (n = 13). 
# Note: No control micro array since goal is to anaylze temporal expression. 


