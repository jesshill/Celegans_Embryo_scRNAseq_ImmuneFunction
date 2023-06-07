#!/usr/bin/env bash

#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=01:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=make_fastq
#SBATCH --output=%x.%j.log

 
set -e

module purge

source /curc/sw/anaconda3/latest 


# script

cmd="cellranger mkfastq \
--run=BCL_files \
--csv=Hill_scRNA_simple_samplesheet.csv \
--delete-undetermined
"

echo $cmd
eval $cmd
