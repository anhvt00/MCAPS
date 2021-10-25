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

  

## Folders

./binary contains the implementation for the binary prediction task. This includes scripts to run on three datasets: Yeast, Human and multi-species.

./type contains that for the interaction type prediction task.

./regression contains that for the binding affinity prediction task.

Each folder is attached with a **run.sh** to show how to run the evaluation program.

./embeddings contains pre-trained amino acid embeddings files

  

## Datasets

  

Here I include altogether 6 datasets. New datasets processed in this work are marked *ND*.

1. The Yeast dataset for binary PPI prediction provided in [Guo et al. 2008](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2396404/).

2. The *multi-species dataset (C. elegans, D. melanogaster and E. coli)* extracted from DIP for binary PPI prediction. (*ND*)

3. Added another binary PPI prediction dataset from [Pan et el. 2010](https://www.ncbi.nlm.nih.gov/pubmed/20698572) under the folder *sun*.

4. The SHS27k dataset for interaction type prediction can be downloaded from [here](http://yellowstone.cs.ucla.edu/~muhao/pipr/SHS_ppi_beta.zip) or from the [Google Drive](https://drive.google.com/open?id=1y_5gje6AofqjrkMPY58XUdKgDuu1mZCh). (*ND*)

5. The larger SHS148k dataset for interaction type prediction can be found in the links above. (*ND*)

6. Link to the normalized SKEMPI dataset is [here](http://yellowstone.cs.ucla.edu/~muhao/pipr/SKEMPI_all_dg_avg_(PIPR).zip).

  

### Note: if you would like to use another PPI dataset of your own, then each id2seq_file in rcnn.py needs to be changed to a corresponding dictionary file.

## Debug notation
- After you finish your requirements.txt, you change directory to PIPR/binary/model/lasagna and open rcnn.py file (not rcnn2.py)
- Import pdb if pdb is not in the source code, set a break point before the loop (train_test), you can find the loop train_test in the file by search ctrl + f for the phrase "loop train_test"
- Run the program in terminal with the command 
-  python program.py <dataset> <column_index_of_label> <result_location> <id_for_embeddings: 0=onehot, 1=a_c, 2=a_{ph}, 3=[a_c,a_{ph}]> <hidden_dim> <epochs_per_fold> (prototype)
-  CUDA_VISIBLE_DEVICES=0 python rcnn.py ../../../yeast/preprocessed/protein.actions.tsv -1 results/yeast_wvctc_rcnn_50_5.txt 3 50 100 (real-one) (we need to add CUDA_VISIBLE_DEVICES=0 to specify which GPU in our local or remote machine we want to use if we have more than 1 GPU)
-  When you run the command, you will face the file path error

- Please **do not change anything** in the file except put pdb.set_trace()


## Reference

This work has been published in the Bioinformatics journal featuring ISMB/ECCB 2019.

  

DOI: http://dx.doi.org/10.1093/bioinformatics/btz328

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