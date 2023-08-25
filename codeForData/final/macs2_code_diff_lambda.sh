#!/bin/bash

# Define the command and common options
command="macs2 callpeak -c data/uniq_hits/k562_1_igg_uniq_hits.bam -f BAMPE --broad --broad-cutoff 0.1 -g hs"

# Define the lambda values
lambda_values=(
  1000
  2000
  3000
  4000
  5000
  6000
  7000
  8000
  9000
  10000
)

# Define the file list
file_list=(
  "k562_1_h3k4me1"
  "k562_1_h3k4me2"
  "k562_1_h3k4me3"
  "k562_1_h3k27ac"
  "k562_1_ctcf"
  "k562_1_h3k27me3"
)

# Iterate over the file list
for file in "${file_list[@]}"; do
  # Iterate over the lambda values
  for lambda in "${lambda_values[@]}"; do
    # Build the full command with lambda for k562_1_h3k4me3
    full_command="$command -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/${file}/${file}_broad_lambda${lambda} --llocal $lambda"

    # Execute the command
    echo "Running command with lambda = $lambda for $file"
    $full_command
  done

  # Build the full command without lambda for k562_1_h3k4me3
  full_command="$command -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/${file}/${file}_broad_nolambda --nolambda"

  # Execute the command
  echo "Running command without lambda for $file"
  $full_command
done


# Define the command and common options
command="macs2 callpeak -c data/uniq_hits/k562_2_igg_uniq_hits.bam -f BAMPE -g hs"

# Define the lambda values
lambda_values=(
  1000
  2000
  3000
  4000
  5000
  6000
  7000
  8000
  9000
  10000
)

# Define the file list
file_list=(
  "k562_2_h3k4me1"
  "k562_2_h3k4me2"
  "k562_2_h3k4me3"
  "k562_2_h3k27ac"
  # "k562_1_h3k27me3"
  "k562_2_ctcf"
)

# Iterate over the file list
for file in "${file_list[@]}"; do
  # Iterate over the lambda values
  for lambda in "${lambda_values[@]}"; do
    # Build the full command with lambda for k562_1_h3k4me3
    full_command="$command -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/${file}/${file}_lambda${lambda} --llocal $lambda"

    # Execute the command
    echo "Running command with lambda = $lambda for $file"
    $full_command
  done

  # Build the full command without lambda for k562_1_h3k4me3
  full_command="$command -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/${file}/${file}_nolambda --nolambda"

  # Execute the command
  echo "Running command without lambda for $file"
  $full_command
done
