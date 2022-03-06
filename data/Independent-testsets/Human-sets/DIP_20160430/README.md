# original dataset in Hsapi20160430CR.txt

# new id pairs dataset Non-redundant/dip_new_cd40_len.tsv

# new seq dataset Non-redundant/dip_new_seq_cd40.tsv

# Origin

## Link: [Hang Li, et al. 2018 Aug. _Deep Neural Network Based Predictions of Protein Interactions Using Primary Sequences_](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6222503/)

## Database:

The Database of Interacting Proteins (DIP)

Year: 2016

Version: 20160430

Species: Human

# Statistics

Table 2

- Positive samples: 4514
- Low redundancy: 1276

| Negative Pairs | Positive Pairs | Proteins |
| -------------- | -------------- | -------- |
| 0              | 1468           | 1704     |

# Strategy

From the article

> The Database of Interacting Proteins (DIP) archives and evaluates experimentally determined interactions between proteins. All the interactions in the DIP are culled from peer-reviewed literature and are manually entered into the database by expert curators. The released version 20160430 was downloaded.

> We removed the protein pairs common to the benchmark dataset or having a sequence of more than 1200 amino acids from all of the downloaded datasets. Additionally, lower-redundancy versions were built by removing pairs with sequences sharing more than 40% sequence identity using the CD-HIT program.
