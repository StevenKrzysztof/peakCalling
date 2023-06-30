#!/bin/bash

# Bedtools intersect command options
intersect_command="bedtools intersect -v -b data/referenceGenome/hg38_blacklist.bed"

# File list
file_list=(
  "h1d1_1_ctcf"
  "h1d1_1_igg"
  "h1d1_1_sox2"
  "h1d1_2_ctcf"
  "h1d1_2_sox2"
  "h1d5_1_foxa1"
  "h1d5_1_igg"
  "h1d5_2_foxa1"
  "k562_1_h3k4me1"
  "k562_1_h3k4me2"
  "k562_1_h3k4me3"
  "k562_1_h3k27ac"
  "k562_1_h3k27me3"
  "k562_1_igg"
  "k562_1_ctcf"
  "k562_2_ctcf"
  "k562_2_h3k4me1"
  "k562_2_h3k4me2"
  "k562_2_h3k4me3"
  "k562_2_h3k27ac"
  "k562_2_igg"
  "k562_3_ctcf"
)

# Iterate over the file list
for file in "${file_list[@]}"; do
  # Define input and output file paths
  input_file="data/uniq_hits/${file}_uniq_hits.bam"
  output_file="data/blackRemoved/${file}_brd.bam"

  # Execute the bedtools intersect command
  echo "Running bedtools intersect for file: $file"
  $intersect_command -a "$input_file" > "$output_file"
done
