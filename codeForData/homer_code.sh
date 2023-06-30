#!/bin/bash

# Define the command and common options
tag_dir_command="makeTagDirectory"
find_peaks_command="findPeaks"

# File list
file_list=(
  "k562_1_h3k4me1"
  "k562_1_h3k4me2"
  "k562_1_h3k4me3"
  "k562_1_h3k27ac"
  "k562_1_h3k27me3"
  "k562_1_ctcf"
)

# Iterate over the file list
for file in "${file_list[@]}"; do
  # Create tag directory for treatment
  treatment_command="$tag_dir_command data/homer/${file}/ data/uniq_hits/${file}_uniq_hits.bam"

  # Create tag directory for control
  control_command="$tag_dir_command data/homer/k562_1_igg/ data/uniq_hits/k562_1_igg_uniq_hits.bam"

  # Find peaks using treatment and control directories
  find_peaks_command="$find_peaks_command data/homer/${file}/ -o data/homer/${file}/${file}_peaks.bed -i data/homer/k562_1_igg/ -style factor"

  # Execute the commands
  echo "Running command: $treatment_command"
  $treatment_command

  echo "Running command: $control_command"
  $control_command

  echo "Running command: $find_peaks_command"
  $find_peaks_command
done
