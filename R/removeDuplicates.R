# pancreas ----

pancreas_PMIDs <- read.csv(file = "data/pancreas_PMIDs.txt",
                           header = FALSE
)

exclude_pancreas_PMIDs <- read.csv(file = "data/exclude_pancreas_PMIDs.txt",
                                   header = FALSE
)

pancreas_PMIDs$V1 <- unique(pancreas_PMIDs$V1)

pancreas_PMIDs$V1 <- pancreas_PMIDs$V1[! pancreas_PMIDs$V1 %in% exclude_pancreas_PMIDs$V1]

readr::write_csv(x = pancreas_PMIDs,
                 file = "data/pancreas_PMIDs.txt",
                 col_names = FALSE
)

# ampulla ----

ampulla_PMIDs <- read.csv(file = "data/ampulla_PMIDs.txt",
                          header = FALSE
)

exclude_ampulla_PMIDs <- read.csv(file = "data/exclude_ampulla_PMIDs.txt",
                                  header = FALSE
)

ampulla_PMIDs$V1 <- unique(ampulla_PMIDs$V1)

ampulla_PMIDs$V1 <- ampulla_PMIDs$V1[! ampulla_PMIDs$V1 %in% exclude_ampulla_PMIDs$V1]


readr::write_csv(x = ampulla_PMIDs,
                 file = "data/ampulla_PMIDs.txt",
                 col_names = FALSE
)

# gallbladder ----

gallbladder_PMIDs <- read.csv(file = "data/gallbladder_PMIDs.txt",
                              header = FALSE
)

exclude_gallbladder_PMIDs <- read.csv(file = "data/exclude_gallbladder_PMIDs.txt",
                                      header = FALSE
)

gallbladder_PMIDs$V1 <- unique(gallbladder_PMIDs$V1)

gallbladder_PMIDs$V1 <- gallbladder_PMIDs$V1[! gallbladder_PMIDs$V1 %in% exclude_gallbladder_PMIDs$V1]

readr::write_csv(x = gallbladder_PMIDs,
                 file = "data/gallbladder_PMIDs.txt",
                 col_names = FALSE
)

# bileduct

bileduct_PMIDs <- read.csv(file = "data/bileduct_PMIDs.txt",
                           header = FALSE
)

exclude_bileduct_PMIDs <- read.csv(file = "data/exclude_bileduct_PMIDs.txt",
                                   header = FALSE
)

bileduct_PMIDs$V1 <- unique(bileduct_PMIDs$V1)

bileduct_PMIDs$V1 <- bileduct_PMIDs$V1[! bileduct_PMIDs$V1 %in% exclude_bileduct_PMIDs$V1]

readr::write_csv(x = bileduct_PMIDs,
      file = "data/bileduct_PMIDs.txt",
      col_names = FALSE
      )

