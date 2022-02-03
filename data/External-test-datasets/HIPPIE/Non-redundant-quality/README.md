# hippie short high quality cd40 file: hip_new_hq_cd40_short.tsv

# hippie short low quality cd40 file: hip_new_lq_cd40_short.tsv

# hippie short hq cd40 id-seq file: hip_hq_cd40.tsv

# hippie short lq cd40 id-seq file: hip_lq_cd40.tsv

# Origin

## Link: [Hang Li, et al. 2018 Aug. _Deep Neural Network Based Predictions of Protein Interactions Using Primary Sequences_](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6222503/)

## Database:

The Human Integrated Protein–Protein Interaction Reference (HIPPIE)

Year: NOT MENTIONED

Version: 2.0

Species: Human

# Statistics

Table 2

- HIPPIE HQ

  - Positive samples: 25701
  - Low-redundancy: 3035

- HIPPIE LQ

  - Positive samples: 128591
  - Low-redundancy: 2546

## Short, High Quality

| Negative Pairs | Positive Pairs | Proteins |
| -------------- | -------------- | -------- |
| 0              | 15489          | 6123     |

## Short, Low Quality

| Negative Pairs | Positive Pairs | Proteins |
| -------------- | -------------- | -------- |
| 0              | 101684         | 10488    |

# Strategy

> The Human Integrated Protein–Protein Interaction Reference (HIPPIE) provides confidence-scored and functionally annotated human protein–protein interactions. The PPIs with confidence scores equal to or greater than 0.73 were regarded as “high quality” (HQ) data, while those with scores lower than 0.73 were regarded as “low quality” (LQ) data. Both HQ and LQ data of HIPPIE (version 2.0) were downloaded.

> We removed the protein pairs common to the benchmark dataset or having a sequence of more than 1200 amino acids from all of the downloaded datasets. Additionally, lower-redundancy versions were built by removing pairs with sequences sharing more than 40% sequence identity using the CD-HIT program.
