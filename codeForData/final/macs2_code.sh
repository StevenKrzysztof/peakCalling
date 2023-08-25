#!/bin/bash

# Define the command and common options
# file_list=(
#   "k562_1_h3k4me1"
#   "k562_2_h3k4me1"
#   "k562_2_h3k4me2"
#   "k562_2_h3k4me3"
#   "k562_2_h3k27ac"
#   # "k562_2_h3k27me3"
#   "k562_2_ctcf"
#   "k562_1_h3k4me2"
#   "k562_1_h3k4me3"
#   "k562_1_h3k27ac"
#   "k562_1_h3k27me3"
#   "k562_1_ctcf"
# )
#
# for file in "${file_list[@]}"; do
#   # mkdir "data/macs2/${file}_noControl"
#
#   # Build the full command for each file
#   full_command="macs2 callpeak -f BAMPE --broad --broad-cutoff 0.1 -g hs -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/${file}/${file}_pewb"
#
#   # Execute the command
#   echo "Running command for file: ${file}"
#   $full_command
# done
#
#
# file_list=(
#   "k562_2_h3k4me2"
#   "k562_2_h3k4me3"
#   "k562_2_h3k27ac"
#   # "k562_2_h3k27me3"
#   "k562_2_ctcf"
#   "k562_1_h3k4me2"
#   "k562_1_h3k4me3"
#   "k562_1_h3k27ac"
#   "k562_1_h3k27me3"
#   "k562_1_ctcf"
# )
#
# for file in "${file_list[@]}"; do
#   # mkdir "data/macs2/${file}_noControl"
#
#   # Build the full command for each file
#   full_command="macs2 callpeak -f BAMPE -g hs -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/${file}/${file}_pew"
#
#   # Execute the command
#   echo "Running command for file: ${file}"
#   $full_command
# done
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
  full_command="macs2 callpeak -f BAMPE -g hs -c data/uniq_hits/k562_1_igg_uniq_hits.bam -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/runningDataFinal/${file}_pe"

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
  full_command="macs2 callpeak -f BAMPE --broad --broad-cutoff 0.1 -g hs -c data/uniq_hits/k562_1_igg_uniq_hits.bam -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/runningDataFinal/${file}_broad_pe"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done


file_list=(
  "k562_2_h3k4me1"
  "k562_2_h3k4me2"
  "k562_2_h3k4me3"
  "k562_2_h3k27ac"
  "k562_2_h3k27me3"
  "k562_2_ctcf"
)

for file in "${file_list[@]}"; do
  # mkdir "data/macs2/${file}_noControl"

  # Build the full command for each file
  full_command="macs2 callpeak -f BAMPE -g hs -c data/uniq_hits/k562_2_igg_uniq_hits.bam -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/runningDataFinal/${file}_pe"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done


file_list=(
  "k562_2_h3k4me1"
  "k562_2_h3k4me2"
  "k562_2_h3k4me3"
  "k562_2_h3k27ac"
  "k562_2_h3k27me3"
  "k562_2_ctcf"
)

for file in "${file_list[@]}"; do
  # mkdir "data/macs2/${file}_noControl"

  # Build the full command for each file
  full_command="macs2 callpeak -f BAMPE --broad --broad-cutoff 0.1 -g hs -c data/uniq_hits/k562_2_igg_uniq_hits.bam -t data/uniq_hits/${file}_uniq_hits.bam -n data/macs2/runningDataFinal/${file}_broad_pe"

  # Execute the command
  echo "Running command for file: ${file}"
  $full_command
done
