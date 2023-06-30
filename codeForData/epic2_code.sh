#!/bin/bash

# Define the common options
options="--genome hg38"

# Iterate over the file list
file_list=(
  "k562_1_h3k4me1"
  "k562_1_h3k4me2"
  "k562_1_h3k4me3"
  "k562_1_h3k27ac"
  "k562_1_h3k27me3"
  "k562_1_ctcf"
)

for file in "${file_list[@]}"; do
  # Build the full command for each file
  full_command="epic2 -t data/uniq_hits/${file}_uniq_hits.bam -c data/uniq_hits/k562_1_igg_uniq_hits.bam --genome hg38 --output data/epic2/${file}/${file}.bed"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done
