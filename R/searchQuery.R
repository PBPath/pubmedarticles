searchQuery_pancreas    <-
    paste0("(",
           topic_pancreas,
           ") AND (" ,
           journals,
           ")",
           " AND hasabstract",
           collapse = "")

searchQuery_gallbladder <-
    paste0("(",
           topic_gallbladder,
           ") AND (" ,
           journals,
           ")",
           " AND hasabstract",
           collapse = "")

searchQuery_bileduct   <-
    paste0("(",
           topic_bileduct,
           ") AND (" ,
           journals,
           ")",
           " AND hasabstract",
           collapse = "")

searchQuery_ampulla     <-
    paste0("(",
           topic_ampulla,
           ") AND (" ,
           journals,
           ")",
           " AND hasabstract",
           collapse = "")
