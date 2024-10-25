#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=2:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=make_counts
#SBATCH --output=%x.%j.log
 
set -e
module purge

export PATH="/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/cellranger-8.0.1:$PATH"

source /curc/sw/anaconda3/latest 


# script
cmd="cellranger count \
--id=GFP_3_200 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024 \
--sample=GFP_3 
--force-cells=200
--create-bam=true
"                 
echo $cmd
eval $cmd