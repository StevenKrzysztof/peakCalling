#!/bin/bash

# Define the command and common options
file_list=(
  "k562_1_h3k4me1"
  "k562_1_h3k4me2"
  "k562_1_h3k4me3"
  "k562_1_h3k27ac"
  "k562_1_h3k27me3"
  "k562_1_ctcf"
)

bedtools bamtobed -i data/uniq_hits/k562_1_igg_uniq_hits.bam > data/uniq_hits/k562_1_igg_uniq_hits.bed
bedtools bamtobed -i data/uniq_hits/k562_2_igg_uniq_hits.bam > data/uniq_hits/k562_2_igg_uniq_hits.bed

for file in "${file_list[@]}"; do
  bedtools bamtobed -i data/uniq_hits/${file}_uniq_hits.bam > data/uniq_hits/${file}_uniq_hits.bed
  # mkdir "data/macs2/${file}_noControl"
  mkdir data/macs2/BEDPE/${file}
  # Build the full command for each file
  full_command="macs2 callpeak -f BEDPE --broad --broad-cutoff 0.1 -g hs -c data/uniq_hits/k562_1_igg_uniq_hits.bed -t data/uniq_hits/${file}_uniq_hits.bed -n data/macs2/BEDPE/${file}_broad"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done

file_list=(
  "k562_2_h3k4me1"
  "k562_2_h3k4me2"
  "k562_2_h3k4me3"
  "k562_2_h3k27ac"
  # "k562_2_h3k27me3"
  "k562_2_ctcf"
)

for file in "${file_list[@]}"; do
  bedtools bamtobed -i data/uniq_hits/${file}_uniq_hits.bam > data/uniq_hits/${file}_uniq_hits.bed
  # mkdir "data/macs2/${file}_noControl"
  mkdir data/macs2/BEDPE/${file}
  # Build the full command for each file
  full_command="macs2 callpeak -f BEDPE --broad --broad-cutoff 0.1 -g hs -c data/uniq_hits/k562_2_igg_uniq_hits.bed -t data/uniq_hits/${file}_uniq_hits.bed -n data/macs2/BEDPE/${file}_broad"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done

file_list=(
  "k562_1_h3k4me1"
  "k562_1_h3k4me2"
  "k562_1_h3k4me3"
  "k562_1_h3k27ac"
  "k562_1_h3k27me3"
  "k562_1_ctcf"
)

for file in "${file_list[@]}"; do
  # mkdir "data/macs2/${file}_noControl"


  # Build the full command for each file
  full_command="macs2 callpeak -f BEDPE -g hs -c data/uniq_hits/k562_1_igg_uniq_hits.bed -t data/uniq_hits/${file}_uniq_hits.bed -n data/macs2/BEDPE/${file}"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done

file_list=(
  "k562_2_h3k4me1"
  "k562_2_h3k4me2"
  "k562_2_h3k4me3"
  "k562_2_h3k27ac"
  # "k562_2_h3k27me3"
  "k562_2_ctcf"
)

for file in "${file_list[@]}"; do
  # mkdir "data/macs2/${file}_noControl"

  # Build the full command for each file
  full_command="macs2 callpeak -f BEDPE -g hs -c data/uniq_hits/k562_2_igg_uniq_hits.bed -t data/uniq_hits/${file}_uniq_hits.bed -n data/macs2/BEDPE/${file}"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done
