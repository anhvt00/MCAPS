# pairs interaction file: hprd_new_cd40_short.tsv

# id seq file: hprd_new_cd40.tsv

# Origin

## Link: [Hang Li, et al. 2018 Aug. _Deep Neural Network Based Predictions of Protein Interactions Using Primary Sequences_](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6222503/)

## Database:

Human Protein Reference Database (HPRD)

Year: 2010

Version: 2010

Species: Human

# Statistics

Table 2

- Positive samples: 8008
- Low-redundancy: 2413

| Negative Pairs | Positive Pairs | Proteins |
| -------------- | -------------- | -------- |
| 0              | 3516           | 3636     |

# Strategy

From the article

> The HPRD is a centralized repository for domain architecture, post-translational modifications, interaction networks, and disease associations in the human proteome. All the information in the HPRD was manually extracted from literature by expert biologists. The 2010 version of the HPRD dataset for protein interactions was downloaded.

> We removed the protein pairs common to the benchmark dataset or having a sequence of more than 1200 amino acids from all of the downloaded datasets. Additionally, lower-redundancy versions were built by removing pairs with sequences sharing more than 40% sequence identity using the CD-HIT program.
