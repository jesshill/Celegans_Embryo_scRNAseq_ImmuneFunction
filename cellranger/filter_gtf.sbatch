#!/usr/bin/env bash

#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --time=01:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=filter_gtf
#SBATCH --output=%x.%j.log

 
set -e

module purge

source /curc/sw/anaconda3/latest 
conda activate scRNAseq


# script

cmd="cellranger mkgtf \
Caenorhabditis_elegans.WBcel235.109.gtf \
Caenorhabditis_elegans.WBcel235.109.filtered.gtf \
--attribute=gene_biotype:protein_coding"

echo $cmd
eval $cmd



