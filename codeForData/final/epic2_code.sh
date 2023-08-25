# #!/bin/bash
# epic2 -t data/uniq_hits/k562_1_h3k4me1_uniq_hits.bam --genome hg38 > data/epic2/k562_1_h3k4me1/k562_1_h3k4me1_w.txt
# epic2 -t data/uniq_hits/k562_2_h3k4me1_uniq_hits.bam --genome hg38 > data/epic2/k562_2_h3k4me1/k562_2_h3k4me1_w.txt
# epic2 -t data/uniq_hits/k562_1_h3k4me2_uniq_hits.bam --genome hg38 > data/epic2/k562_1_h3k4me2/k562_1_h3k4me2_w.txt
# epic2 -t data/uniq_hits/k562_2_h3k4me2_uniq_hits.bam --genome hg38 > data/epic2/k562_2_h3k4me2/k562_2_h3k4me2_w.txt
# epic2 -t data/uniq_hits/k562_1_h3k4me3_uniq_hits.bam --genome hg38 > data/epic2/k562_1_h3k4me3/k562_1_h3k4me3_w.txt
# epic2 -t data/uniq_hits/k562_2_h3k4me3_uniq_hits.bam --genome hg38 > data/epic2/k562_2_h3k4me3/k562_2_h3k4me3_w.txt
# epic2 -t data/uniq_hits/k562_1_h3k27me3_uniq_hits.bam --genome hg38 > data/epic2/k562_1_h3k27me3/k562_1_h3k27me3_w.txt
# epic2 -t data/uniq_hits/k562_1_h3k27ac_uniq_hits.bam --genome hg38 > data/epic2/k562_1_h3k27ac/k562_1_h3k27ac_w.txt
# epic2 -t data/uniq_hits/k562_2_h3k27ac_uniq_hits.bam --genome hg38 > data/epic2/k562_2_h3k27ac/k562_2_h3k27ac_w.txt
# epic2 -t data/uniq_hits/k562_1_ctcf_uniq_hits.bam --genome hg38 > data/epic2/k562_1_ctcf/k562_1_ctcf_w.txt
# epic2 -t data/uniq_hits/k562_2_ctcf_uniq_hits.bam --genome hg38 > data/epic2/k562_2_ctcf/k562_2_ctcf_w.txt
cat data/epic2/k562_1_h3k4me1/k562_1_h3k4me1_peaks.txt data/epic2/k562_2_h3k4me1/k562_2_h3k4me1_peaks.txt > data/epic2/runningData/k562_h3k4me1w_peaks.xls
cat data/epic2/k562_1_h3k4me2/k562_1_h3k4me2_peaks.txt data/epic2/k562_2_h3k4me2/k562_2_h3k4me2_peaks.txt > data/epic2/runningData/k562_h3k4me2w_peaks.xls
cat data/epic2/k562_1_h3k4me3/k562_1_h3k4me3_peaks.txt data/epic2/k562_2_h3k4me3/k562_2_h3k4me3_peaks.txt > data/epic2/runningData/k562_h3k4me3w_peaks.xls
cat data/epic2/k562_1_h3k27ac/k562_1_h3k27ac_peaks.txt data/epic2/k562_2_h3k27ac/k562_2_h3k27ac_peaks.txt > data/epic2/runningData/k562_h3k27acw_peaks.xls
cat data/epic2/k562_1_ctcf/k562_1_ctcf_peaks.txt data/epic2/k562_2_ctcf/k562_2_ctcf_peaks.txt > data/epic2/runningData/k562_ctcfw_peaks.xls
