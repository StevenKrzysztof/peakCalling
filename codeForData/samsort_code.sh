#!/bin/bash

# File list
file_list=(
  "h1d1_1_ctcf_brd.bam"
  "h1d5_1_foxa1_brd.bam"
  "k562_1_h3k27me3_brd.bam"
  "k562_2_ctcf_brd.bam"
  "k562_2_igg_brd.bam"
  "h1d1_1_igg_brd.bam"
  "h1d5_1_igg_brd.bam"
  "k562_1_h3k4me1_brd.bam"
  "k562_2_h3k27ac_brd.bam"
  "k562_3_ctcf_brd.bam"
  "h1d1_1_sox2_brd.bam"
  "h1d5_2_foxa1_brd.bam"
  "k562_1_h3k4me2_brd.bam"
  "k562_2_h3k4me1_brd.bam"
  "h1d1_2_ctcf_brd.bam"
  "k562_1_ctcf_brd.bam"
  "k562_1_h3k4me3_brd.bam"
  "k562_2_h3k4me2_brd.bam"
  "h1d1_2_sox2_brd.bam"
  "k562_1_h3k27ac_brd.bam"
  "k562_1_igg_brd.bam"
  "k562_2_h3k4me3_brd.bam"
)

# Iterate over the file list
for file in "${file_list[@]}"; do
  # Sort BAM file
  sorted_file="${file%.*}.sorted.bam"
  samtools sort "data/blackRemoved/$file" -o "data/blackRemoved/$sorted_file"

  # Index sorted BAM file
  samtools index "data/blackRemoved/$sorted_file"
done
