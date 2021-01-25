# pancreas ----

new_pancreas_articles <- NULL
new_pancreas_articles$V1 <- PMIDs_pancreas_articles
new_pancreas_articles <- as.data.frame(new_pancreas_articles)

pancreas_PMIDs <- read.csv(file = "data/pancreas_PMIDs.txt",
                           header = FALSE
)

pancreas_PMIDs <- rbind(pancreas_PMIDs, new_pancreas_articles)

pancreas_PMIDs <- unique(pancreas_PMIDs)


exclude_pancreas_PMIDs <- read.csv(file = "data/exclude_pancreas_PMIDs.txt",
                                   header = FALSE
)


pancreas_PMIDs2 <- pancreas_PMIDs$V1[! pancreas_PMIDs$V1 %in% exclude_pancreas_PMIDs$V1]

pancreas_PMIDs <- NULL
pancreas_PMIDs$V1 <- pancreas_PMIDs2
pancreas_PMIDs <- as.data.frame(pancreas_PMIDs)

readr::write_csv(x = pancreas_PMIDs,
                 file = "data/pancreas_PMIDs.txt",
                 col_names = FALSE
)

# ampulla ----

new_ampulla_articles <- NULL
new_ampulla_articles$V1 <- PMIDs_ampulla_articles
new_ampulla_articles <- as.data.frame(new_ampulla_articles)

ampulla_PMIDs <- read.csv(file = "data/ampulla_PMIDs.txt",
                          header = FALSE
)

ampulla_PMIDs <- rbind(ampulla_PMIDs, new_ampulla_articles)

ampulla_PMIDs <- unique(ampulla_PMIDs)


exclude_ampulla_PMIDs <- read.csv(file = "data/exclude_ampulla_PMIDs.txt",
                                  header = FALSE
)


ampulla_PMIDs2 <- ampulla_PMIDs$V1[! ampulla_PMIDs$V1 %in% exclude_ampulla_PMIDs$V1]

ampulla_PMIDs <- NULL
ampulla_PMIDs$V1 <- ampulla_PMIDs2
ampulla_PMIDs <- as.data.frame(ampulla_PMIDs)

readr::write_csv(x = ampulla_PMIDs,
                 file = "data/ampulla_PMIDs.txt",
                 col_names = FALSE
)

# gallbladder ----

new_gallbladder_articles <- NULL
new_gallbladder_articles$V1 <- PMIDs_gallbladder_articles
new_gallbladder_articles <- as.data.frame(new_gallbladder_articles)

gallbladder_PMIDs <- read.csv(file = "data/gallbladder_PMIDs.txt",
                              header = FALSE
)

gallbladder_PMIDs <- rbind(gallbladder_PMIDs, new_gallbladder_articles)

gallbladder_PMIDs <- unique(gallbladder_PMIDs)


exclude_gallbladder_PMIDs <- read.csv(file = "data/exclude_gallbladder_PMIDs.txt",
                                      header = FALSE
)


gallbladder_PMIDs2 <- gallbladder_PMIDs$V1[! gallbladder_PMIDs$V1 %in% exclude_gallbladder_PMIDs$V1]

gallbladder_PMIDs <- NULL
gallbladder_PMIDs$V1 <- gallbladder_PMIDs2
gallbladder_PMIDs <- as.data.frame(gallbladder_PMIDs)


readr::write_csv(x = gallbladder_PMIDs,
                 file = "data/gallbladder_PMIDs.txt",
                 col_names = FALSE
)


# bileduct

new_bileduct_articles <- NULL
new_bileduct_articles$V1 <- PMIDs_bileduct_articles
new_bileduct_articles <- as.data.frame(new_bileduct_articles)

bileduct_PMIDs <- read.csv(file = "data/bileduct_PMIDs.txt",
                           header = FALSE
)

bileduct_PMIDs <- rbind(bileduct_PMIDs, new_bileduct_articles)

bileduct_PMIDs <- unique(bileduct_PMIDs)


exclude_bileduct_PMIDs <- read.csv(file = "data/exclude_bileduct_PMIDs.txt",
                                   header = FALSE
)


bileduct_PMIDs2 <- bileduct_PMIDs$V1[! bileduct_PMIDs$V1 %in% exclude_bileduct_PMIDs$V1]

bileduct_PMIDs <- NULL
bileduct_PMIDs$V1 <- bileduct_PMIDs2
bileduct_PMIDs <- as.data.frame(bileduct_PMIDs)


readr::write_csv(x = bileduct_PMIDs,
                 file = "data/bileduct_PMIDs.txt",
                 col_names = FALSE
)
