#install.packages('arsenal')
rm(list = ls())
library(arsenal)
library(tidyverse)
fileBase <- "C:/Users/pstorey/Documents/git_repos/dataplatform/tamr-schema-support/scripts/opt/wwarndata"
dfIddo = as_tibble(read.csv(paste(fileBase, 'iddoCSV', 'PC.csv', sep = '/'), header = TRUE, stringsAsFactors = FALSE ))
dfTamr = as_tibble(read.csv(paste(fileBase, 'tamrCSV', 'PC.csv', sep = '/'), header = TRUE, stringsAsFactors = FALSE ))
summary(comparedf(dfIddo %>% arrange(STUDYID, USUBJID, PCSEQ), dfTamr %>% arrange(STUDYID, USUBJID, PCSEQ)))
# columns for IN.csv: STUDYID, USUBJID, INSEQ, INGRPID
# columns for LB.csv: STUDYID, USUBJID, LBSEQ
# columns for PC.csv: STUDYID, USUBJID, PCSEQ
head(dfIddo)
