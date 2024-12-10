# MICB405_Group9

UBC Bioinformatics Final Project Group 9 - Differential Gene Expression of S. Cerevisiae under Acetic Acid Stress

Authors: Kayla Hanson, Indra Yavuukhulan, Hans Carlo von Vegesack, Christine Ma

2024 Winter Term 1


Investigation into the differential gene expression of Saccharomyces cerevisiae under severe acetic acid stress. The data for analysis was obtained from SRA accession PRJNA322384, which was uploaded as part of the study by Dong et. al. in 2017 (cited below). 


Dong, Y., Hu, J., Fan, L. et al. RNA-Seq-based transcriptomic and metabolomic analysis reveal stress responses and programmed cell death induced by acetic acid in Saccharomyces cerevisiae. Sci Rep 7, 42659 (2017). https://doi.org/10.1038/srep42659

## Methods

### Genome Indexing
We prepared our reference genome for alignment by indexing it using the `index_reference.sh` script located in the `Genome_Alignment` folder.

### Read Trimming
Prior to alignment, raw sequencing reads in FASTQ format were trimmed to remove adapters and low-quality bases using the `trim_all.sh` script found in the `scripts` folder.

### Genome Alignment
The trimmed reads were then aligned to the indexed reference genome using the alignment scripts available in the `STAR_Alignments` folder.

### Differential Gene Expression Analysis
We conducted differential gene expression analysis using the DESeq2 pipeline. The scripts used for this analysis can be found in the `DESeq2` sub-folder within the `scripts_trimmed` directory.

### GO Term Enrichment Analysis
Following differential expression analysis, we performed gene ontology (GO) term enrichment analysis to identify significantly enriched biological terms. The scripts for this analysis are located in the `GO_Term_Enrichment_Analysis` sub-folder within the `scripts_trimmed` directory.
