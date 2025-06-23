#!/bin/bash 

Rscript calcDxy.R  -p PWS17 --popA='AF3pops_PWS17_maf05.mafs' -q SS17 --popB='AF3pops_SS17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS17_SS17.txt 
Rscript calcDxy.R  -p PWS17 --popA='AF3pops_PWS17_maf05.mafs' -q TB17 --popB='AF3pops_TB17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS17_TB17.txt 
Rscript calcDxy.R  -p SS17 --popA='AF3pops_SS17_maf05.mafs' -q TB17 --popB='AF3pops_TB17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_SS17_TB17.txt 
Rscript calcDxy.R  -p PWS07 --popA='AF3pops_PWS07_maf05.mafs' -q SS06 --popB='AF3pops_SS06_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS07_SS06.txt 
Rscript calcDxy.R  -p PWS07 --popA='AF3pops_PWS07_maf05.mafs' -q TB06 --popB='AF3pops_TB06_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS07_TB06.txt 
Rscript calcDxy.R  -p SS06 --popA='AF3pops_SS06_maf05.mafs' -q TB06 --popB='AF3pops_TB06_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_SS06_TB06.txt 
Rscript calcDxy.R  -p PWS96 --popA='AF3pops_PWS96_maf05.mafs' -q SS96 --popB='AF3pops_SS96_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS96_SS96.txt 
Rscript calcDxy.R  -p PWS96 --popA='AF3pops_PWS96_maf05.mafs' -q TB96 --popB='AF3pops_TB96_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS96_TB96.txt 
Rscript calcDxy.R  -p SS96 --popA='AF3pops_SS96_maf05.mafs' -q TB96 --popB='AF3pops_TB96_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_SS96_TB96.txt 
Rscript calcDxy.R  -p PWS91 --popA='AF3pops_PWS91_maf05.mafs' -q TB91 --popB='AF3pops_TB91_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS91_TB91.txt 
