#!/usr/bin/env bash

#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=02:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=make_genome
#SBATCH --output=%x.%j.log


set -e

module purge

export PATH="/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/cellranger-8.0.1:$PATH"

source /curc/sw/anaconda3/latest 
conda activate scRNAseq


# script

cmd="cellranger mkref \
--genome=Caenorhabditis_elegans_genome \
--fasta=Caenorhabditis_elegans.WBcel235.dna.toplevel.fa \
--genes=Caenorhabditis_elegans.WBcel235.112.filtered.gtf 
"

echo $cmd
eval $cmd


