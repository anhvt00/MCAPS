<!-- ## Multifaceted Protein-Protein Interaction Prediction Based on Siamese Residual RCNN -->

# Sequence - based hybrid neural machine boosting machine (S-HNBM) for protein protein interaction prediction

<!-- Sequence-based protein–protein interaction (PPI) prediction represents a fundamental computational biology problem. To address this problem, extensive research efforts have been

made to extract predefined features from the sequences. Based on these features, statistical algorithms are learned to classify the PPIs. However, such explicit features are usually costly to extract, and typically have limited coverage on the PPI information. We present an end-to-end framework, PIPR (Protein–Protein Interaction Prediction Based on Siamese Residual RCNN), for PPI predictions using only the protein sequences. PIPR incorporates a deep residual recurrent convolutional neural network in the Siamese architecture, which leverages both robust local features and contextualized information, which are significant for capturing the mutual influence of proteins sequences. PIPR relieves the data pre-processing efforts that are required by other systems, and generalizes well to different application scenarios. Experimental evaluations show that PIPR outperforms various state-of-the-art systems on the binary PPI prediction problem. Moreover, it shows a promising performance on more challenging problems of interaction type prediction and binding affinity estimation, where existing approaches

fall short. -->

**Annotation for below directories** 

**models**
 - LGBM - FSNN (Mahapatra et al., 2021)
 - PIPR (Chen et al., 2019)
 - D-SCRIPT (Sledzieski et al., 2021)
 - HNBM (proposed)
 
**data**
 - Golden standard datasets: E. coli Martin et al., 2015 (E. coli); Yeast Guo et al., 2008 (S. cerevisae); Human Pan et al., 2010 (H. sapiens)
 - Independent test sets: Cross-species (Guo et al. 2008), HPRD ver 2010, HIPPIE ver 2.0, DIP ver 20160430
 - Dscript-data: imbalance subdatasets following the same evaluation scheme D-SCRIPT (Sledzieski et al., 2021)
 - Interspecies datasets: Virus-human PPI datasets (Yang et al., 2021) 
 - Generalization datasets: Marcotee et al., 2012; Hamp et al., 2015

**environment**
 - dependencies to run this project, if you run on Google Colab, you can pass the step of installing depedencies
<!-- ## Folders

Embeddings for universal embedding usage -->








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
