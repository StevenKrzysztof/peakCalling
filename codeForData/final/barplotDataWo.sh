# #!/bin/bash
# H3K4me1
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  encode_chipseq="src/standards/ENCFF759NWD.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -v -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)
  # total_genome_regions=$(wc -l < "$encode_chipseq")
  # TN=$((total_genome_regions - TP - FP - FN))
  # TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  #calculate selectivity
  Selectivity=$(awk "BEGIN {print $TN  / ($FP + $TN)}")

  # Calculate Accuracy
  Accuracy=$(awk "BEGIN {print ($TN + $TP) / ($TP + $FN + $FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$Accuracy\t$Selectivity"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tAcurracy\tSelectivity" > "data/bar/CnRwo_h3k4me1_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/lanceotron/runningData/k562_h3k4me1_without_peak.bed" >> "data/bar/CnRwo_h3k4me1_metrics.xls"
calculate_metrics "macs2" "data/macs2/runningData/k562_h3k4me1pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k4me1_metrics.xls"
calculate_metrics "macs2broad" "data/macs2/runningData/k562_h3k4me1pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k4me1_metrics.xls"
calculate_metrics "macs3" "data/macs3/runningData/k562_h3k4me1pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k4me1_metrics.xls"
calculate_metrics "macs3broad" "data/macs3/runningData/k562_h3k4me1pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k4me1_metrics.xls"
calculate_metrics "epic2" "data/epic2/runningData/k562_h3k4me1w_peaks.xls" >> "data/bar/CnRwo_h3k4me1_metrics.xls"



# h3k4me2
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  encode_chipseq="src/standards/ENCFF256AQN.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -v -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)
  # total_genome_regions=$(wc -l < "$encode_chipseq")
  # TN=$((total_genome_regions - TP - FP - FN))
  # TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  #calculate selectivity
  Selectivity=$(awk "BEGIN {print $TN  / ($FP + $TN)}")

  # Calculate Accuracy
  Accuracy=$(awk "BEGIN {print ($TN + $TP) / ($TP + $FN + $FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$Accuracy\t$Selectivity"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tAcurracy\tSelectivity" > "data/bar/CnRwo_h3k4me2_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/lanceotron/runningData/k562_h3k4me2_without_peak.bed" >> "data/bar/CnRwo_h3k4me2_metrics.xls"
calculate_metrics "macs2" "data/macs2/runningData/k562_h3k4me2pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k4me2_metrics.xls"
calculate_metrics "macs2broad" "data/macs2/runningData/k562_h3k4me2pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k4me2_metrics.xls"
calculate_metrics "macs3" "data/macs3/runningData/k562_h3k4me2pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k4me2_metrics.xls"
calculate_metrics "macs3broad" "data/macs3/runningData/k562_h3k4me2pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k4me2_metrics.xls"
calculate_metrics "epic2" "data/epic2/runningData/k562_h3k4me2w_peaks.xls" >> "data/bar/CnRwo_h3k4me2_metrics.xls"



# h3k4me3
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  encode_chipseq="src/standards/ENCFF885FQN.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -v -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)
  # total_genome_regions=$(wc -l < "$encode_chipseq")
  # TN=$((total_genome_regions - TP - FP - FN))
  # TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  #calculate selectivity
  Selectivity=$(awk "BEGIN {print $TN  / ($FP + $TN)}")

  # Calculate Accuracy
  Accuracy=$(awk "BEGIN {print ($TN + $TP) / ($TP + $FN + $FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$Accuracy\t$Selectivity"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tAcurracy\tSelectivity" > "data/bar/CnRwo_h3k4me3_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/lanceotron/runningData/k562_h3k4me3_without_peak.bed" >> "data/bar/CnRwo_h3k4me3_metrics.xls"
calculate_metrics "macs2" "data/macs2/runningData/k562_h3k4me3pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k4me3_metrics.xls"
calculate_metrics "macs2broad" "data/macs2/runningData/k562_h3k4me3pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k4me3_metrics.xls"
calculate_metrics "macs3" "data/macs3/runningData/k562_h3k4me3pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k4me3_metrics.xls"
calculate_metrics "macs3broad" "data/macs3/runningData/k562_h3k4me3pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k4me3_metrics.xls"
calculate_metrics "epic2" "data/epic2/runningData/k562_h3k4me3w_peaks.xls" >> "data/bar/CnRwo_h3k4me3_metrics.xls"




# h3k27me3
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  encode_chipseq="src/standards/ENCFF795ZOS.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -v -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)
  # total_genome_regions=$(wc -l < "$encode_chipseq")
  # TN=$((total_genome_regions - TP - FP - FN))
  # TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  #calculate selectivity
  Selectivity=$(awk "BEGIN {print $TN  / ($FP + $TN)}")

  # Calculate Accuracy
  Accuracy=$(awk "BEGIN {print ($TN + $TP) / ($TP + $FN + $FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$Accuracy\t$Selectivity"
  }

  # Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tAcurracy\tSelectivity" > "data/bar/CnRwo_h3k27me3_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/lanceotron/runningData/k562_h3k27me3_without_peak.bed" >> "data/bar/CnRwo_h3k27me3_metrics.xls"
calculate_metrics "macs2" "data/macs2/runningData/k562_h3k27me3pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k27me3_metrics.xls"
calculate_metrics "macs2broad" "data/macs2/runningData/k562_h3k27me3pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k27me3_metrics.xls"
calculate_metrics "macs3" "data/macs3/runningData/k562_h3k27me3pew_peak.narrowPeak" >> "data/bar/CnRwo_h3k27me3_metrics.xls"
calculate_metrics "macs3broad" "data/macs3/runningData/k562_h3k27me3pewb_peak.broadPeak" >> "data/bar/CnRwo_h3k27me3_metrics.xls"
calculate_metrics "epic2" "data/epic2/runningData/k562_h3k27me3w_peaks.xls" >> "data/bar/CnRwo_h3k27me3_metrics.xls"





# h3k27ac
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  encode_chipseq="src/standards/SRX4143063.10.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -v -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)
  # total_genome_regions=$(wc -l < "$encode_chipseq")
  # TN=$((total_genome_regions - TP - FP - FN))
  # TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  #calculate selectivity
  Selectivity=$(awk "BEGIN {print $TN  / ($FP + $TN)}")

  # Calculate Accuracy
  Accuracy=$(awk "BEGIN {print ($TN + $TP) / ($TP + $FN + $FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$Accuracy\t$Selectivity"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tAcurracy\tSelectivity" > "data/bar/CnRwo_h3k27ac_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/lanceotron/runningData/k562_h3k27ac_without_peak.bed" >> "data/bar/CnRwo_h3k27ac_metrics.xls"
calculate_metrics "macs2" "data/macs2/runningData/k562_h3k27acpew_peak.narrowPeak" >> "data/bar/CnRwo_h3k27ac_metrics.xls"
calculate_metrics "macs2broad" "data/macs2/runningData/k562_h3k27acpewb_peak.broadPeak" >> "data/bar/CnRwo_h3k27ac_metrics.xls"
calculate_metrics "macs3" "data/macs3/runningData/k562_h3k27acpew_peak.narrowPeak" >> "data/bar/CnRwo_h3k27ac_metrics.xls"
calculate_metrics "macs3broad" "data/macs3/runningData/k562_h3k27acpewb_peak.broadPeak" >> "data/bar/CnRwo_h3k27ac_metrics.xls"
calculate_metrics "epic2" "data/epic2/runningData/k562_h3k27acw_peaks.xls" >> "data/bar/CnRwo_h3k27ac_metrics.xls"




# ctcf
calculate_metrics() {
  method_name="$1"
  your_peak_calling_result="$2"
  encode_chipseq="src/standards/ENCFF660GHM.bed"

  # Calculate True Positives (TP)
  TP=$(bedtools intersect -u -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Positives (FP)
  FP=$(bedtools intersect -v -a "$your_peak_calling_result" -b "$encode_chipseq" | wc -l)

  # Calculate False Negatives (FN)
  FN=$(bedtools intersect -v -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate True Negatives (TN)
  TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)
  # total_genome_regions=$(wc -l < "$encode_chipseq")
  # TN=$((total_genome_regions - TP - FP - FN))
  # TN=$(bedtools intersect -u -a "$encode_chipseq" -b "$your_peak_calling_result" | wc -l)

  # Calculate Precision (Positive Predictive Value)
  precision=$(awk "BEGIN {print $TP / ($TP + $FP)}")

  # Calculate Recall (Sensitivity or True Positive Rate)
  recall=$(awk "BEGIN {print $TP / ($TP + $FN)}")

  #calculate selectivity
  Selectivity=$(awk "BEGIN {print $TN  / ($FP + $TN)}")

  # Calculate Accuracy
  Accuracy=$(awk "BEGIN {print ($TN + $TP) / ($TP + $FN + $FP + $TN)}")

  # Calculate F1 Score
  F1_score=$(awk "BEGIN {print (2 * $TP) / (2 * $TP + $FP + $FN)}")

  # Return the results as a string
  echo -e "$method_name\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$F1_score\t$Accuracy\t$Selectivity"
}

# Header for the xls file
echo -e "Method\tTrue Positives (TP)\tFalse Positives (FP)\tFalse Negatives (FN)\tTrue Negatives (TN)\tPrecision\tRecall\tF1 Score\tAcurracy\tSelectivity" > "data/bar/CnRwo_ctcf_metrics.xls"

# Calculate metrics and append to the xls file for each method
calculate_metrics "lanceotron" "data/lanceotron/runningData/k562_ctcf_without_peak.bed" >> "data/bar/CnRwo_ctcf_metrics.xls"
calculate_metrics "macs2" "data/macs2/runningData/k562_ctcfpew_peak.narrowPeak" >> "data/bar/CnRwo_ctcf_metrics.xls"
calculate_metrics "macs2broad" "data/macs2/runningData/k562_ctcfpewb_peak.broadPeak" >> "data/bar/CnRwo_ctcf_metrics.xls"
calculate_metrics "macs3" "data/macs3/runningData/k562_ctcfpew_peak.narrowPeak" >> "data/bar/CnRwo_ctcf_metrics.xls"
calculate_metrics "macs3broad" "data/macs3/runningData/k562_ctcfpewb_peak.broadPeak" >> "data/bar/CnRwo_ctcf_metrics.xls"
calculate_metrics "epic2" "data/epic2/runningData/k562_ctcfw_peaks.xls" >> "data/bar/CnRwo_ctcf_metrics.xls"
