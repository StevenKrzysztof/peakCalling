# H3K4me3
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  labeled_peaks="benchmarking/labelled_datasets/ChIP-seq_H3K4me3_MG63/peaks_ChIP-seq_H3K4me3_MG63.bed"
  labeled_noise="benchmarking/labelled_datasets/ChIP-seq_H3K4me3_MG63/noise_ChIP-seq_H3K4me3_MG63.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_peaks" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_noise" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$labeled_peaks" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -v -a "$labeled_noise" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  # Calculate FPR
  FPR=$(awk "BEGIN {print $FP / ($FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$FPR"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tFPR" > "data/bar/chip_h3k4me3_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/newForChip/results/lanceotron/H3K4me3_L-tron.bed" >> "data/bar/chip_h3k4me3_metrics.xls"
calculate_metrics "macs2" "data/newForChip/results/macs2/macs2_h3k4me3_peaks.narrowPeak" >> "data/bar/chip_h3k4me3_metrics.xls"
calculate_metrics "macs2broad" "data/newForChip/results/macs2/macs2_h3k4me3_broad_peaks.broadPeak" >> "data/bar/chip_h3k4me3_metrics.xls"
calculate_metrics "macs3" "data/newForChip/results/macs3/macs3_h3k4me3_peaks.narrowPeak" >> "data/bar/chip_h3k4me3_metrics.xls"
calculate_metrics "macs3broad" "data/newForChip/results/macs3/macs3_h3k4me3_broad_peaks.broadPeak" >> "data/bar/chip_h3k4me3_metrics.xls"
calculate_metrics "epic2" "data/newForChip/results/epic2/epic2_h3k4me3" >> "data/bar/chip_h3k4me3_metrics.xls"


# H3K27ac
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  labeled_peaks="benchmarking/labelled_datasets/ChIP-seq_H3K27ac_HAP1/peaks_ChIP-seq_H3K27ac_HAP1.bed"
  labeled_noise="benchmarking/labelled_datasets/ChIP-seq_H3K27ac_HAP1/noise_ChIP-seq_H3K27ac_HAP1.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_peaks" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_noise" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$labeled_peaks" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -v -a "$labeled_noise" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  # Calculate FPR
  FPR=$(awk "BEGIN {print $FP / ($FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$FPR"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tFPR" > "data/bar/chip_h3k27ac_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/newForChip/results/lanceotron/H3K27ac_L-tron.bed" >> "data/bar/chip_h3k27ac_metrics.xls"
calculate_metrics "macs2" "data/newForChip/results/macs2/macs2_h3k27ac_peaks.narrowPeak" >> "data/bar/chip_h3k27ac_metrics.xls"
calculate_metrics "macs2broad" "data/newForChip/results/macs2/macs2_h3k27ac_broad_peaks.broadPeak" >> "data/bar/chip_h3k27ac_metrics.xls"
calculate_metrics "macs3" "data/newForChip/results/macs3/macs3_h3k27ac_peaks.narrowPeak" >> "data/bar/chip_h3k27ac_metrics.xls"
calculate_metrics "macs3broad" "data/newForChip/results/macs3/macs3_h3k27ac_broad_peaks.broadPeak" >> "data/bar/chip_h3k27ac_metrics.xls"
calculate_metrics "epic2" "data/newForChip/results/epic2/epic2_h3k27ac" >> "data/bar/chip_h3k27ac_metrics.xls"


# CTCF
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  labeled_peaks="benchmarking/labelled_datasets/ChIP-seq_CTCF_spleen/peaks_ChIP-seq_CTCF_spleen.bed"
  labeled_noise="benchmarking/labelled_datasets/ChIP-seq_CTCF_spleen/noise_ChIP-seq_CTCF_spleen.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_peaks" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_noise" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$labeled_peaks" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -v -a "$labeled_noise" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  # Calculate FPR
  FPR=$(awk "BEGIN {print $FP / ($FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$FPR"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tFPR" > "data/bar/chip_CTCF_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/newForChip/results/lanceotron/CTCF_L-tron.bed" >> "data/bar/chip_CTCF_metrics.xls"
calculate_metrics "macs2" "data/newForChip/results/macs2/macs2_CTCF_peaks.narrowPeak" >> "data/bar/chip_CTCF_metrics.xls"
calculate_metrics "macs2broad" "data/newForChip/results/macs2/macs2_CTCF_broad_peaks.broadPeak" >> "data/bar/chip_CTCF_metrics.xls"
calculate_metrics "macs3" "data/newForChip/results/macs3/macs3_CTCF_peaks.narrowPeak" >> "data/bar/chip_CTCF_metrics.xls"
calculate_metrics "macs3broad" "data/newForChip/results/macs3/macs3_CTCF_broad_peaks.broadPeak" >> "data/bar/chip_CTCF_metrics.xls"
calculate_metrics "epic2" "data/newForChip/results/epic2/epic2_CTCF" >> "data/bar/chip_CTCF_metrics.xls"

# ATACseq
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  labeled_peaks="benchmarking/labelled_datasets/ATAC-seq_open-chromatin_MCF7/peaks_ATAC-seq_open-chromatin_MCF7.bed"
  labeled_noise="benchmarking/labelled_datasets/ATAC-seq_open-chromatin_MCF7/noise_ATAC-seq_open-chromatin_MCF7.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_peaks" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$labeled_noise" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$labeled_peaks" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -v -a "$labeled_noise" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  # Calculate FPR
  FPR=$(awk "BEGIN {print $FP / ($FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$FPR"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tFPR" > "data/bar/chip_ATACseq_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/newForChip/results/lanceotron/ATACseq_L-tron.bed" >> "data/bar/chip_ATACseq_metrics.xls"
calculate_metrics "macs2" "data/newForChip/results/macs2/macs2_atac_peaks.narrowPeak" >> "data/bar/chip_ATACseq_metrics.xls"
calculate_metrics "macs2broad" "data/newForChip/results/macs2/macs2_atac_broad_peaks.broadPeak" >> "data/bar/chip_ATACseq_metrics.xls"
calculate_metrics "macs3" "data/newForChip/results/macs3/macs3_atac_peaks.narrowPeak" >> "data/bar/chip_ATACseq_metrics.xls"
calculate_metrics "macs3broad" "data/newForChip/results/macs3/macs3_atac_broad_peaks.broadPeak" >> "data/bar/chip_ATACseq_metrics.xls"
calculate_metrics "epic2" "data/newForChip/results/epic2/epic2_atac" >> "data/bar/chip_ATACseq_metrics.xls"
