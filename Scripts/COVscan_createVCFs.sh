#!/bin/bash 

vcftools --gzvcf Data/new_vcf/3pops.MD2000_new.maf05.vcf.gz --bed Output/COV_analysis/PWS_outliers_cov12_new.bed --out Output/COV_analysis/PWS_outliers_cov12_new --recode --keep-INFO-all 
vcftools --gzvcf Data/new_vcf/3pops.MD2000_new.maf05.vcf.gz --bed Output/COV_analysis/PWS_outliers_cov13_new.bed --out Output/COV_analysis/PWS_outliers_cov13_new --recode --keep-INFO-all 
vcftools --gzvcf Data/new_vcf/3pops.MD2000_new.maf05.vcf.gz --bed Output/COV_analysis/PWS_outliers_cov23_new.bed --out Output/COV_analysis/PWS_outliers_cov23_new --recode --keep-INFO-all 
vcftools --gzvcf Data/new_vcf/3pops.MD2000_new.maf05.vcf.gz --bed Output/COV_analysis/SS_outliers_cov23_new.bed --out Output/COV_analysis/SS_outliers_cov23_new --recode --keep-INFO-all 
vcftools --gzvcf Data/new_vcf/3pops.MD2000_new.maf05.vcf.gz --bed Output/COV_analysis/TB_outliers_cov12_new.bed --out Output/COV_analysis/TB_outliers_cov12_new --recode --keep-INFO-all 
vcftools --gzvcf Data/new_vcf/3pops.MD2000_new.maf05.vcf.gz --bed Output/COV_analysis/TB_outliers_cov13_new.bed --out Output/COV_analysis/TB_outliers_cov13_new --recode --keep-INFO-all 
vcftools --gzvcf Data/new_vcf/3pops.MD2000_new.maf05.vcf.gz --bed Output/COV_analysis/TB_outliers_cov23_new.bed --out Output/COV_analysis/TB_outliers_cov23_new --recode --keep-INFO-all 
