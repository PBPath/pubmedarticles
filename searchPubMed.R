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


# Search: (pancreas) AND (American Journal of Surgical Pathology[Jour] OR Human Pathology[Jour] OR American journal of clinical pathology[Jour] OR Journal of Pathology[Jour] OR International Journal of Surgical Pathology[Jour] OR Histopathology[Jour] OR Archives of Pathology[Jour] OR Modern Pathology[Jour])
#
#
# Pancrea* AND tumor* OR cancer* OR adenocarcinoma* OR carcinoma*
#   Gallbladder AND tumor* OR polyp* OR cancer* OR adenocarcinoma* OR carcinoma*
#   Ampulla* AND tumor* OR polyp* OR cancer* OR adenocarcinoma* OR carcinoma*
#   Biliary* tumor* OR OR cancer* OR adenocarcinoma* OR carcinoma* OR polyp*
#   Bile duct* AND tumor* OR polyp* OR cancer* OR adenocarcinoma* OR carcinoma*
#   Neuroendocrine AND pancrea*
#   Acinar cell carcinoma
# Pancreatoblastoma*
#   Cholangiocarcinoma*
#   Solid pseudopapillary neoplasm*
#   Intraductal papillary mucinous neoplasm*
#   Mucinous cystic neoplasm*
#   Intraductal papillary neoplasm* of bile duct
#
# List of journals to be reviewed:
#   1.            AJSP
# 2.            Pancreatology
# 3.            Gastroenterology
# 4.            Hepatology
# 5.            Modern Path
# 6.            Histopathology
# 7.            Journal of molecular diagnostics
# 8.           Virchows Archives
# 9.           Human Pathology
# 10.         Am J Gastroenterol
# 11.         Pancreas
# 12.         Clin Gastroenterol and Hepatol
# 13.         Gut
# 14.         American J Clin Pathol
# 15.          Archives of Pathol and Lab Med
# 16.          Seminars in Diagnostic Patthology
# 17.          Cancer Cytopathology
# 18.          Journal of American Society of Cytopathology
# 19.          Diagnostic Cytopathology
# 20.          Annals of Surgical Oncology
# 21.          Annals of Surgery
# 22.          Endocrine Pathology
# 23.          Cancer
# 24.          International Journal of Surgical Pathology
