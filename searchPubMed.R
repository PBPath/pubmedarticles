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






  # Sys.sleep(6)
  # # generate search formula ----
  # # print(paste0("Read searchFormulaDocker Started at: ", Sys.time()))
  # # source("~/AutoJournalWatch/R/searchFormulaDocker.R")
  # # print(paste0("Read searchFormulaDocker Ended at: ", Sys.time()))
  # # write sh file ----
  # print(paste0("Read searchFormula Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/generateSH.R")
  # print(paste0("Read searchFormula Started at: ", Sys.time()))
  # Sys.sleep(6)
  # # run sh file: eutilities get PMID save temporary list ----
  # print(paste0("run SH File Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/runSH.R")
  # print(paste0("run SH File Ended at: ", Sys.time()))
  # Sys.sleep(6)
  # # combine temporary list with existing list ----
  # print(paste0("read and Combine Files Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/readCombineFiles.R")
  # print(paste0("read and Combine Files Ended at: ", Sys.time()))
  # # write files ----
  # print(paste0("write files Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/writeFiles.R")
  # print(paste0("write files Ended at: ", Sys.time()))
  # # remove temporary files ----
  # print(paste0("remove temporary files Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/removeTemporaryFiles.R")
  # print(paste0("remove temporary files Ended at: ", Sys.time()))
  # Sys.sleep(6)
  # # read combined PMID list ----
  # print(paste0("read combined PMID list Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/readCombinedFiles.R")
  # print(paste0("read combined PMID list Ended at: ", Sys.time()))
  # Sys.sleep(6)
  # # write code to Rmd ----
  # print(paste0("write code to Rmd Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_pancreas.R")
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_gallbladder.R")
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_bileduct.R")
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_ampulla.R")
  # print(paste0("write code to Rmd Ended at: ", Sys.time()))
  # Sys.sleep(6)
  # # write code to Rmd
  # print(paste0("write code to new Rmd Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_new_pancreas.R")
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_new_gallbladder.R")
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_new_bileduct.R")
  # source("~/AutoJournalWatch/R/rmdGenerationFunction_new_ampulla.R")
  # print(paste0("write code to new Rmd Ended at: ", Sys.time()))
  # # copy and rename files ----
  # print(paste0("copy and rename files Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/copyRenameFiles.R")
  # print(paste0("copy and rename files Ended at: ", Sys.time()))
  # Sys.sleep(1)
  # # Generate email ----
  # # print(paste0("Generate email Started at: ", Sys.time()))
  # # source("~/AutoJournalWatch/R/generateEmail.R")
  # # print(paste0("Generate email Ended at: ", Sys.time()))
  #
  # # Update Git and Email ----
  #
  # # Git Update AutoJournalWatch ----
  # print(paste0("Git Update AutoJournalWatch Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/gitUpdateAutoJW.R")
  # print(paste0("Git Update AutoJournalWatch Ended at: ", Sys.time()))
  # Sys.sleep(10)
  #
  # # Send email
  # # print(paste0("Send email Started at: ", Sys.time()))
  # # source("~/AutoJournalWatch/R/email_new_articles.R")
  # # print(paste0("Send email Ended at: ", Sys.time()))
  #
  # # render RecentPBPathJW Rmd Files ----
  # print(paste0("Render RecentPBPathJW.Rmd Files Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/renderRmdFiles.R")
  # print(paste0("Render Rmd Files Ended at: ", Sys.time()))
  # Sys.sleep(60)
  # # Git Update PBPath JournalWatch ----
  # print(paste0("Git Update PBPath JournalWatch Started at: ", Sys.time()))
  # source("~/AutoJournalWatch/R/gitUpdatePBPathJW.R")
  # print(paste0("Git Update PBPath JournalWatch Ended at: ", Sys.time()))
  # Sys.sleep(1)
  #
  #
