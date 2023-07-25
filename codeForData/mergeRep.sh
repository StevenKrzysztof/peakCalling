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

