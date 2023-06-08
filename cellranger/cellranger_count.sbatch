#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=03:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=make_counts
#SBATCH --output=%x.%j.log
 
set -e
module purge
source /curc/sw/anaconda3/latest 


# script
cmd="cellranger count \
--id=GFP_1 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/HMTGLBGXJ/outs/fastq_path \
--sample=GFP_1 
"

echo $cmd
eval $cmd



cmd1="cellranger count \
--id=GFP_2 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/HMTGLBGXJ/outs/fastq_path \
--sample=GFP_2 
"

echo $cmd1
eval $cmd1



cmd2="cellranger count \
--id=unsort_1 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/HMTGLBGXJ/outs/fastq_path \
--sample=unsort_1 
"
                                                                                                                                                                                          
echo $cmd2
eval $cmd2



cmd3="cellranger count \
--id=unsort_2 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2022-JLH/HMTGLBGXJ/outs/fastq_path \
--sample=unsort_2 
"
                                                                                                                                                                                          
echo $cmd3
eval $cmd3



