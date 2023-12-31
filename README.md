# peakCalling
Practice of prevailing methods and record important progress
the used data are from ENCODE and SRA datasets.
ENCODE Cut&Tag data are from article [GoPeaks: histone modification peak calling for CUT&Tag](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-022-02707-w)
SRA ChIP data are from article [LanceOtron: a deep learning peak caller for genome sequencing experiments](https://academic.oup.com/bioinformatics/article/38/18/4255/6648462)

## First step: to download all the data from SRA dataset.

>use the code in dataPreparation.sh to download all the data.

## Second step: to install all the peak callers and packages

### For MACS2&3


>sudo apt install macs
>pip install MACS3


example use:
> macs2 callpeak -t data/uniq_hits/k562_2_h3k27ac_uniq_hits.bam -c data/uniq_hits/k562_2_igg_uniq_hits.bam -f BAM -g hs -n data/macs2/k562_2_h3k27ac > data/logs/macs2_k562_2_h3k27ac.log 2>&1

### For EPIC2


>pip install cython
>pip install pyranges
>conda install -c bioconda epic2


> [reference tutorail](https://github.com/biocore-ntnu/epic2)

example use:
>epic2 -t data/uniq_hits/k562_2_h3k27ac_uniq_hits.bam -c data/uniq_hits/k562_2_igg_uniq_hits.bam --genome hg38 --bin-size 200 --output data/epic2/k562_2_h3k27ac > data/logs/epic2_k562_2_h3k27ac.log 2>&1

### For Homer


>conda install -c bioconda homer

example use:
>makeTagDirectory data/homer data/uniq_hits/h1d1_1_sox2_uniq_hits.bam
>makeTagDirectory data/homer/h1d1_1_igg data/uniq_hits/h1d1_1_igg_uniq_hits.bam
>findPeaks data/homer/h1d1_1_sox2 -o data/homer/h1d1_1_sox2/peaks.txt -i data/homer/h1d1_1_igg -style factor

### For SEACR

> [online website](https://seacr.fredhutch.org/)


>sudo apt install bedtools
>sudo apt-get install r-base


example use:
>bash SEACR_1.3.sh Testfiles/CTCF_DE_chr1_100Mb.bedgraph.txt Testfiles/IgG_DE_chr1_100Mb.bedgraph.txt norm stringent Testfiles/CTCF_DE_chr1_100Mb


### For LanceOtron


>pip install pandas
>pip install matplotlib
>pip install pybedtools
>pip install seaborn
>pip install lanceotron


example use:
>lanceotron callPeaksInput data/H3K4me3.bw -i data/H3K4me3_control.bw -f data/lanceotron/h3k4me3/


## Third step: to run peak callers for data.

run code in codeForData

## Fourth step: get the model evaluation.

first run the barplotPrep in plottingCode folder to get the xls file for each histone mark
then run methodsCompare.R in plottingCode folder

## Fifth step: draw ROC/AUC curve.

run snakemake file for each histone mark.
for epic2 generated files, remember to first run the *epic2Preprocess.R* in plottingCodes folder

example:
>snakemake --cores 1 --snakefile rules/evaluate_models_broad.py data/evaluate_models/macs3_k562_h3k4me2_broad.txt

The snakemake files are in folder rules.

Then run ROCnAUC_plot.py in folder plottingCode to get the plot 
