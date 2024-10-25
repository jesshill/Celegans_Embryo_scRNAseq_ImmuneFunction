#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=10:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=make_counts
#SBATCH --output=%x.%j.log
 
set -e
module purge

export PATH="/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/cellranger-8.0.1:$PATH"

source /curc/sw/anaconda3/latest 


# script
cmd="cellranger count \
--id=GFP_1_1783 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/HMTGLBGXJ/outs/fastq_path/HMTGLBGXJ \
--sample=GFP_1
--force-cells=1783
--create-bam=true
"
echo $cmd
eval $cmd


cmd1="cellranger count \
--id=GFP_2_1154 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/HMTGLBGXJ/outs/fastq_path/HMTGLBGXJ \
--sample=GFP_2 
--force-cells=1154
--create-bam=true
"
echo $cmd1
eval $cmd1


cmd2="cellranger count \
--id=unsort_1_715 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/HMTGLBGXJ/outs/fastq_path/HMTGLBGXJ \
--sample=unsort_1
--force-cells=715
--create-bam=true
"
echo $cmd2
eval $cmd2


cmd5="cellranger count \
--id=GFP_4_2128 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024 \
--sample=GFP_4
--force-cells=2128
--create-bam=true
"                 
echo $cmd5
eval $cmd5


cmd6="cellranger count \
--id=Unsort_3_1679 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024 \
--sample=Unsort_3
--force-cells=1679
--create-bam=true
"                 
echo $cmd6
eval $cmd6


cmd7="cellranger count \
--id=Unsort_4_590 \
--transcriptome=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/Caenorhabditis_elegans_genome \
--fastqs=/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024 \
--sample=Unsort_4
--force-cells=590
--create-bam=true
"
echo $cmd7
eval $cmd7
