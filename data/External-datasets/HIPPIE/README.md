# hip orig dataset hip_orig.tsv

# hip new dataset Non-redundant/hip_new.tsv

# hip seq dictionary Non-redundant/hip_new_seq.tsv

# Origin

## Link: [Hang Li, et al. 2018 Aug. _Deep Neural Network Based Predictions of Protein Interactions Using Primary Sequences_](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6222503/)

## Database:

The Human Integrated Protein–Protein Interaction Reference (HIPPIE)

Year: NOT MENTIONED

Version: 2.0

Species: Human

# Statistics

| Negative Pairs | Positive Pairs | Proteins |
| -------------- | -------------- | -------- |
| 0              | 236647         | 15498    |

# Strategy

> The Human Integrated Protein–Protein Interaction Reference (HIPPIE) provides confidence-scored and functionally annotated human protein–protein interactions. The PPIs with confidence scores equal to or greater than 0.73 were regarded as “high quality” (HQ) data, while those with scores lower than 0.73 were regarded as “low quality” (LQ) data. Both HQ and LQ data of HIPPIE (version 2.0) were downloaded.

> We removed the protein pairs common to the benchmark dataset or having a sequence of more than 1200 amino acids from all of the downloaded datasets. Additionally, lower-redundancy versions were built by removing pairs with sequences sharing more than 40% sequence identity using the CD-HIT program.
