#!/bin/bash 

Rscript calcDxy.R  -p PWS91 --popA='AF3pops_PWS91_maf05.mafs' -q PWS96 --popB='AF3pops_PWS96_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS91_PWS96.txt 
Rscript calcDxy.R  -p PWS91 --popA='AF3pops_PWS91_maf05.mafs' -q PWS07 --popB='AF3pops_PWS07_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS91_PWS07.txt 
Rscript calcDxy.R  -p PWS91 --popA='AF3pops_PWS91_maf05.mafs' -q PWS17 --popB='AF3pops_PWS17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS91_PWS17.txt 
Rscript calcDxy.R  -p PWS96 --popA='AF3pops_PWS96_maf05.mafs' -q PWS07 --popB='AF3pops_PWS07_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS96_PWS07.txt 
Rscript calcDxy.R  -p PWS96 --popA='AF3pops_PWS96_maf05.mafs' -q PWS17 --popB='AF3pops_PWS17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS96_PWS17.txt 
Rscript calcDxy.R  -p PWS07 --popA='AF3pops_PWS07_maf05.mafs' -q PWS17 --popB='AF3pops_PWS17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_PWS07_PWS17.txt 
Rscript calcDxy.R  -p TB91 --popA='AF3pops_TB91_maf05.mafs' -q TB96 --popB='AF3pops_TB96_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_TB91_TB96.txt 
Rscript calcDxy.R  -p TB91 --popA='AF3pops_TB91_maf05.mafs' -q TB06 --popB='AF3pops_TB06_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_TB91_TB06.txt 
Rscript calcDxy.R  -p TB91 --popA='AF3pops_TB91_maf05.mafs' -q TB17 --popB='AF3pops_TB17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_TB91_TB17.txt 
Rscript calcDxy.R  -p TB96 --popA='AF3pops_TB96_maf05.mafs' -q TB06 --popB='AF3pops_TB06_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_TB96_TB06.txt 
Rscript calcDxy.R  -p TB96 --popA='AF3pops_TB96_maf05.mafs' -q TB17 --popB='AF3pops_TB17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_TB96_TB17.txt 
Rscript calcDxy.R  -p TB06 --popA='AF3pops_TB06_maf05.mafs' -q TB17 --popB='AF3pops_TB17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_TB06_TB17.txt 
Rscript calcDxy.R  -p SS96 --popA='AF3pops_SS96_maf05.mafs' -q SS06 --popB='AF3pops_SS06_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_SS96_SS06.txt 
Rscript calcDxy.R  -p SS96 --popA='AF3pops_SS96_maf05.mafs' -q SS17 --popB='AF3pops_SS17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_SS96_SS17.txt 
Rscript calcDxy.R  -p SS06 --popA='AF3pops_SS06_maf05.mafs' -q SS17 --popB='AF3pops_SS17_maf05.mafs'
mv Dxy_persite.txt Dxy_persite_SS06_SS17.txt 
