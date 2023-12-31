#!/bin/bash

while getopts "i:s:t:" op
do
    case "$op" in
        i)  sample="$OPTARG";;
        s)  standard="$OPTARG";;
        t)  threads="$OPTARG";;
        \?) exit 1;;
    esac
done

# variables and functions ---------------------------------------------------------------

calculate_rate() {
    awk -v true_term=$1 -v false_term=$2 'BEGIN {print true_term / (true_term + false_term)}' | cut -b1-5
}

calculate_f1_score() {
    awk -v true_term=$1 -v false_term=$2 'BEGIN {print 2 * (true_term * false_term) / (true_term + false_term)}' | cut -b1-5
}

threshold() {
    counts=$1
    predicted_truth=$(cat $sample_file_handle | awk -v s=$1 '$10 <= s')
    predicted_false=$(cat $sample_file_handle | awk -v s=$1 '$10 > s')
    TP=$(echo "$predicted_truth" | cut -f1-3 | bedtools intersect -u -a - -b $standard | wc -l)
    FP=$(echo "$predicted_truth" | cut -f1-3 | bedtools intersect -v -a - -b $standard | wc -l)
    FN=$(echo "$predicted_false" | cut -f1-3 | bedtools intersect -u -a - -b $standard | wc -l)
    TN=$(echo "$predicted_false" | cut -f1-3 | bedtools intersect -v -a - -b $standard | wc -l)

    # calculate precision, recall, F1. export results.
    precision=$(calculate_rate $TP $FP)
    recall=$(calculate_rate $TP $FN)
    fpr=$(calculate_rate $FP $TN)
    f1=$(calculate_f1_score $precision $recall)

    echo -e "$method\t$counts\t$TP\t$FP\t$FN\t$TN\t$precision\t$recall\t$fpr\t$f1"
}

# file I/O ------------------------------------------------------------------------------

file=$(find data/macs2/runningDataBroad -name "${sample}*Peak") # this workaround accommodates for narrowPeak and broadPeak inputs

# identify method,condition,replicate,mark
method="macs2_broad"


echo -e "method\tsignal\tTP\tFP\tFN\tTN\tprecision\trecall\tfpr\tf1" # header

# file prep -----------------------------------------------------------------------------

# create a new column with pval in decimal form. Sort by that new column.
# identify all pvals within a sample.
sample_file=$(awk -v OFS='\t' '{print $0,10**-$9}' $file | grep -vi "inf" | sort -rg -k10)
sample_pvals=$(echo "$sample_file" | cut -f10 | uniq)
sample_file_handle="data/evaluate_models/macs2_${sample}.tmp.txt" # create tmp file to threshold from
echo "$sample_file" > $sample_file_handle

# process peaks sequentially
for pval in $sample_pvals; do
    threshold $pval
done

rm $sample_file_handle
