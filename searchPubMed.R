sink(file = "./logofsearchPubMed.txt")

# Daily PBPath Journal Watch ----
print(paste0("Daily PBPath Journal Watch from PubMed Started at: ", Sys.time()))

# load library ----
print(paste0("Load Library Started at: ", Sys.time()))
source("R/loadLibrary.R")
print(paste0("Load Library Ended at: ", Sys.time()))
# Get PMID list from PubMed ----
## search topic ----
print(paste0("define topics Started at: ", Sys.time()))
source("R/topic.R")
print(paste0("define topics Ended at: ", Sys.time()))
## journal list ----
print(paste0("Read Journal List Started at: ", Sys.time()))
source("R/journals.R")
print(paste0("Read Journal List Ended at: ", Sys.time()))
## searchQuery ----
print(paste0("Read searchQuery Started at: ", Sys.time()))
source("R/searchQuery.R")
print(paste0("Read searchQuery Ended at: ", Sys.time()))
## date range ----
source("R/dateRange.R")
## generate search formula ----
print(paste0("Read searchFormula Started at: ", Sys.time()))
source("R/searchFormula.R")
print(paste0("Read searchFormula Ended at: ", Sys.time()))

# Search ----
print(paste0("Search Started at: ", Sys.time()))
source("R/search.R")
print(paste0("Search Ended at: ", Sys.time()))

# Fetch ----
print(paste0("Fetch Started at: ", Sys.time()))
source("R/fetch.R")
print(paste0("Fetch Ended at: ", Sys.time()))

# Get PMIDs ----
print(paste0("Get PMIDs Started at: ", Sys.time()))
source("R/getPMID.R")
print(paste0("Get PMIDs Ended at: ", Sys.time()))


# Save PMIDs ----
print(paste0("Save PMIDs Started at: ", Sys.time()))
source("R/savePMID.R")
print(paste0("Save PMIDs Ended at: ", Sys.time()))

# Save dataframes ----
print(paste0("Save DFs Started at: ", Sys.time()))
source("R/saveDF.R")
print(paste0("Save DFs Ended at: ", Sys.time()))

sink()

