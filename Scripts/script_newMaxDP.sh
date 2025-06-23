#!/bin/bash

#SBATCH --job-name=newMaxDP
#SBATCH --mem=12G 
#SBATCH --ntasks=1 
#SBATCH -e newMaxDP_%A_%a.err 
#SBATCH --time=48:00:00  
#SBATCH --mail-user=ktist@ucdavis.edu ##email you when job starts,ends,etc
#SBATCH --mail-type=ALL
#SBATCH -p high 

module load samtools 
module load bcftools 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr1_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr1_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr1_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr1_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr1_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr1_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr2_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr2_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr2_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr2_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr2_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr2_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr3_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr3_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr3_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr3_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr3_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr3_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr4_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr4_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr4_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr4_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr4_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr4_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr5_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr5_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr5_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr5_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr5_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr5_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr6_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr6_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr6_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr6_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr6_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr6_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr7_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr7_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr7_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr7_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr7_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr7_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr8_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr8_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr8_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr8_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr8_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr8_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr9_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr9_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr9_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr9_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr9_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr9_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr10_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr10_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr10_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr10_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr10_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr10_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr11_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr11_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr11_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr11_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr11_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr11_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr12_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr12_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr12_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr12_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr12_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr12_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr13_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr13_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr13_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr13_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr13_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr13_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr14_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr14_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr14_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr14_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr14_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr14_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr15_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr15_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr15_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr15_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr15_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr15_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr16_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr16_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr16_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr16_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr16_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr16_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr17_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr17_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr17_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr17_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr17_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr17_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr18_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr18_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr18_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr18_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr18_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr18_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr19_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr19_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr19_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr19_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr19_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr19_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr20_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr20_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr20_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr20_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr20_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr20_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr21_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr21_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr21_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr21_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr21_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr21_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr22_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr22_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr22_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr22_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr22_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr22_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr23_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr23_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr23_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr23_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr23_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr23_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr24_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr24_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr24_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr24_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr24_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr24_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr25_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr25_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr25_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr25_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr25_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr25_2.recode.vcf.gz 

bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr26_1.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr26_1.recode.vcf.gz 
bcftools view -S /home/jamcgirr/ph/data/combine_gvcfs/plates_1_through_5_rm.txt -m2 -M2 -v snps /home/jamcgirr/ph/data/combine_gvcfs/raw_variants_chr26_2.vcf | bcftools +fill-tags -- -t all,'DP=sum(DP)' | bcftools filter -Oz -i 'MQ>30 && QUAL>20 && INFO/DP>600 && INFO/DP<7000' -o /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr26_2.recode.vcf.gz 

bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr26_1.recode.vcf.gz 
bcftools index /home/ktist/ph/data/new_vcf/MD7000/filtered_snps_chr26_2.recode.vcf.gz 



#run: sbatch script_newMaxDP.sh