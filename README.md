# MCAPST5-X for Protein-Protein Interaction Prediction

A Hybrid of Deep multi-kernel Convolutional Neural Networks and XGBoost using Protein Language Model for Protein-Protein Prediction MCAPST5-X. 

## Directory Structure

- `models`: This directory houses the various models used and developed throughout the project. These include:
  - LGBM - FSNN (Mahapatra _et al._, 2021)
  - PIPR (Chen _et al._, 2019)
  - D-SCRIPT (Sledzieski _et al._, 2021)
  - Topsy-Turvy (Singh _et al._, 2022)
  - MCAPST5-X (proposed)

 
- `data`: This directory contains various datasets including:
  - Golden standard datasets: E. coli (Martin _et al._, 2005); Yeast (Guo _et al._, 2008); Human (Pan _et al_., 2010)
  - Independent test sets: Cross-species (Guo _et al._ 2008), HPRD version 2010, HIPPIE version 2.0, DIP version 20160430
  - Dscript-data: Human, E. coli, Fly, Worm, Yeast (Sledzieski _et al._, 2021)
  - Interspecies datasets: Virus-human PPI datasets (Yang _et al._, 2021)

- `checkpoints`: This directory contains the saved states of MCAPST5-X training on Pan and Sledzieski human datasets for the inference on other indepedent test sets, allowing for the resumption of training and inference.

- `embeddings`: This directory contains pre-computed embeddings used specifically for the PIPR model.

- `environment`: This directory contains a `requirements.txt` file that lists all the Python packages needed to reproduce the MCAPST5-X model. However, this can be ignored as all the necessary libraries with specified versions are included in the Jupyter Notebook for MCAPST5-X.

## Usage

To reproduce or experiment with the models, you simply run the Jupyter Notebook corresponding to each model and make some small changes on the datasets you want to perform the cross-validation or inference evaluation. 

The project uses virtual machines from the cloud high-throughput computing services VastAI with GPU A100 (80 Gb VRAM) and 120 Gb CPU. This setup allows for efficient model cross-validation, training and inference.

