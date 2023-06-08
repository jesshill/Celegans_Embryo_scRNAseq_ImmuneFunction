#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=02:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=make_aggr
#SBATCH --output=%x.%j.log
 
set -e

module purge

source /curc/sw/anaconda3/latest 

# script
cmd="cellranger aggr \
--id=all_pooled \
--csv=aggregation_all.csv 
"

echo $cmd
eval $cmd



cmd1="cellranger aggr \
--id=all_GFP \
--csv=aggregation_GFP.csv 
"
echo $cmd1
eval $cmd1



cmd2="cellranger aggr \
--id=all_unsort \
--csv=aggregation_unsort.csv 
"

echo $cmd2
eval $cmd2
