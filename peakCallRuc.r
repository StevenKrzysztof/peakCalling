install.packages("pROC")  # Install pROC package
library(pROC)  # Load pROC package



# Load the BED files
epic2bed <- read.table("D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/epic2_k562_1_h3k4me3.bed", header = F)
macs2bed <- read.table("D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/macs2_k562_1_h3k4me3_peaks.narrowPeak", header = F)
macs3bed <- read.table("D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/macs3_k562_1_h3k4me3_peaks.narrowPeak", header = F)
homerbed <- read.table("D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/homer_k562_1_h3k4me3.bed", header = F)

# Load the true positive regions
true_positives <- read.table("D:/peakCalling/gopeaks-compare-main/src/standards/ENCFF885FQN.bed", header = TRUE)


#TRY CALCULATION OF FPR 
library(GenomicRanges)

# Convert the BED coordinates to GRanges objects
input_peaks_epic2 <- with(epic2bed, GRanges(epic2bed$chr1, IRanges(epic2bed$X137400, epic2bed$X139999)))
reference_peaks <- with(true_positives, GRanges(true_positives$chr1, IRanges(true_positives$X100035258, true_positives$X100036178)))

# Find the overlapping peaks between input and reference data
overlap_epic2 <- intersect(input_peaks_epic2, reference_peaks)

# Calculate false positive rate (FPR)
FPR_epic2 <- 1 - length(overlap_epic2) / length(input_peaks_epic2)

# Calculate recall
recall_epic2 <- length(overlap_epic2) / length(reference_peaks)

#repeat on other methods
#--------------------macs2--------------------
# Convert the BED coordinates to GRanges objects
input_peaks_macs2 <- with(macs2bed, GRanges(macs2bed$V1, IRanges(macs2bed$V2, macs2bed$V3)))
# Find the overlapping peaks between input and reference data
overlap_macs2 <- intersect(input_peaks_macs2, reference_peaks)

# Calculate false positive rate (FPR)
FPR_macs2 <- 1 - length(overlap_macs2) / length(input_peaks_macs2)

# Calculate recall
recall_macs2 <- length(overlap_macs2) / length(reference_peaks)


#-------------------macs3---------------------
# Convert the BED coordinates to GRanges objects
input_peaks_macs3 <- with(macs3bed, GRanges(macs3bed$V1, IRanges(macs3bed$V2, macs3bed$V3)))
# Find the overlapping peaks between input and reference data
overlap_macs3 <- intersect(input_peaks_macs3, reference_peaks)

# Calculate false positive rate (FPR)
FPR_macs3 <- 1 - length(overlap_macs3) / length(input_peaks_macs3)

# Calculate recall
recall_macs3 <- length(overlap_macs3) / length(reference_peaks)

#-------------------homer----------------------
# Convert the BED coordinates to GRanges objects
input_peaks_homer <- with(homerbed, GRanges(homerbed$V2, IRanges(homerbed$V3, homerbed$V4)))
# Find the overlapping peaks between input and reference data
overlap_homer <- intersect(input_peaks_homer, reference_peaks)

# Calculate false positive rate (FPR)
FPR_homer <- 1 - length(overlap_homer) / length(input_peaks_homer)

# Calculate recall
recall_homer <- length(overlap_homer) / length(reference_peaks)

#-------------------making dataframe-------------
# Create a data frame with FPR and recall
result1 <- data.frame(Method = "epic2", FPR = FPR_epic2, Recall = recall_epic2)
result2 <- data.frame(Method = "macs2", FPR = FPR_macs2, Recall = recall_macs2)
result3 <- data.frame(Method = "macs3", FPR = FPR_macs3, Recall = recall_macs3)
result4 <- data.frame(Method = "homer", FPR = FPR_homer, Recall = recall_homer)
result <- rbind(result1, result2, result3, result4)

#-------------------making plot------------------
library(ggplot2)

# Plot the data
ggplot(result, aes(x = FPR, y = Recall, color = Method)) +
  geom_line() +
  labs(x = "False Positive Rate", y = "Recall", title = "Peak Calling Methods") +
  theme_minimal()


#------------------try for loop-----------------
# Initialize an empty data frame to store the results
resultnew <- data.frame(Method = character(), FPR = numeric(), Recall = numeric(), stringsAsFactors = FALSE)

# List of methods and corresponding bed files
methods <- c("epic2", "macs2", "macs3")
bed_files <- c("D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/epic2_k562_1_h3k4me3.bed", "D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/macs2_k562_1_h3k4me3.bed", "D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/macs3_k562_1_h3k4me3.bed")

# Loop through each method
for (i in seq_along(methods)) {
  method <- methods[i]
  bed_file <- bed_files[i]
  
  # Read the peak calls for the current method from the BED file
  input_data <- read.table(bed_file, header = TRUE)
  
  # Calculate the FPR and recall based on the provided columns
  fpr <- sum(input_data$v9 > threshold) / nrow(input_data)
  recall <- sum(input_data$log2FoldChange > threshold) / nrow(reference_data)
  
  # Append the method, FPR, and recall to the result data frame
  result <- rbind(result, data.frame(Method = method, FPR = fpr, Recall = recall))
}

# Plot the data with curves
ggplot(result, aes(x = FPR, y = Recall, color = Method)) +
  geom_line() +
  labs(x = "False Positive Rate", y = "Recall", title = "Peak Calling Methods") +
  theme_minimal()















# Calculate the TPR and FPR for each BED file
roc1 <- roc(true_positives$V7[1:14464], epic2bed$V9)
roc2 <- roc(true_positives$V7[1:10391], macs2bed$V5)
roc3 <- roc(true_positives$V7[1:9204], macs3bed$V5)
roc4 <- roc(true_positives$V7[1:204], homerbed$V13)



# Plot the ROC curves
plot(roc1, col = "red")
plot(roc2, add = T, col = "blue")
plot(roc3, add = T, col = "green")
plot(roc4, add = T, col = "yellow")



#try to use CHIPseeker
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("ChIPseeker")

library(ChIPseeker)
peak <- readPeakFile("D:/peakCalling/gopeaks-compare-main/data/plotForH3k4me3/epic2_k562_1_h3k4me3.bed")
covplot(peak)


#try other plot method
## Dummy data in ~bed format
n<- 10
chrom<- rep('chr1', n)
start<- seq(1, 1000, length.out= n)
end<- start + rpois(n, 50)
logfc<- rgamma(n, 2)

## Prepare colours based on logFC
pal<- colorRampPalette(c('blue', 'red'))
cols<- paste0(pal(n)[as.numeric(cut(logfc, breaks = n))], 99)

## Plot
plot(x= start, y= rep(0, n), type= 'n', bty= 'n', yaxt= 'n',
     ylab= '', xlab= 'Position', xlim= range(c(start, end)), ylim= c(0, 1))
rect(xleft= start, xright= end, ybottom= 0, ytop= 0.1, border= NA, col= cols)
text(x= start, y= 0.12, labels= sprintf("%.2f", logfc), adj= c(0,0))

## Legend
nlg<- 5
lgcols<- paste0(pal(nlg)[1:nlg], 99)
lg<- round(seq(min(logfc), max(logfc), length.out= nlg), 1)
legend('topleft', pch= 15, bty= 'n', col= lgcols, legend= lg, pt.cex= 2, cex= 1)
