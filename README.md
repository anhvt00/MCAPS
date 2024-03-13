# xCAPST5 for Protein-Protein Interaction Prediction Based on Sequences

**Reference:** Dang, T.H., Vu, T.A. xCAPT5: protein–protein interaction prediction using deep and wide multi-kernel pooling convolutional neural networks with protein language model. BMC Bioinformatics 25(106), 2024. [https://doi.org/10.1186/s12859-024-05725-6](https://doi.org/10.1186/s12859-024-05725-6)

A Hybrid of Deep multi-kernel Convolutional Neural Networks and XGBoost using Protein Language Model for Protein-Protein Prediction MCAPST5-X. 

## Directory Structure

- `models`: This directory houses the various models used and developed throughout the project. These include:
  - LGBM - FSNN (Mahapatra _et al._, 2021)
  - PIPR (Chen _et al._, 2019)
  - D-SCRIPT (Sledzieski _et al._, 2021)
  - Topsy-Turvy (Singh _et al._, 2022)
  - xCAPST5 (proposed, Dang and Vu, 2024)

 
- `data`: This directory contains various datasets including:
  - Golden standard datasets: E. coli (Martin _et al._, 2005); Yeast (Guo _et al._, 2008); Human (Pan _et al_., 2010)
  - Independent test sets: Cross-species (Guo _et al._ 2008), HPRD version 2010, HIPPIE version 2.0, DIP version 20160430
  - Dscript-data: Human, E. coli, Fly, Worm, Yeast (Sledzieski _et al._, 2021)
  - Interspecies datasets: Virus-human PPI datasets (Yang _et al._, 2021)

- `checkpoints`: This directory contains the saved states of MCAPST5-X training on Pan and Sledzieski human datasets for the inference on other indepedent test sets, allowing for the resumption of training and inference.

- `embeddings`: This directory contains pre-computed embeddings used specifically for the PIPR model.

- `environment`: This directory contains a `requirements.txt` file that lists all the Python packages needed to reproduce the MCAPST5-X model. However, this can be ignored as all the necessary libraries with specified versions are included in the Jupyter Notebook for MCAPST5-X.

## Usage

To reproduce or experiment with the models, navigate to the `models` directory and open the corresponding Jupyter Notebook for each model. The notebooks suffixed with _cross_validation_ are used for running cross-validation assessments, while the ones suffixed with _inference_ are used for inferring on new independent datasets.

You can then choose different datasets from the `data` directory to perform cross-validation tests or inference evaluations. Each notebook contains detailed instructions and comments to guide you through the process. For more information on how to use each model, refer to the corresponding Jupyter Notebook.


## Hardware Requirements

The MCAPS project is designed to run on high-performance computing hardware. We recommend using a virtual machine equipped with an A100 SXM4 GPU (80 GB VRAM) and a CPU with 120 GB RAM. This setup ensures efficient model cross-validation, training, and inference, enabling fast and accurate protein-protein interaction predictions.

We leverage the power of cloud computing through [VastAI](https://vast.ai/), a high-throughput computing service, to access this level of hardware. We use the Docker Image Template _tensorflow:latest-gpu_ with the Launch Mode _jupyter-python notebook_, which is a convenient and consistent setup for running deep learning experiments on the Jupyter Notebook environment.  If you're using your own setup, please ensure your hardware meets these requirements to achieve optimal performance.
