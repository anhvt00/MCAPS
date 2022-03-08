# Martin 2005 dataset

## Origin
    
    Predicting protein–protein interactions using signature products
    Martin et al., 2005
    https://doi.org/10.1093/bioinformatics/bth483

## Statistics
    
    Original published in the paper
        pairs 2916 PPIs including (hp_pairs.tsv)
            positive 1458 PPIs
            negative 1458 PPIs
        proteins 1428 sequences (hp_dict.tsv for dictionary mapping from id to sequence)
        


## Strategy published in the paper

    We next tested our algorithm with another proteome-wide experiment using two-hybrid measurements of H.pylori produced in Rain et al. (2001). This dataset allowed us to examine an organism besides yeast and gave a comparison of our method with the method of Bock and Gough (2001, 2003). We again used 10-fold cross-validation to assess our method, and we also assumed that the pairs not specified explicitly as interacting where non-interacting. From these non-interacting pairs, we selected at random a set of negative examples so that altogether we used 1458 positives and 1458 negatives for a total of 2916 protein pairs.

## My alteration implementing this dataset

     I delete some sequences having length lower than 50 and remove all pairs containing those sequences, then I obtain pairs and dictionary with length greater than 50

     hp_pairs_g50.tsv contains 2823 PPIs (loss 93 PPIs to original)
     hp_dict_g50.tsv contains 1384 sequences (loss 44 PPIs to original)

