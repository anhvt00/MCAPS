<!-- ## Multifaceted Protein-Protein Interaction Prediction Based on Siamese Residual RCNN -->

# Enhanced Protein-Protein Interaction Prediction based on Siamese Residual RCNN (EPIPR)



This is the repository for EPIPR, development of [PIPR](https://github.com/muhaochen/seq_ppi) repository. This repository contains the source code and links to some datasets used in training and testing the model.



## Enhance to PIPR

<!-- Sequence-based protein–protein interaction (PPI) prediction represents a fundamental computational biology problem. To address this problem, extensive research efforts have been

made to extract predefined features from the sequences. Based on these features, statistical algorithms are learned to classify the PPIs. However, such explicit features are usually costly to extract, and typically have limited coverage on the PPI information. We present an end-to-end framework, PIPR (Protein–Protein Interaction Prediction Based on Siamese Residual RCNN), for PPI predictions using only the protein sequences. PIPR incorporates a deep residual recurrent convolutional neural network in the Siamese architecture, which leverages both robust local features and contextualized information, which are significant for capturing the mutual influence of proteins sequences. PIPR relieves the data pre-processing efforts that are required by other systems, and generalizes well to different application scenarios. Experimental evaluations show that PIPR outperforms various state-of-the-art systems on the binary PPI prediction problem. Moreover, it shows a promising performance on more challenging problems of interaction type prediction and binding affinity estimation, where existing approaches

fall short. -->
Update to PIPR framework
 - Augment datasets from STRINGdb 11.5 version
 - Try another petrained embedding from large datasets
 - Tunning hyperparameters of the architecture





## Environment



Python >= 3.6

Tensorflow 2.x (with GPU support)

CuDNN (if not installed, all CuDNNGRU in the source code needs to be changed to GRU)

Keras 2.2.4



[Here](https://github.com/anhvt00/PIPR/blob/master/environment/requirements.txt) is a requirements.txt file of the environment.



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
