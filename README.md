# peakCalling
Practice of prevailing methods and record important progress

#note that the files in macs2 and macs3 generated bed files:
NAME_peaks.narrowPeak is BED6+4 format file which contains the peak locations together with peak summit, pvalue and qvalue. You can load it to UCSC genome browser. Definition of some specific columns are:

5th: integer score for display

7th: fold-change

8th: -log10pvalue

9th: -log10qvalue

10th: relative summit position to peak start

NAME_peaks.broadPeak is in BED6+3 format which is similar to narrowPeak file, except for missing the 10th column for annotating peak summits.
