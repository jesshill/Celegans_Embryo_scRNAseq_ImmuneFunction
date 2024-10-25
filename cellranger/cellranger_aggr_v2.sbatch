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
--id=all_pooled_v1 \
--csv=aggregation_all_v1.csv 
"
echo $cmd
eval $cmd



cmd1="cellranger aggr \
--id=all_pooled_v2 \
--csv=aggregation_all_v2.csv 
"
echo $cmd1
eval $cmd1



cmd2="cellranger aggr \
--id=all_GFP_v1 \
--csv=aggregation_GFP_v1.csv 
"
echo $cmd2
eval $cmd2



cmd3="cellranger aggr \
--id=all_GFP_v2 \
--csv=aggregation_GFP_v2.csv 
"
echo $cmd3
eval $cmd3


cmd4="cellranger aggr \
--id=all_unsort_v2 \
--csv=aggregation_unsort_v2.csv 
"
echo $cmd4
eval $cmd4
