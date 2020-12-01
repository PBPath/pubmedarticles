# pancreas ----

fetched_pancreas_articles


# ampulla ----

fetched_ampulla_articles


# bileduct ----

fetched_bileduct_articles


# gallbladder ----

# fetched_gallbladder_articles

names_df_gallbladder_articles <-
  slotNames(fetched_gallbladder_articles)

df_gb <-
  setNames(data.frame(matrix(
    ncol = length(names_df_gallbladder_articles),
    nrow = length(
      slot(
        fetched_gallbladder_articles,
        names_df_gallbladder_articles[2]
      )
    )
  )),
  nm = names_df_gallbladder_articles
  )


df_gb[, "PMID"]              <- fetched_gallbladder_articles@PMID
df_gb[, "YearArticleDate"]   <- fetched_gallbladder_articles@YearArticleDate
df_gb[, "MonthArticleDate"]  <- fetched_gallbladder_articles@MonthArticleDate
df_gb[, "ISSN"]              <- fetched_gallbladder_articles@ISSN
df_gb[, "Title"]             <- fetched_gallbladder_articles@Title
df_gb[, "ArticleTitle"]      <- fetched_gallbladder_articles@ArticleTitle
df_gb[, "ELocationID"]       <- fetched_gallbladder_articles@ELocationID
df_gb[, "AbstractText"]      <- fetched_gallbladder_articles@AbstractText
df_gb[, "Language"]          <- fetched_gallbladder_articles@Language
df_gb[, "MedlineTA"]         <- fetched_gallbladder_articles@MedlineTA
df_gb[, "NlmUniqueID"]       <- fetched_gallbladder_articles@NlmUniqueID
df_gb[, "ISSNLinking"]       <- fetched_gallbladder_articles@ISSNLinking
df_gb[, "PublicationStatus"] <- fetched_gallbladder_articles@PublicationStatus
df_gb[, "ArticleId"]         <- fetched_gallbladder_articles@ArticleId
df_gb[, "DOI"]               <- fetched_gallbladder_articles@DOI
df_gb[, "Volume"]            <- fetched_gallbladder_articles@Volume
df_gb[, "Issue"]             <- fetched_gallbladder_articles@Issue
df_gb[, "ISOAbbreviation"]   <- fetched_gallbladder_articles@ISOAbbreviation

df_gb <- df_gb[, c(
  "PMID",
  "YearArticleDate",
  "MonthArticleDate",
  "ISSN",
  "Title",
  "ArticleTitle",
  "ELocationID",
  "AbstractText",
  "Language",
  "MedlineTA",
  "NlmUniqueID",
  "ISSNLinking",
  "PublicationStatus",
  "ArticleId",
  "DOI",
  "Volume",
  "Issue",
  "ISOAbbreviation"
)]

df_gb[["PMID"]] <- as.character(df_gb[["PMID"]])

readr::write_csv(x = df_gb,
                 file = "data/gallbladderarticles.txt",
                 col_names = TRUE,
                 append = TRUE)

df_gb <- readr::read_csv(file = "data/gallbladderarticles.txt", col_names = TRUE)

df_gb <- unique(df_gb)

exclude_bileduct_PMIDs <- read.csv(file = "data/exclude_bileduct_PMIDs.txt",
                                   header = FALSE,
                                   col.names = "PMID",
                                   colClasses = "character"
                                   )

df_gb <- dplyr::anti_join(df_gb, exclude_bileduct_PMIDs)

readr::write_csv(x = df_gb,
                 file = "data/gallbladderarticles.txt",
                 col_names = TRUE
)

