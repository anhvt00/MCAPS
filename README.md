<!-- ## Multifaceted Protein-Protein Interaction Prediction Based on Siamese Residual RCNN -->

# A Hybrid of Deep multi-kernel Convolutional Neural Networks and XGBoost using Protein Language Model for Protein-Protein Prediction MCAPST5-X

<!-- Sequence-based protein–protein interaction (PPI) prediction represents a fundamental computational biology problem. To address this problem, extensive research efforts have been

made to extract predefined features from the sequences. Based on these features, statistical algorithms are learned to classify the PPIs. However, such explicit features are usually costly to extract, and typically have limited coverage on the PPI information. We present an end-to-end framework, PIPR (Protein–Protein Interaction Prediction Based on Siamese Residual RCNN), for PPI predictions using only the protein sequences. PIPR incorporates a deep residual recurrent convolutional neural network in the Siamese architecture, which leverages both robust local features and contextualized information, which are significant for capturing the mutual influence of proteins sequences. PIPR relieves the data pre-processing efforts that are required by other systems, and generalizes well to different application scenarios. Experimental evaluations show that PIPR outperforms various state-of-the-art systems on the binary PPI prediction problem. Moreover, it shows a promising performance on more challenging problems of interaction type prediction and binding affinity estimation, where existing approaches

fall short. -->

**Annotation for below directories** 

**models**
 - LGBM - FSNN (Mahapatra et al., 2021)
 - PIPR (Chen et al., 2019)
 - D-SCRIPT (Sledzieski et al., 2021)
 - MCAPST5-X (proposed)
 
**data**
 - Golden standard datasets: E. coli Martin _et al_., 2015; Yeast Guo _et al._, 2008; Human Pan et al., 2010 
 - Independent test sets: Cross-species (Guo et al. 2008), HPRD version 2010, HIPPIE version 2.0, DIP version 20160430
 - Dscript-data: Human, _E. coli_, Fly, Worm, Yeast (Sledzieski et al., 2021)
 - Interspecies datasets: Virus-human PPI datasets (Yang et al., 2021) 

**checkpoints**
 - training_on_Pan
 - training_on_Sledzieski
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
