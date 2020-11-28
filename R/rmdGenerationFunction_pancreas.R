# pancreas generate Rmd files from PMID Lists ----

PMIDList <- pancreas_recent_PMID$PMID

magicfor::magic_for(silent = TRUE)

for (i in 1:length(PMIDList)) {
y <- paste0("

---

```{r pancreas ", PMIDList[i] ,", include=FALSE}

PMID_", PMIDList[i] ," <- RefManageR::ReadPubMed('", PMIDList[i] ,"', database = 'PubMed')

citation_", PMIDList[i] ," <- paste0(PMID_", PMIDList[i] ,"$journal,' ', PMID_", PMIDList[i] ,"$year, ' ', PMID_", PMIDList[i] ,"$month,';', PMID_", PMIDList[i] ,"$volume,'(', PMID_", PMIDList[i] ,"$number,'):', PMID_", PMIDList[i] ,"$pages)

PubMed_", PMIDList[i] ," <- paste0(PubMedString, PMID_", PMIDList[i] ,"$eprint)

doi_", PMIDList[i] ," <- paste0(doiString, PMID_", PMIDList[i] ,"$doi)

Sys.sleep(2)

```

<details open> <summary>
- **`r PMID_", PMIDList[i] ,"$title`**
</summary> 

*`r citation_", PMIDList[i] ,"`*

`r PubMed_", PMIDList[i] ,"`

`r PMID_", PMIDList[i] ,"$abstract`

`r doi_", PMIDList[i] ,"`

</details>

---"

, "\n", "\n")

put(y)

}

writeLines(magicfor::magic_result_as_vector(), "~/JournalWatchPBPath/_pancreasRecent.Rmd")

magicfor::magic_free()
