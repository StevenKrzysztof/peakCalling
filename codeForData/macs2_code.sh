#!/bin/bash

# Define the command and common options
command="macs2 callpeak -c data/uniq_hits/k562_1_igg_uniq_hits.bam -f BAM -g 2.91e9"

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
  full_command="$command -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/${file}/${file}"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command > "data/logs/macs2_${file}.log" 2>&1
done

#no control narrow
