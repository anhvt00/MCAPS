# MCAPS: Protein-Protein Interaction Prediction

MCAPS is a project focused on building a deep neural network for fast and accurate protein-protein interaction prediction. It's a hybrid of Deep multi-kernel Convolutional Neural Networks and XGBoost using Protein Language Model for Protein-Protein Prediction, referred to as MCAPST5-X.

## Directory Structure

- `models`: This directory contains various models including:
  - LGBM - FSNN (Mahapatra et al., 2021)
  - PIPR (Chen et al., 2019)
  - D-SCRIPT (Sledzieski et al., 2021)
  - Topsy-Turvy (Singh et al., 2022)
  - MCAPST5-X (proposed)

 
- `data`: This directory contains various datasets including:
  - Golden standard datasets: E. coli Martin et al., 2015; Yeast Guo et al., 2008; Human Pan et al., 2010
  - Independent test sets: Cross-species (Guo et al. 2008), HPRD version 2010, HIPPIE version 2.0, DIP version 20160430
  - Dscript-data: Human, E. coli, Fly, Worm, Yeast (Sledzieski et al., 2021)
  - Interspecies datasets: Virus-human PPI datasets (Yang et al., 2021)

- `checkpoints`: This directory contains checkpoints for the Pan and Sledzieski models.

- `embeddings`: This directory contains some embeddings for the PIPR model only.
- `environment`: This directory contains the file requirements.txt of all packages need to reproduce MCAPST5-X, but you can ignore because all the necessary libraries with specified version are included in the block cell in the Jupyter Notebook for MCAPST5-X.

## Usage

To use any of the models, simply run the corresponding Jupyter Notebook and make some small changes on the datasets you want to do cross-validation test, or inference.
We use the virtual machines from the cloud high-throughput computing services VastAI with GPU A100 (80 Gb VRAM) and 120 Gb CPU. 
