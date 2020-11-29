# pancreas

pancreas_PMIDs <- read.csv(file = "data/pancreas_PMIDs.txt",
                           header = FALSE
)

exclude_pancreas_PMIDs <- read.csv(file = "data/exclude_pancreas_PMIDs.txt",
                                   header = FALSE
)

pancreas_PMIDs <-
  pancreas_PMIDs$V1 %>%
  unique()

pancreas_PMIDs <-
  unique(pancreas_PMIDs[! pancreas_PMIDs %in% exclude_pancreas_PMIDs$V1])


write(x = PMIDs_pancreas_articles,
      file = "data/pancreas_PMIDs.txt")


# ampulla

ampulla_PMIDs <- read.csv(file = "data/ampulla_PMIDs.txt",
                          header = FALSE
)

exclude_ampulla_PMIDs <- read.csv(file = "data/exclude_ampulla_PMIDs.txt",
                                  header = FALSE
)

ampulla_PMIDs <-
  ampulla_PMIDs$V1 %>%
  unique()

ampulla_PMIDs <-
  unique(ampulla_PMIDs[! ampulla_PMIDs %in% exclude_ampulla_PMIDs$V1])


write(x = PMIDs_ampulla_articles,
      file = "data/ampulla_PMIDs.txt")

# gallbladder

gallbladder_PMIDs <- read.csv(file = "data/gallbladder_PMIDs.txt",
                              header = FALSE
)

exclude_gallbladder_PMIDs <- read.csv(file = "data/exclude_gallbladder_PMIDs.txt",
                                      header = FALSE
)

gallbladder_PMIDs <-
  gallbladder_PMIDs$V1 %>%
  unique()

gallbladder_PMIDs <-
  unique(gallbladder_PMIDs[! gallbladder_PMIDs %in% exclude_gallbladder_PMIDs$V1])


write(x = PMIDs_gallbladder_articles,
      file = "data/gallbladder_PMIDs.txt")


# bileduct

bileduct_PMIDs <- read.csv(file = "data/bileduct_PMIDs.txt",
                           header = FALSE
)

exclude_bileduct_PMIDs <- read.csv(file = "data/exclude_bileduct_PMIDs.txt",
                                   header = FALSE
)

bileduct_PMIDs <-
  bileduct_PMIDs$V1 %>%
  unique()

bileduct_PMIDs <-
  unique(bileduct_PMIDs[! bileduct_PMIDs %in% exclude_bileduct_PMIDs$V1])


write(x = PMIDs_bileduct_articles,
      file = "data/bileduct_PMIDs.txt")

