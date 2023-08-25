#plot merged data

library(ggplot2)

# Load the data for MACS2
macs2_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_nolambda_peak.xls", header = TRUE))
macs2_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda1000_peak.xls", header = TRUE))
macs2_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda2000_peak.xls", header = TRUE))
macs2_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda3000_peak.xls", header = TRUE))
macs2_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda4000_peak.xls", header = TRUE))
macs2_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda5000_peak.xls", header = TRUE))
macs2_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda6000_peak.xls", header = TRUE))
macs2_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda7000_peak.xls", header = TRUE))
macs2_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda8000_peak.xls", header = TRUE))
macs2_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda9000_peak.xls", header = TRUE))
macs2_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda10000_peak.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_nolambda_peak.xls", header = TRUE))
macs3_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda1000_peak.xls", header = TRUE))
macs3_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda2000_peak.xls", header = TRUE))
macs3_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda3000_peak.xls", header = TRUE))
macs3_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda4000_peak.xls", header = TRUE))
macs3_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda5000_peak.xls", header = TRUE))
macs3_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda6000_peak.xls", header = TRUE))
macs3_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda7000_peak.xls", header = TRUE))
macs3_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda8000_peak.xls", header = TRUE))
macs3_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda9000_peak.xls", header = TRUE))
macs3_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda10000_peak.xls", header = TRUE))

# Load the data for MACS2
macs2_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_broad_nolambda_peak.xls", header = TRUE))
macs2_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda1000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda2000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda3000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda4000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda5000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda6000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda7000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda8000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda9000_broad_peak.xls", header = TRUE))
macs2_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/difflambda/k562_ctcf_lambda10000_broad_peak.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_broad_nolambda_peak.xls", header = TRUE))
macs3_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda1000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda2000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda3000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda4000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda5000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda6000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda7000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda8000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda9000_broad_peak.xls", header = TRUE))
macs3_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/difflambda/k562_ctcf_lambda10000_broad_peak.xls", header = TRUE))

# Create data frames with the number of rows in each file for MACS2 and MACS3
df_macs2 <- data.frame(Method = "MACS2",
                       Lambda = c("bg", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999),
                       Rows = c(macs2_lambda_no, macs2_lambda_1000, macs2_lambda_2000, macs2_lambda_3000,
                                macs2_lambda_4000, macs2_lambda_5000, macs2_lambda_6000,
                                macs2_lambda_7000, macs2_lambda_8000, macs2_lambda_9000,
                                macs2_lambda_10000))

df_macs3 <- data.frame(Method = "MACS3",
                       Lambda = c(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs3_lambda_1000, macs3_lambda_2000, macs3_lambda_3000, macs3_lambda_4000,
                                macs3_lambda_5000, macs3_lambda_6000, macs3_lambda_7000, macs3_lambda_8000,
                                macs3_lambda_9000, macs3_lambda_10000, macs3_lambda_no))
df_macs2_broad <- data.frame(Method = "MACS2 broad",
                             Lambda = c("bg", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999),
                             Rows = c(macs2_lambda_broad_no, macs2_lambda_broad_1000, macs2_lambda_broad_2000, macs2_lambda_broad_3000,
                                      macs2_lambda_broad_4000, macs2_lambda_broad_5000, macs2_lambda_broad_6000,
                                      macs2_lambda_broad_7000, macs2_lambda_broad_8000, macs2_lambda_broad_9000,
                                      macs2_lambda_broad_10000))

df_macs3_broad <- data.frame(Method = "MACS3 broad",
                             Lambda = c(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs3_lambda_broad_1000, macs3_lambda_broad_2000, macs3_lambda_broad_3000, macs3_lambda_broad_4000,
                                      macs3_lambda_broad_5000, macs3_lambda_broad_6000, macs3_lambda_broad_7000, macs3_lambda_broad_8000,
                                      macs3_lambda_broad_9000, macs3_lambda_broad_10000, macs3_lambda_broad_no))

# Combine the data frames
combined_df <- rbind(df_macs2, df_macs3, df_macs2_broad, df_macs3_broad)

# Create a barplot with a title and colored bars, using different colors for each method

# Your existing ggplot code
ggplot(combined_df, aes(x = factor(Lambda), y = Rows, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Lambda", y = "Number of peaks found", title = "") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line.x = element_line(color = "black"),
        axis.line.y = element_line(color = "black"),
        plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label = Rows), position = position_dodge(width = 0.9), vjust = -0.5, size = 2.5) +
  ggtitle("Lambda Choices Comparison in ctcf: MACS2 and MACS3")




#----------------------------------------------barplot------------------------------------
#----------------------------------------------h3k4me1------------------------------------
# Load the data for MACS2
macs2_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_pe_peaks.xls", header = TRUE))
macs2_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_nolambda_peaks.xls", header = TRUE))
macs2_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_pe_peaks.xls", header = TRUE))
macs3_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_nolambda_peaks.xls", header = TRUE))
macs3_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS2
macs2_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_pe_peaks.xls", header = TRUE))
macs2_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_nolambda_peaks.xls", header = TRUE))
macs2_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_pe_peaks.xls", header = TRUE))
macs3_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_nolambda_peaks.xls", header = TRUE))
macs3_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me1/k562_1_h3k4me1_broad_lambda10000_peaks.xls", header = TRUE))

# Create data frames with the number of rows in each file for MACS2 and MACS3
df_macs2 <- data.frame(Method = "MACS2",
                       Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs2_lambda_default, macs2_lambda_1000, macs2_lambda_2000, macs2_lambda_3000,
                                macs2_lambda_4000, macs2_lambda_5000, macs2_lambda_6000,
                                macs2_lambda_7000, macs2_lambda_8000, macs2_lambda_9000,
                                macs2_lambda_10000, macs2_lambda_no))

df_macs3 <- data.frame(Method = "MACS3",
                       Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs3_lambda_default,macs3_lambda_1000, macs3_lambda_2000, macs3_lambda_3000, macs3_lambda_4000,
                                macs3_lambda_5000, macs3_lambda_6000, macs3_lambda_7000, macs3_lambda_8000,
                                macs3_lambda_9000, macs3_lambda_10000, macs3_lambda_no))
df_macs2_broad <- data.frame(Method = "MACS2 broad",
                             Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs2_lambda_broad_default, macs2_lambda_broad_1000, macs2_lambda_broad_2000, macs2_lambda_broad_3000,
                                      macs2_lambda_broad_4000, macs2_lambda_broad_5000, macs2_lambda_broad_6000,
                                      macs2_lambda_broad_7000, macs2_lambda_broad_8000, macs2_lambda_broad_9000,
                                      macs2_lambda_broad_10000,macs2_lambda_broad_no))

df_macs3_broad <- data.frame(Method = "MACS3 broad",
                             Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs3_lambda_broad_default, macs3_lambda_broad_1000, macs3_lambda_broad_2000, macs3_lambda_broad_3000, macs3_lambda_broad_4000,
                                      macs3_lambda_broad_5000, macs3_lambda_broad_6000, macs3_lambda_broad_7000, macs3_lambda_broad_8000,
                                      macs3_lambda_broad_9000, macs3_lambda_broad_10000, macs3_lambda_broad_no))

# Combine the data frames
combined_df <- rbind(df_macs2, df_macs3, df_macs2_broad, df_macs3_broad)

# Create a barplot with a title and colored bars, using different colors for each method

# Your existing ggplot code
ggplot(combined_df, aes(x = factor(Lambda), y = Rows, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Lambda", y = "Number of peaks found", title = "") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line.x = element_line(color = "black"),
        axis.line.y = element_line(color = "black"),
        plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label = Rows), position = position_dodge(width = 0.9), vjust = -0.5, size = 2) +
  ggtitle("Lambda Choices Comparison in h3k4me1: MACS2 and MACS3")


#----------------------------------------------h3k4me2------------------------------------
# Load the data for MACS2
macs2_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_pe_peaks.xls", header = TRUE))
macs2_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_nolambda_peaks.xls", header = TRUE))
macs2_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_pe_peaks.xls", header = TRUE))
macs3_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_nolambda_peaks.xls", header = TRUE))
macs3_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS2
macs2_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_pe_peaks.xls", header = TRUE))
macs2_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_nolambda_peaks.xls", header = TRUE))
macs2_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_pe_peaks.xls", header = TRUE))
macs3_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_nolambda_peaks.xls", header = TRUE))
macs3_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me2/k562_1_h3k4me2_broad_lambda10000_peaks.xls", header = TRUE))

# Create data frames with the number of rows in each file for MACS2 and MACS3
df_macs2 <- data.frame(Method = "MACS2",
                       Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs2_lambda_default, macs2_lambda_1000, macs2_lambda_2000, macs2_lambda_3000,
                                macs2_lambda_4000, macs2_lambda_5000, macs2_lambda_6000,
                                macs2_lambda_7000, macs2_lambda_8000, macs2_lambda_9000,
                                macs2_lambda_10000, macs2_lambda_no))

df_macs3 <- data.frame(Method = "MACS3",
                       Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs3_lambda_default,macs3_lambda_1000, macs3_lambda_2000, macs3_lambda_3000, macs3_lambda_4000,
                                macs3_lambda_5000, macs3_lambda_6000, macs3_lambda_7000, macs3_lambda_8000,
                                macs3_lambda_9000, macs3_lambda_10000, macs3_lambda_no))
df_macs2_broad <- data.frame(Method = "MACS2 broad",
                             Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs2_lambda_broad_default, macs2_lambda_broad_1000, macs2_lambda_broad_2000, macs2_lambda_broad_3000,
                                      macs2_lambda_broad_4000, macs2_lambda_broad_5000, macs2_lambda_broad_6000,
                                      macs2_lambda_broad_7000, macs2_lambda_broad_8000, macs2_lambda_broad_9000,
                                      macs2_lambda_broad_10000,macs2_lambda_broad_no))

df_macs3_broad <- data.frame(Method = "MACS3 broad",
                             Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs3_lambda_broad_default, macs3_lambda_broad_1000, macs3_lambda_broad_2000, macs3_lambda_broad_3000, macs3_lambda_broad_4000,
                                      macs3_lambda_broad_5000, macs3_lambda_broad_6000, macs3_lambda_broad_7000, macs3_lambda_broad_8000,
                                      macs3_lambda_broad_9000, macs3_lambda_broad_10000, macs3_lambda_broad_no))

# Combine the data frames
combined_df <- rbind(df_macs2, df_macs3, df_macs2_broad, df_macs3_broad)

# Create a barplot with a title and colored bars, using different colors for each method

# Your existing ggplot code
ggplot(combined_df, aes(x = factor(Lambda), y = Rows, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Lambda", y = "Number of peaks found", title = "") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line.x = element_line(color = "black"),
        axis.line.y = element_line(color = "black"),
        plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label = Rows), position = position_dodge(width = 0.9), vjust = -0.5, size = 2) +
  ggtitle("Lambda Choices Comparison in h3k4me2: MACS2 and MACS3")


#----------------------------------------------h3k4me3------------------------------------
# Load the data for MACS2
macs2_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_pe_peaks.xls", header = TRUE))
macs2_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_nolambda_peaks.xls", header = TRUE))
macs2_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_pe_peaks.xls", header = TRUE))
macs3_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_nolambda_peaks.xls", header = TRUE))
macs3_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS2
macs2_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_pe_peaks.xls", header = TRUE))
macs2_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_nolambda_peaks.xls", header = TRUE))
macs2_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_pe_peaks.xls", header = TRUE))
macs3_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_nolambda_peaks.xls", header = TRUE))
macs3_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k4me3/k562_1_h3k4me3_broad_lambda10000_peaks.xls", header = TRUE))

# Create data frames with the number of rows in each file for MACS2 and MACS3
df_macs2 <- data.frame(Method = "MACS2",
                       Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs2_lambda_default, macs2_lambda_1000, macs2_lambda_2000, macs2_lambda_3000,
                                macs2_lambda_4000, macs2_lambda_5000, macs2_lambda_6000,
                                macs2_lambda_7000, macs2_lambda_8000, macs2_lambda_9000,
                                macs2_lambda_10000, macs2_lambda_no))

df_macs3 <- data.frame(Method = "MACS3",
                       Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs3_lambda_default,macs3_lambda_1000, macs3_lambda_2000, macs3_lambda_3000, macs3_lambda_4000,
                                macs3_lambda_5000, macs3_lambda_6000, macs3_lambda_7000, macs3_lambda_8000,
                                macs3_lambda_9000, macs3_lambda_10000, macs3_lambda_no))
df_macs2_broad <- data.frame(Method = "MACS2 broad",
                             Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs2_lambda_broad_default, macs2_lambda_broad_1000, macs2_lambda_broad_2000, macs2_lambda_broad_3000,
                                      macs2_lambda_broad_4000, macs2_lambda_broad_5000, macs2_lambda_broad_6000,
                                      macs2_lambda_broad_7000, macs2_lambda_broad_8000, macs2_lambda_broad_9000,
                                      macs2_lambda_broad_10000,macs2_lambda_broad_no))

df_macs3_broad <- data.frame(Method = "MACS3 broad",
                             Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs3_lambda_broad_default, macs3_lambda_broad_1000, macs3_lambda_broad_2000, macs3_lambda_broad_3000, macs3_lambda_broad_4000,
                                      macs3_lambda_broad_5000, macs3_lambda_broad_6000, macs3_lambda_broad_7000, macs3_lambda_broad_8000,
                                      macs3_lambda_broad_9000, macs3_lambda_broad_10000, macs3_lambda_broad_no))

# Combine the data frames
combined_df <- rbind(df_macs2, df_macs3, df_macs2_broad, df_macs3_broad)

# Create a barplot with a title and colored bars, using different colors for each method

# Your existing ggplot code
ggplot(combined_df, aes(x = factor(Lambda), y = Rows, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Lambda", y = "Number of peaks found", title = "") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line.x = element_line(color = "black"),
        axis.line.y = element_line(color = "black"),
        plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label = Rows), position = position_dodge(width = 0.9), vjust = -0.5, size = 2) +
  ggtitle("Lambda Choices Comparison in h3k4me3: MACS2 and MACS3")

#----------------------------------------------h3k27me3------------------------------------
# Load the data for MACS2
macs2_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_pe_peaks.xls", header = TRUE))
macs2_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_nolambda_peaks.xls", header = TRUE))
macs2_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_pe_peaks.xls", header = TRUE))
macs3_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_nolambda_peaks.xls", header = TRUE))
macs3_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS2
macs2_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_pe_peaks.xls", header = TRUE))
macs2_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_nolambda_peaks.xls", header = TRUE))
macs2_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_pe_peaks.xls", header = TRUE))
macs3_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_nolambda_peaks.xls", header = TRUE))
macs3_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27me3/k562_1_h3k27me3_broad_lambda10000_peaks.xls", header = TRUE))

# Create data frames with the number of rows in each file for MACS2 and MACS3
df_macs2 <- data.frame(Method = "MACS2",
                       Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs2_lambda_default, macs2_lambda_1000, macs2_lambda_2000, macs2_lambda_3000,
                                macs2_lambda_4000, macs2_lambda_5000, macs2_lambda_6000,
                                macs2_lambda_7000, macs2_lambda_8000, macs2_lambda_9000,
                                macs2_lambda_10000, macs2_lambda_no))

df_macs3 <- data.frame(Method = "MACS3",
                       Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs3_lambda_default,macs3_lambda_1000, macs3_lambda_2000, macs3_lambda_3000, macs3_lambda_4000,
                                macs3_lambda_5000, macs3_lambda_6000, macs3_lambda_7000, macs3_lambda_8000,
                                macs3_lambda_9000, macs3_lambda_10000, macs3_lambda_no))
df_macs2_broad <- data.frame(Method = "MACS2 broad",
                             Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs2_lambda_broad_default, macs2_lambda_broad_1000, macs2_lambda_broad_2000, macs2_lambda_broad_3000,
                                      macs2_lambda_broad_4000, macs2_lambda_broad_5000, macs2_lambda_broad_6000,
                                      macs2_lambda_broad_7000, macs2_lambda_broad_8000, macs2_lambda_broad_9000,
                                      macs2_lambda_broad_10000,macs2_lambda_broad_no))

df_macs3_broad <- data.frame(Method = "MACS3 broad",
                             Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs3_lambda_broad_default, macs3_lambda_broad_1000, macs3_lambda_broad_2000, macs3_lambda_broad_3000, macs3_lambda_broad_4000,
                                      macs3_lambda_broad_5000, macs3_lambda_broad_6000, macs3_lambda_broad_7000, macs3_lambda_broad_8000,
                                      macs3_lambda_broad_9000, macs3_lambda_broad_10000, macs3_lambda_broad_no))

# Combine the data frames
combined_df <- rbind(df_macs2, df_macs3, df_macs2_broad, df_macs3_broad)

# Create a barplot with a title and colored bars, using different colors for each method

# Your existing ggplot code
ggplot(combined_df, aes(x = factor(Lambda), y = Rows, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Lambda", y = "Number of peaks found", title = "") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line.x = element_line(color = "black"),
        axis.line.y = element_line(color = "black"),
        plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label = Rows), position = position_dodge(width = 0.9), vjust = -0.5, size = 2) +
  ggtitle("Lambda Choices Comparison in h3k27me3: MACS2 and MACS3")



#----------------------------------------------h3k27ac------------------------------------
# Load the data for MACS2
macs2_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_pe_peaks.xls", header = TRUE))
macs2_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_nolambda_peaks.xls", header = TRUE))
macs2_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_pe_peaks.xls", header = TRUE))
macs3_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_nolambda_peaks.xls", header = TRUE))
macs3_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS2
macs2_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_pe_peaks.xls", header = TRUE))
macs2_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_nolambda_peaks.xls", header = TRUE))
macs2_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_pe_peaks.xls", header = TRUE))
macs3_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_nolambda_peaks.xls", header = TRUE))
macs3_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_1_h3k27ac/k562_1_h3k27ac_broad_lambda10000_peaks.xls", header = TRUE))

# Create data frames with the number of rows in each file for MACS2 and MACS3
df_macs2 <- data.frame(Method = "MACS2",
                       Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs2_lambda_default, macs2_lambda_1000, macs2_lambda_2000, macs2_lambda_3000,
                                macs2_lambda_4000, macs2_lambda_5000, macs2_lambda_6000,
                                macs2_lambda_7000, macs2_lambda_8000, macs2_lambda_9000,
                                macs2_lambda_10000, macs2_lambda_no))

df_macs3 <- data.frame(Method = "MACS3",
                       Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs3_lambda_default,macs3_lambda_1000, macs3_lambda_2000, macs3_lambda_3000, macs3_lambda_4000,
                                macs3_lambda_5000, macs3_lambda_6000, macs3_lambda_7000, macs3_lambda_8000,
                                macs3_lambda_9000, macs3_lambda_10000, macs3_lambda_no))
df_macs2_broad <- data.frame(Method = "MACS2 broad",
                             Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs2_lambda_broad_default, macs2_lambda_broad_1000, macs2_lambda_broad_2000, macs2_lambda_broad_3000,
                                      macs2_lambda_broad_4000, macs2_lambda_broad_5000, macs2_lambda_broad_6000,
                                      macs2_lambda_broad_7000, macs2_lambda_broad_8000, macs2_lambda_broad_9000,
                                      macs2_lambda_broad_10000,macs2_lambda_broad_no))

df_macs3_broad <- data.frame(Method = "MACS3 broad",
                             Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs3_lambda_broad_default, macs3_lambda_broad_1000, macs3_lambda_broad_2000, macs3_lambda_broad_3000, macs3_lambda_broad_4000,
                                      macs3_lambda_broad_5000, macs3_lambda_broad_6000, macs3_lambda_broad_7000, macs3_lambda_broad_8000,
                                      macs3_lambda_broad_9000, macs3_lambda_broad_10000, macs3_lambda_broad_no))

# Combine the data frames
combined_df <- rbind(df_macs2, df_macs3, df_macs2_broad, df_macs3_broad)

# Create a barplot with a title and colored bars, using different colors for each method

# Your existing ggplot code
ggplot(combined_df, aes(x = factor(Lambda), y = Rows, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Lambda", y = "Number of peaks found", title = "") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line.x = element_line(color = "black"),
        axis.line.y = element_line(color = "black"),
        plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label = Rows), position = position_dodge(width = 0.9), vjust = -0.5, size = 2) +
  ggtitle("Lambda Choices Comparison in h3k27ac: MACS2 and MACS3")


#----------------------------------------------ctcf------------------------------------
# Load the data for MACS2
macs2_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_pe_peaks.xls", header = TRUE))
macs2_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_nolambda_peaks.xls", header = TRUE))
macs2_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_pe_peaks.xls", header = TRUE))
macs3_lambda_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_nolambda_peaks.xls", header = TRUE))
macs3_lambda_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS2
macs2_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_pe_peaks.xls", header = TRUE))
macs2_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_nolambda_peaks.xls", header = TRUE))
macs2_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda1000_peaks.xls", header = TRUE))
macs2_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda2000_peaks.xls", header = TRUE))
macs2_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda3000_peaks.xls", header = TRUE))
macs2_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda4000_peaks.xls", header = TRUE))
macs2_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda5000_peaks.xls", header = TRUE))
macs2_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda6000_peaks.xls", header = TRUE))
macs2_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda7000_peaks.xls", header = TRUE))
macs2_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda8000_peaks.xls", header = TRUE))
macs2_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda9000_peaks.xls", header = TRUE))
macs2_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs2/k562_2_ctcf/k562_2_ctcf_broad_lambda10000_peaks.xls", header = TRUE))

# Load the data for MACS3
macs3_lambda_broad_default <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_pe_peaks.xls", header = TRUE))
macs3_lambda_broad_no <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_nolambda_peaks.xls", header = TRUE))
macs3_lambda_broad_1000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda1000_peaks.xls", header = TRUE))
macs3_lambda_broad_2000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda2000_peaks.xls", header = TRUE))
macs3_lambda_broad_3000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda3000_peaks.xls", header = TRUE))
macs3_lambda_broad_4000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda4000_peaks.xls", header = TRUE))
macs3_lambda_broad_5000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda5000_peaks.xls", header = TRUE))
macs3_lambda_broad_6000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda6000_peaks.xls", header = TRUE))
macs3_lambda_broad_7000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda7000_peaks.xls", header = TRUE))
macs3_lambda_broad_8000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda8000_peaks.xls", header = TRUE))
macs3_lambda_broad_9000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda9000_peaks.xls", header = TRUE))
macs3_lambda_broad_10000 <- nrow(read.table("D:/peakCalling/gopeaks-compare-main/data/macs3/k562_2_ctcf/k562_2_ctcf_broad_lambda10000_peaks.xls", header = TRUE))

# Create data frames with the number of rows in each file for MACS2 and MACS3
df_macs2 <- data.frame(Method = "MACS2",
                       Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs2_lambda_default, macs2_lambda_1000, macs2_lambda_2000, macs2_lambda_3000,
                                macs2_lambda_4000, macs2_lambda_5000, macs2_lambda_6000,
                                macs2_lambda_7000, macs2_lambda_8000, macs2_lambda_9000,
                                macs2_lambda_10000, macs2_lambda_no))

df_macs3 <- data.frame(Method = "MACS3",
                       Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                       Rows = c(macs3_lambda_default,macs3_lambda_1000, macs3_lambda_2000, macs3_lambda_3000, macs3_lambda_4000,
                                macs3_lambda_5000, macs3_lambda_6000, macs3_lambda_7000, macs3_lambda_8000,
                                macs3_lambda_9000, macs3_lambda_10000, macs3_lambda_no))
df_macs2_broad <- data.frame(Method = "MACS2 broad",
                             Lambda = c("default", 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs2_lambda_broad_default, macs2_lambda_broad_1000, macs2_lambda_broad_2000, macs2_lambda_broad_3000,
                                      macs2_lambda_broad_4000, macs2_lambda_broad_5000, macs2_lambda_broad_6000,
                                      macs2_lambda_broad_7000, macs2_lambda_broad_8000, macs2_lambda_broad_9000,
                                      macs2_lambda_broad_10000,macs2_lambda_broad_no))

df_macs3_broad <- data.frame(Method = "MACS3 broad",
                             Lambda = c("default",1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 9999, "bg"),
                             Rows = c(macs3_lambda_broad_default, macs3_lambda_broad_1000, macs3_lambda_broad_2000, macs3_lambda_broad_3000, macs3_lambda_broad_4000,
                                      macs3_lambda_broad_5000, macs3_lambda_broad_6000, macs3_lambda_broad_7000, macs3_lambda_broad_8000,
                                      macs3_lambda_broad_9000, macs3_lambda_broad_10000, macs3_lambda_broad_no))

# Combine the data frames
combined_df <- rbind(df_macs2, df_macs3, df_macs2_broad, df_macs3_broad)

# Create a barplot with a title and colored bars, using different colors for each method

# Your existing ggplot code
ggplot(combined_df, aes(x = factor(Lambda), y = Rows, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Lambda", y = "Number of peaks found", title = "") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line.x = element_line(color = "black"),
        axis.line.y = element_line(color = "black"),
        plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label = Rows), position = position_dodge(width = 0.9), vjust = -0.5, size = 2) +
  ggtitle("Lambda Choices Comparison in ctcf: MACS2 and MACS3")