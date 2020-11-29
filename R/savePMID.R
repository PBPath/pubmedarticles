PMIDs_pancreas_articles <- unique(PMIDs_pancreas_articles)

write(x = PMIDs_pancreas_articles,
      file = "data/pancreas_PMIDs.txt",
      append = TRUE)

PMIDs_ampulla_articles <- unique(PMIDs_ampulla_articles)

write(x = PMIDs_ampulla_articles,
      file = "data/ampulla_PMIDs.txt",
      append = TRUE)

PMIDs_bileduct_articles <- unique(PMIDs_bileduct_articles)

write(x = PMIDs_bileduct_articles,
      file = "data/bileduct_PMIDs.txt",
      append = TRUE)

PMIDs_gallbladder_articles <- unique(PMIDs_gallbladder_articles)

write(x = PMIDs_gallbladder_articles,
      file = "data/gallbladder_PMIDs.txt",
      append = TRUE)
