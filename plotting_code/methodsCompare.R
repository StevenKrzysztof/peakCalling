#for H3K4me1
library(ggplot2)
#read the table for h3k4me1
h3k4me1Comp <- read.table("D:/peakCalling/gopeaks-compare-main/data/bar/h3k4me1_metrics.xls", header = T, sep = "\t")
# Install and load the required packages
h3k4me1Comp <- h3k4me1Comp[, c(1,5:7)]

h3k4me1Comp <- reshape2::melt(h3k4me1Comp, id.vars="Method")

ggplot(h3k4me1Comp, aes(x=Method, y=value, fill=variable)) +
  geom_bar(stat="identity", position=position_dodge()) +
  labs(title="Barplot of H3K4me1: Precision ,Recall and F1 score",
       x="Method",
       y="Score",
       fill="Score")+
  theme(plot.title = element_text(hjust = 0.5))

#for H3K4me2
#read the table for h3k4me2
h3k4me2Comp <- read.table("D:/peakCalling/gopeaks-compare-main/data/bar/h3k4me2_metrics.xls", header = T, sep = "\t")
h3k4me2Comp <- h3k4me2Comp[, c(1,5:7)]

h3k4me2Comp <- reshape2::melt(h3k4me2Comp, id.vars="Method")

ggplot(h3k4me2Comp, aes(x=Method, y=value, fill=variable)) +
  geom_bar(stat="identity", position=position_dodge()) +
  labs(title="Barplot of h3k4me2: Precision ,Recall and F1 score",
       x="Method",
       y="Score",
       fill="Score")+
  theme(plot.title = element_text(hjust = 0.5))

#for h3k4me3
#read the table for h3k4me3
h3k4me3Comp <- read.table("D:/peakCalling/gopeaks-compare-main/data/bar/h3k4me3_metrics.xls", header = T, sep = "\t")
# Install and load the required packages
library(ggplot2)

h3k4me3Comp <- h3k4me3Comp[, c(1,5:7)]

h3k4me3Comp <- reshape2::melt(h3k4me3Comp, id.vars="Method")

ggplot(h3k4me3Comp, aes(x=Method, y=value, fill=variable)) +
  geom_bar(stat="identity", position=position_dodge()) +
  labs(title="Barplot of H3K4me3: Precision ,Recall and F1 score",
       x="Method",
       y="Score",
       fill="Score")+
  theme(plot.title = element_text(hjust = 0.5))


#read the table for h3k27me3
h3k27me3Comp <- read.table("D:/peakCalling/gopeaks-compare-main/data/bar/h3k27me3_metrics.xls", header = T, sep = "\t")
h3k27me3Comp <- h3k27me3Comp[, c(1,5:7)]

h3k27me3Comp <- reshape2::melt(h3k27me3Comp, id.vars="Method")

ggplot(h3k27me3Comp, aes(x=Method, y=value, fill=variable)) +
  geom_bar(stat="identity", position=position_dodge()) +
  labs(title="Barplot of h3k27me3: Precision ,Recall and F1 score",
       x="Method",
       y="Score",
       fill="Score")+
  theme(plot.title = element_text(hjust = 0.5))

#read the table for h3k27ac
h3k27acComp <- read.table("D:/peakCalling/gopeaks-compare-main/data/bar/h3k27ac_metrics.xls", header = T, sep = "\t")
h3k27acComp <- h3k27acComp[, c(1,5:7)]

h3k27acComp <- reshape2::melt(h3k27acComp, id.vars="Method")

ggplot(h3k27acComp, aes(x=Method, y=value, fill=variable)) +
  geom_bar(stat="identity", position=position_dodge()) +
  labs(title="Barplot of h3k27ac: Precision ,Recall and F1 score",
       x="Method",
       y="Score",
       fill="Score")+
  theme(plot.title = element_text(hjust = 0.5))


#read the table for ctcf
ctcfComp <- read.table("D:/peakCalling/gopeaks-compare-main/data/bar/ctcf_metrics.xls", header = T, sep = "\t")
ctcfComp <- ctcfComp[, c(1,5:7)]

ctcfComp <- reshape2::melt(ctcfComp, id.vars="Method")

ggplot(ctcfComp, aes(x=Method, y=value, fill=variable)) +
  geom_bar(stat="identity", position=position_dodge()) +
  labs(title="Barplot of ctcf: Precision ,Recall and F1 score",
       x="Method",
       y="Score",
       fill="Score")+
  theme(plot.title = element_text(hjust = 0.5))
