# pancreas ----

# fetched_pancreas_articles

names_df_pancreas_articles <-
  slotNames(fetched_pancreas_articles)

df_pancreas <-
  setNames(data.frame(matrix(
    ncol = length(names_df_pancreas_articles),
    nrow = length(
      slot(
        fetched_pancreas_articles,
        names_df_pancreas_articles[2]
      )
    )
  )),
  nm = names_df_pancreas_articles
  )


df_pancreas[, "PMID"]              <- fetched_pancreas_articles@PMID
df_pancreas[, "YearArticleDate"]   <- fetched_pancreas_articles@YearArticleDate
df_pancreas[, "MonthArticleDate"]  <- fetched_pancreas_articles@MonthArticleDate
df_pancreas[, "ISSN"]              <- fetched_pancreas_articles@ISSN
df_pancreas[, "Title"]             <- fetched_pancreas_articles@Title
df_pancreas[, "ArticleTitle"]      <- fetched_pancreas_articles@ArticleTitle
df_pancreas[, "ELocationID"]       <- fetched_pancreas_articles@ELocationID
df_pancreas[, "AbstractText"]      <- fetched_pancreas_articles@AbstractText
df_pancreas[, "Language"]          <- fetched_pancreas_articles@Language
df_pancreas[, "MedlineTA"]         <- fetched_pancreas_articles@MedlineTA
df_pancreas[, "NlmUniqueID"]       <- fetched_pancreas_articles@NlmUniqueID
df_pancreas[, "ISSNLinking"]       <- fetched_pancreas_articles@ISSNLinking
df_pancreas[, "PublicationStatus"] <- fetched_pancreas_articles@PublicationStatus
df_pancreas[, "ArticleId"]         <- fetched_pancreas_articles@ArticleId
df_pancreas[, "DOI"]               <- fetched_pancreas_articles@DOI
df_pancreas[, "Volume"]            <- fetched_pancreas_articles@Volume
df_pancreas[, "Issue"]             <- fetched_pancreas_articles@Issue
df_pancreas[, "ISOAbbreviation"]   <- fetched_pancreas_articles@ISOAbbreviation

df_pancreas <- df_pancreas[, c(
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

df_pancreas[["PMID"]] <- as.character(df_pancreas[["PMID"]])

readr::write_csv(x = df_pancreas,
                 file = "data/pancreasarticles.txt",
                 col_names = TRUE,
                 append = TRUE)

df_pancreas <- readr::read_csv(file = "data/pancreasarticles.txt", col_names = TRUE)

df_pancreas <- unique(df_pancreas)

df_pancreas[["PMID"]] <- as.character(df_pancreas[["PMID"]])

exclude_pancreas_PMIDs <- read.csv(file = "data/exclude_pancreas_PMIDs.txt",
                                   header = FALSE,
                                   col.names = "PMID",
                                   colClasses = "character"
)

df_pancreas <- dplyr::anti_join(df_pancreas, exclude_pancreas_PMIDs,
                                by = "PMID")

readr::write_csv(x = df_pancreas,
                 file = "data/pancreasarticles.txt",
                 col_names = TRUE
)


# ampulla ----

# fetched_ampulla_articles


names_df_ampulla_articles <-
  slotNames(fetched_ampulla_articles)

df_ampulla <-
  setNames(data.frame(matrix(
    ncol = length(names_df_ampulla_articles),
    nrow = length(
      slot(
        fetched_ampulla_articles,
        names_df_ampulla_articles[2]
      )
    )
  )),
  nm = names_df_ampulla_articles
  )


df_ampulla[, "PMID"]              <- fetched_ampulla_articles@PMID
df_ampulla[, "YearArticleDate"]   <- fetched_ampulla_articles@YearArticleDate
df_ampulla[, "MonthArticleDate"]  <- fetched_ampulla_articles@MonthArticleDate
df_ampulla[, "ISSN"]              <- fetched_ampulla_articles@ISSN
df_ampulla[, "Title"]             <- fetched_ampulla_articles@Title
df_ampulla[, "ArticleTitle"]      <- fetched_ampulla_articles@ArticleTitle
df_ampulla[, "ELocationID"]       <- fetched_ampulla_articles@ELocationID
df_ampulla[, "AbstractText"]      <- fetched_ampulla_articles@AbstractText
df_ampulla[, "Language"]          <- fetched_ampulla_articles@Language
df_ampulla[, "MedlineTA"]         <- fetched_ampulla_articles@MedlineTA
df_ampulla[, "NlmUniqueID"]       <- fetched_ampulla_articles@NlmUniqueID
df_ampulla[, "ISSNLinking"]       <- fetched_ampulla_articles@ISSNLinking
df_ampulla[, "PublicationStatus"] <- fetched_ampulla_articles@PublicationStatus
df_ampulla[, "ArticleId"]         <- fetched_ampulla_articles@ArticleId
df_ampulla[, "DOI"]               <- fetched_ampulla_articles@DOI
df_ampulla[, "Volume"]            <- fetched_ampulla_articles@Volume
df_ampulla[, "Issue"]             <- fetched_ampulla_articles@Issue
df_ampulla[, "ISOAbbreviation"]   <- fetched_ampulla_articles@ISOAbbreviation

df_ampulla <- df_ampulla[, c(
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

df_ampulla[["PMID"]] <- as.character(df_ampulla[["PMID"]])

readr::write_csv(x = df_ampulla,
                 file = "data/ampullaarticles.txt",
                 col_names = TRUE,
                 append = TRUE)

df_ampulla <- readr::read_csv(file = "data/ampullaarticles.txt", col_names = TRUE)

df_ampulla <- unique(df_ampulla)

df_ampulla[["PMID"]] <- as.character(df_ampulla[["PMID"]])

exclude_ampulla_PMIDs <- read.csv(file = "data/exclude_ampulla_PMIDs.txt",
                                   header = FALSE,
                                   col.names = "PMID",
                                   colClasses = "character"
)

df_ampulla <- dplyr::anti_join(df_ampulla, exclude_ampulla_PMIDs,
                               by = "PMID")

readr::write_csv(x = df_ampulla,
                 file = "data/ampullaarticles.txt",
                 col_names = TRUE
)


# bileduct ----

# fetched_bileduct_articles



names_df_bileduct_articles <-
  slotNames(fetched_bileduct_articles)

df_bd <-
  setNames(data.frame(matrix(
    ncol = length(names_df_bileduct_articles),
    nrow = length(
      slot(
        fetched_bileduct_articles,
        names_df_bileduct_articles[2]
      )
    )
  )),
  nm = names_df_bileduct_articles
  )


df_bd[, "PMID"]              <- fetched_bileduct_articles@PMID
df_bd[, "YearArticleDate"]   <- fetched_bileduct_articles@YearArticleDate
df_bd[, "MonthArticleDate"]  <- fetched_bileduct_articles@MonthArticleDate
df_bd[, "ISSN"]              <- fetched_bileduct_articles@ISSN
df_bd[, "Title"]             <- fetched_bileduct_articles@Title
df_bd[, "ArticleTitle"]      <- fetched_bileduct_articles@ArticleTitle
df_bd[, "ELocationID"]       <- fetched_bileduct_articles@ELocationID
df_bd[, "AbstractText"]      <- fetched_bileduct_articles@AbstractText
df_bd[, "Language"]          <- fetched_bileduct_articles@Language
df_bd[, "MedlineTA"]         <- fetched_bileduct_articles@MedlineTA
df_bd[, "NlmUniqueID"]       <- fetched_bileduct_articles@NlmUniqueID
df_bd[, "ISSNLinking"]       <- fetched_bileduct_articles@ISSNLinking
df_bd[, "PublicationStatus"] <- fetched_bileduct_articles@PublicationStatus
df_bd[, "ArticleId"]         <- fetched_bileduct_articles@ArticleId
df_bd[, "DOI"]               <- fetched_bileduct_articles@DOI
df_bd[, "Volume"]            <- fetched_bileduct_articles@Volume
df_bd[, "Issue"]             <- fetched_bileduct_articles@Issue
df_bd[, "ISOAbbreviation"]   <- fetched_bileduct_articles@ISOAbbreviation

df_bd <- df_bd[, c(
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

df_bd[["PMID"]] <- as.character(df_bd[["PMID"]])

readr::write_csv(x = df_bd,
                 file = "data/bileductarticles.txt",
                 col_names = TRUE,
                 append = TRUE)

df_bd <- readr::read_csv(file = "data/bileductarticles.txt", col_names = TRUE)

df_bd <- unique(df_bd)

df_bd[["PMID"]] <- as.character(df_bd[["PMID"]])

exclude_bileduct_PMIDs <- read.csv(file = "data/exclude_bileduct_PMIDs.txt",
                                   header = FALSE,
                                   col.names = "PMID",
                                   colClasses = "character"
)

df_bd <- dplyr::anti_join(df_bd, exclude_bileduct_PMIDs,
                          by = "PMID")

readr::write_csv(x = df_bd,
                 file = "data/bileductarticles.txt",
                 col_names = TRUE
)




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

df_gb[["PMID"]] <- as.character(df_gb[["PMID"]])

exclude_gallbladder_PMIDs <- read.csv(file = "data/exclude_gallbladder_PMIDs.txt",
                                   header = FALSE,
                                   col.names = "PMID",
                                   colClasses = "character"
                                   )

df_gb <- dplyr::anti_join(df_gb, exclude_gallbladder_PMIDs,
                          by = "PMID")

readr::write_csv(x = df_gb,
                 file = "data/gallbladderarticles.txt",
                 col_names = TRUE
)

