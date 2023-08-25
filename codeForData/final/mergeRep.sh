#!/bin/bash

# Define the lambda values and methods

#!/bin/bash

# # List of input files for input_file1 and input_file2
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
  input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_pe_peaks.narrowPeak"
  input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_pe_peaks.narrowPeak"
  output_file="data/macs3/runningData/k562_${input_files1[$i]}_peak.narrowPeak"

  cat "$input_file1" "$input_file2" > "$output_file"
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
  input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_pe_peaks.xls"
  input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_pe_peaks.xls"
  output_file="data/macs3/runningData/k562_${input_files1[$i]}_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done



# List of input files for input_file1 and input_file2
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
  input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_pe_peaks.broadPeak"
  input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_pe_peaks.broadPeak"
  output_file="data/macs3/runningData/k562_${input_files1[$i]}_broad_peak.broadPeak"

  cat "$input_file1" "$input_file2" > "$output_file"
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
  input_file1="data/macs3/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_pe_peaks.xls"
  input_file2="data/macs3/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_pe_peaks.xls"
  output_file="data/macs3/runningData/k562_${input_files1[$i]}_broad_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done


# List of input files for input_file1 and input_file2
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
  input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_pe_peaks.narrowPeak"
  input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_pe_peaks.narrowPeak"
  output_file="data/macs2/runningData/k562_${input_files1[$i]}_peak.narrowPeak"

  cat "$input_file1" "$input_file2" > "$output_file"
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
  input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_pe_peaks.xls"
  input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_pe_peaks.xls"
  output_file="data/macs2/runningData/k562_${input_files1[$i]}_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done



# List of input files for input_file1 and input_file2
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
  input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_pe_peaks.broadPeak"
  input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_pe_peaks.broadPeak"
  output_file="data/macs2/runningData/k562_${input_files1[$i]}_broad_peak.broadPeak"

  cat "$input_file1" "$input_file2" > "$output_file"
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
  input_file1="data/macs2/k562_1_${input_files1[$i]}/k562_1_${input_files1[$i]}_broad_pe_peaks.xls"
  input_file2="data/macs2/k562_2_${input_files2[$i]}/k562_2_${input_files2[$i]}_broad_pe_peaks.xls"
  output_file="data/macs2/runningData/k562_${input_files1[$i]}_broad_peak.xls"

  cat "$input_file1" "$input_file2" > "$output_file"
done
#
# input_files1=(
#   "ctcf"
#   "h3k4me1"
#   "h3k4me2"
#   "h3k4me3"
#   "h3k27ac"
# )
#
# input_files2=(
#   "ctcf"
#   "h3k4me1"
#   "h3k4me2"
#   "h3k4me3"
#   "h3k27ac"
# )
#
#
# # Loop through the files and concatenate input_file1 and input_file2
# for ((i=0; i<${#input_files1[@]}; i++)); do
#   input_file1="data/lanceotron/k562_1_${input_files1[$i]}/without/k562_1_${input_files1[$i]}_L-tron.bed"
#   input_file2="data/lanceotron/k562_2_${input_files2[$i]}/without/k562_2_${input_files2[$i]}_L-tron.bed"
#   output_file="data/lanceotron/runningData/k562_${input_files1[$i]}_without_peak.bed"
#
#   cat "$input_file1" "$input_file2" > "$output_file"
# done
