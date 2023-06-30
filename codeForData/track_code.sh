#!/bin/bash

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

for sample in "${file_list[@]}"; do
  input_bam="data/blackRemoved/${sample}_brd.sorted.bam"
  input_bai="data/blackRemoved/${sample}_brd.sorted.bam.bai"
  output_bw="data/tracks/${sample}.bw"

  # Execute the track generation command
  bamCoverage -b "$input_bam" -o "$output_bw" -p 8 --binSize 10 --smoothLength 50 --normalizeUsing CPM

  # Check if the track generation was successful
  if [ $? -eq 0 ]; then
    echo "Track generated for sample: ${sample}"
  else
    echo "Failed to generate track for sample: ${sample}"
  fi
done
