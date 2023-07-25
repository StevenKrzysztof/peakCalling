#!/bin/bash

# Define the lambda values and methods
lambda_values=(1000 2000 3000 4000 5000 6000 7000 8000 9000 10000)
methods=("macs2" "macs3")

# Iterate over the lambda values
for lambda in "${lambda_values[@]}"; do
    # Iterate over the methods
    for method in "${methods[@]}"; do
        # Define the input file paths
        input_file1="data/$method/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda${lambda}_peaks.xls"
        input_file2="data/$method/k562_2_h3k27ac/k562_2_h3k27ac_broad_lambda${lambda}_peaks.xls"

        # Define the output file path
        output_file="data/$method/merged/h3k27ac_broad_lambda${lambda}_peaks.xls"

        # Concatenate the input files into the output file
        cat "$input_file1" "$input_file2" > "$output_file"

        echo "Merged $method lambda $lambda peaks"
    done
done

input_files1=(
  "ctcf"
  "h3k4me1"
  "h3k4me2"
  "h3k4me3"
  "h3k27ac"
)

input_files2=(
  "ctcf"
  "h3k4me1"
  "h3k4me2"
  "h3k4me3"
  "h3k27ac"
)


# Loop through the files and concatenate input_file1 and input_file2
for ((i=0; i<${#input_files1[@]}; i++)); do
  input_file1="data/lanceotron/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_L-tron.bed"
  input_file2="data/lanceotron/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_L-tron.bed"
  output_file="data/lanceotron/runningData/k562_${input_files1[$i]}.bed"

  cat "$input_file1" "$input_file2" > "$output_file"
done
