#try ctcf
#convert to bigwig file
bamCoverage --bam data/uniq_hits/k562_1_ctcf_uniq_hits.bam -o data/lanceotron/k562_1_ctcf/1_ctcf.bw --extendReads -bs 1 --normalizeUsing RPKM
bamCoverage --bam data/uniq_hits/k562_1_igg_uniq_hits.bam -o data/lanceotron/k562_1_igg/1_igg.bw --extendReads -bs 1 --normalizeUsing RPKM
lanceotron callPeaksInput data/lanceotron/k562_1_ctcf/1_ctcf.bw -i data/lanceotron/k562_1_igg/1_igg.bw -f data/lanceotron/k562_1_ctcf/
lanceotron callPeaksInput data/lanceotron/k562_1_h3k4me3/1_h3k4me3.bw -i data/lanceotron/k562_1_igg/1_igg.bw -f data/lanceotron/k562_1_h3k4me3/

$ cat data/macs2/k562_1_h3k4me1/k562_1_h3k4me1.xls data/macs2/k562_2_h3k4me1/k562_2_h3k4me1.xls > data/macs2/k562_h3k4me1_peaks.xls
$ cat data/macs2/k562_1_h3k4me1/k562_1_h3k4me1.narrowPeak data/macs2/k562_2_h3k4me1/k562_2_h3k4me1.narrowPeak > data/macs2/k562_h3k4me1.narrowPeak
cat data/lanceotron/k562_1_h3k4me3/k562_1_h3k4me3.xls data/lanceotron/k562_2_h3k4me3/k562_2_h3k4me3.xls > data/lanceotron/k562_h3k4me3_peaks.xls
cat data/lanceotron/k562_1_h3k4me3/k562_1_h3k4me3.narrowPeak data/lanceotron/k562_2_h3k4me3/k562_2_h3k4me3.narrowPeak > data/lanceotron/k562_h3k4me3.narrowPeak

file_list=(
    "k562_2_h3k4me2"
    "k562_2_h3k4me1"
    "k562_2_h3k27ac"
    "k562_2_ctcf"
)

input_igg="data/lanceotron/k562_2_igg/k562_2_igg.bw"

for file_name in "${file_list[@]}"; do
    lanceotron callPeaksInput "data/lanceotron/${file_name}/${file_name}.bw" -i "${input_igg}" -f "data/lanceotron/${file_name}/"
done

#get the dependencies
pip install pandas
pip install matplotlib
pip install pybedtools
pip install seaborn

#install lanceOtron
pip install lanceotron

#get the data
wget -O data/newForChip/H3K4me3_control.bam "https://www.encodeproject.org/files/ENCFF381RWF/@@download/ENCFF381RWF.bam"
wget -O data/newForChip/H3K4me3.bam "https://www.encodeproject.org/files/ENCFF996ZSR/@@download/ENCFF996ZSR.bam"
wget -O data/newForChip/H3K27ac_control.bam "https://www.encodeproject.org/files/ENCFF247DSQ/@@download/ENCFF247DSQ.bam"
wget -O data/newForChip/H3K27ac.bam "https://www.encodeproject.org/files/ENCFF742SZS/@@download/ENCFF742SZS.bam"
wget -O data/newForChip/CTCF_control.bam "https://www.encodeproject.org/files/ENCFF376BTL/@@download/ENCFF376BTL.bam"
wget -O data/newForChip/CTCF.bam "https://www.encodeproject.org/files/ENCFF903NKV/@@download/ENCFF903NKV.bam"
wget -O data/newForChip/ATACseq.bam "https://www.encodeproject.org/files/ENCFF346MIJ/@@download/ENCFF346MIJ.bam"

#sort the data
samtools sort -o data/newForChip/H3K4me3_control_sorted.bam data/newForChip/H3K4me3_control.bam
samtools sort -o data/newForChip/H3K4me3_sorted.bam data/newForChip/H3K4me3.bam
samtools sort -o data/newForChip/H3K27ac_control_sorted.bam data/newForChip/H3K27ac_control.bam
samtools sort -o data/newForChip/H3K27ac_sorted.bam data/newForChip/H3K27ac.bam
samtools sort -o data/newForChip/CTCF_control_sorted.bam data/newForChip/CTCF_control.bam
samtools sort -o data/newForChip/CTCF_sorted.bam data/newForChip/CTCF.bam
samtools sort -o data/newForChip/ATACseq_sorted.bam data/newForChip/ATACseq.bam

#build index
samtools index data/newForChip/H3K4me3_control_sorted.bam
samtools index data/newForChip/H3K4me3_sorted.bam


#create bigwig file for input
bamCoverage --bam data/newForChip/H3K4me3_control_sorted.bam -o data/newForChip/H3K4me3_control.bw --extendReads -bs 1 --normalizeUsing RPKM
bamCoverage --bam data/newForChip/H3K4me3_sorted.bam -o data/newForChip/H3K4me3.bw --extendReads -bs 1 --normalizeUsing RPKM
bamCoverage --bam data/newForChip/H3K27ac_control_sorted.bam -o data/newForChip/H3K27ac_control.bw --extendReads -bs 1 --normalizeUsing RPKM
bamCoverage --bam data/newForChip/H3K27ac_sorted.bam -o data/newForChip/H3K27ac.bw --extendReads -bs 1 --normalizeUsing RPKM
bamCoverage --bam data/newForChip/CTCF_control_sorted.bam -o data/newForChip/CTCF_control.bw --extendReads -bs 1 --normalizeUsing RPKM
bamCoverage --bam data/newForChip/CTCF_sorted.bam -o data/newForChip/CTCF.bw --extendReads -bs 1 --normalizeUsing RPKM
bamCoverage --bam data/newForChip/ATACseq_sorted.bam -o data/newForChip/ATACseq.bw --extendReads -bs 1 --normalizeUsing RPKM

#run lanceotron peakcalling
lanceotron callPeaksInput data/newForChip/H3K4me3.bw -i data/newForChip/H3K4me3_control.bw -f data/newForChip/lanceotron/h3k4me3/
lanceotron callPeaksInput data/newForChip/H3K27ac.bw -i data/newForChip/H3K27ac_control.bw -f data/newForChip/lanceotron/h3k27ac/
lanceotron callPeaksInput data/newForChip/CTCF.bw -i data/newForChip/CTCF_control.bw -f data/newForChip/lanceotron/ctcf/
lanceotron callPeaks data/newForChip/ATACseq.bw -f data/newForChip/lanceotron/atac/
