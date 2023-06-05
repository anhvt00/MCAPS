# A Hybrid of Deep multi-kernel Convolutional Neural Networks and XGBoost using Protein Language Model for Protein-Protein Prediction MCAPST5-X

**Annotation for below directories** 

**models**
 - LGBM - FSNN (Mahapatra _et al._, 2021)
 - PIPR (Chen _et al._, 2019)
 - D-SCRIPT (Sledzieski _et al._, 2021)
 - Topsy-Turvy (Singh _et al._, 2022)
 - MCAPST5-X (proposed)
You can simply run the Jupyter Notebook corresponding to each model and make some small changes on the datasets you want to do cross-validation test, or inference. 
 
**data**
 - Golden standard datasets: E. coli Martin _et al_., 2015; Yeast Guo _et al._, 2008; Human Pan et al., 2010 
 - Independent test sets: Cross-species (Guo et al. 2008), HPRD version 2010, HIPPIE version 2.0, DIP version 20160430
 - Dscript-data: Human, _E. coli_, Fly, Worm, Yeast (Sledzieski _et al._, 2021)
 - Interspecies datasets: Virus-human PPI datasets (Yang _et al._, 2021) 

**checkpoints**
 - Pan
 - Sledzieski

**embeddings**
This directory contains some embeddings for the PIPR model only.







<!-- Bibtex:



@article{chen2019pipr,

title={Multifaceted Protein-Protein Interaction Prediction Based on Siamese Residual RCNN},

author={Chen, Muhao and Ju, Chelsea and Zhou, Guangyu and Chen, Xuelu and Zhang, Tianran and Chang, Kai-Wei and Zaniolo, Carlo and Wang, Wei},

journal={Bioinformatics},

volume = {35},

number = {14},

pages = {i305-i314},

year = {2019},

month = {07},

publisher={Oxford University Press}

}

## MuPIPR (NAR GaB 2020)

Also check out the follow up work in the *NAR Genom. Bioinform.* paper [Mutation effect estimation on protein–protein interactions using deep contextualized representation learning](https://academic.oup.com/nargab/article/2/2/lqaa015/5781175), in which a *pre-trained neural language model* helps the PIPR architecture to estimate the point mutation effect (e.g. estimating the change of binding affinity and the change of BSA) in PPIs.

The released software is available at [guangyu-zhou/MuPIPR](https://github.com/guangyu-zhou/MuPIPR). -->
