#edit epic2 files
preprocess <- read.table("D:/peakCalling/gopeaks-compare-main/data/epic2/runningData/k562_h3k4me1w_peaks.xls", header = F)
colnames(preprocess) <- c("Chromosome", "Start", "End", "PValue", "Score", "Strand", "ChIPCount", "InputCount", "FDR", "log2FoldChange")
# Generate the 11th column (-log10 of 4th column)
preprocess$PValue <- -log10(preprocess$PValue)
colnames(preprocess) <- c("#Chromosome", "Start", "End", "PValue", "Score", "Strand", "ChIPCount", "InputCount", "FDR", "log2FoldChange")
write.table(preprocess, file = "D:/peakCalling/gopeaks-compare-main/data/epic2/runningData/k562_h3k4me1w_peaks.narrowPeak", sep = "\t", quote = FALSE, row.names = FALSE)



#edit homer files
preprocessH <- read.table("D:/peakCalling/gopeaks-compare-main/data/homer/k562_ctcf_peaks.xls", header = F)
colnames(preprocessH) <- c("PeakID",	"#chr",	"start",	"end",	"strand",	"Normalized Tag Count",	"focus ratio",	"findPeaks Score",	"Total Tags",	"Control Tags",	"Fold Change vs Control",	"p-value vs Control"	,"Fold Change vs Local",	"p-value vs Local",	"Clonal Fold Change")
preprocessH$`p-value vs Control` <- -log10(preprocessH$`p-value vs Control`)
preprocessH <- preprocessH[, 2:(ncol(preprocessH))]

write.table(preprocessH, file = "D:/peakCalling/gopeaks-compare-main/data/homer/k562_ctcf_peaks.narrowPeak", sep = "\t", quote = FALSE, row.names = FALSE)
