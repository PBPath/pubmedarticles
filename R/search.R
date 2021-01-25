pancreas_articles <- RISmed::EUtilsSummary(query = searchFormula_pancreas,
                                     type = 'esearch',
                                     db = 'pubmed',
                                     reldate = 60
)

Sys.sleep(10)

gallbladder_articles <- RISmed::EUtilsSummary(query = searchFormula_gallbladder,
                                           type = 'esearch',
                                           db = 'pubmed',
                                           reldate = 60
)

Sys.sleep(10)

bileduct_articles <- RISmed::EUtilsSummary(query = searchFormula_bileduct,
                                           type = 'esearch',
                                           db = 'pubmed',
                                           reldate = 60
)

Sys.sleep(10)

ampulla_articles <- RISmed::EUtilsSummary(query = searchFormula_ampulla,
                                           type = 'esearch',
                                           db = 'pubmed',
                                           reldate = 60
)

Sys.sleep(10)



