#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=06:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=make_aggr
#SBATCH --output=%x.%j.log
 
set -e

module purge

export PATH="/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/cellranger-8.0.1:$PATH"

source /curc/sw/anaconda3/latest 

# script
cmd="cellranger aggr \
--id=GFP_pooled_rep1and2 \
--csv=aggregation_GFP_rep1and2.csv 
"
echo $cmd
eval $cmd



cmd1="cellranger aggr \
--id=GFP_pooled_rep3and4 \
--csv=aggregation_GFP_rep3and4.csv
"
echo $cmd1
eval $cmd1

