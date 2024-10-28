#!/bin/bash
#File for trimming multiple fastq files
for f1 in *_L001_R1_001.fastq.gz
do
        f2=${f1%%_L001_R1_001.fastq.gz}"_L001_R2_001.fastq.gz"
        fastp -i $f1 -I $f2 -o "trimmed-$f1" -O "trimmed-$f2"  -h "reports/${f1%%_*}.html" -V
done
