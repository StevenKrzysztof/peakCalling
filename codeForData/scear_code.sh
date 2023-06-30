#!/bin/bash

# SEACR command and common options
seacr_command="src/SEACR-master/SEACR_1.3.sh"

# Prompt the user for option selection
echo "Choose an option:"
echo "1. Stringent"
echo "2. Relaxed"
read -p "Enter your choice (1 or 2): " option_choice

# Validate the user's choice
if [[ "$option_choice" != "1" && "$option_choice" != "2" ]]; then
  echo "Invalid choice. Exiting..."
  exit 1
fi

# Set the option based on user's choice
if [[ "$option_choice" == "1" ]]; then
  option="stringent"
else
  option="relaxed"
fi

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
  # Define input and output file paths
  input_file="data/uniq_hits/${file}_uniq_hits.bam"
  igg_file="data/uniq_hits/k562_1_igg_uniq_hits.bam"
  output_dir="data/scear/${file}/${file}"

  # Set the norm_option based on the existence of igg_file
  if [[ -z "$igg_file" ]]; then
    norm_option="non"
  else
    norm_option="norm"
  fi

  # Build the full SEACR command
  full_command="$seacr_command $input_file $igg_file $norm_option $option $output_dir"

  # Execute the SEACR command
  echo "Running SEACR for file: $file"
  $full_command
done
