#!/bin/bash

# Define the lambda values and methods

#!/bin/bash



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

for lambda in "${lambda_values[@]}"; do
  # Loop through the files and concatenate input_file1 and input_file2
  for ((i=0; i<${#input_files1[@]}; i++)); do
    input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_lambda${lambda}_peaks.xls"
    input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_lambda${lambda}_peaks.xls"
    output_file="data/macs2/difflambda/k562_${input_files1[$i]}_lambda${lambda}_peak.xls"

    cat "$input_file1" "$input_file2" > "$output_file"
  done
done

for ((i=0; i<${#input_files1[@]}; i++)); do
  input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_nolambda_peaks.xls"
  input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_nolambda_peaks.xls"
  output_file="data/macs2/difflambda/k562_${input_files1[$i]}_nolambda_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done

for lambda in "${lambda_values[@]}"; do
  # Loop through the files and concatenate input_file1 and input_file2
  for ((i=0; i<${#input_files1[@]}; i++)); do
    input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_lambda${lambda}_peaks.xls"
    input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_lambda${lambda}_peaks.xls"
    output_file="data/macs2/difflambda/k562_${input_files1[$i]}_lambda${lambda}_broad_peak.xls"

    cat "$input_file1" "$input_file2" > "$output_file"
  done
done

for ((i=0; i<${#input_files1[@]}; i++)); do
  input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_nolambda_peaks.xls"
  input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_nolambda_peaks.xls"
  output_file="data/macs2/difflambda/k562_${input_files1[$i]}_broad_nolambda_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done

for lambda in "${lambda_values[@]}"; do
  # Loop through the files and concatenate input_file1 and input_file2
  for ((i=0; i<${#input_files1[@]}; i++)); do
    input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_lambda${lambda}_peaks.xls"
    input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_lambda${lambda}_peaks.xls"
    output_file="data/macs3/difflambda/k562_${input_files1[$i]}_lambda${lambda}_peak.xls"

    cat "$input_file1" "$input_file2" > "$output_file"
  done
done

for ((i=0; i<${#input_files1[@]}; i++)); do
  input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_nolambda_peaks.xls"
  input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_nolambda_peaks.xls"
  output_file="data/macs3/difflambda/k562_${input_files1[$i]}_nolambda_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done

for lambda in "${lambda_values[@]}"; do
  # Loop through the files and concatenate input_file1 and input_file2
  for ((i=0; i<${#input_files1[@]}; i++)); do
    input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_lambda${lambda}_peaks.xls"
    input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_lambda${lambda}_peaks.xls"
    output_file="data/macs3/difflambda/k562_${input_files1[$i]}_lambda${lambda}_broad_peak.xls"

    cat "$input_file1" "$input_file2" > "$output_file"
  done
done

for ((i=0; i<${#input_files1[@]}; i++)); do
  input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_nolambda_peaks.xls"
  input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_nolambda_peaks.xls"
  output_file="data/macs3/difflambda/k562_${input_files1[$i]}_broad_nolambda_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done
