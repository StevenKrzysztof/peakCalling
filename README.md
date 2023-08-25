# peakCalling
Practice of prevailing methods and record important progress

## the first step is to download all the data from SRA dataset.

>use the code in dataPreparation.sh to download all the data.

#the second step is to install all the peak callers and packages

#note that the files in macs2 and macs3 generated bed files:
NAME_peaks.narrowPeak is BED6+4 format file which contains the peak locations together with peak summit, pvalue and qvalue. You can load it to UCSC genome browser. Definition of some specific columns are:

5th: integer score for display

7th: fold-change

8th: -log10pvalue

9th: -log10qvalue

10th: relative summit position to peak start

NAME_peaks.broadPeak is in BED6+3 format which is similar to narrowPeak file, except for missing the 10th column for annotating peak summits.

The parameters in macs2 and macs3
--version
              show program's version number and exit

       -h, --help
              show this help message and exit.

       -t TFILE, --treatment=TFILE
              ChIP-seq treatment file. REQUIRED.

       -c CFILE, --control=CFILE
              Control file.

       -n NAME, --name=NAME
              Experiment name, which will be used to generate output file names. DEFAULT: "NA"

       -f FORMAT, --format=FORMAT
              Format  of  tag  file, "AUTO", "BED" or "ELAND" or "ELANDMULTI" or "ELANDEXPORT" or
              "SAM" or "BAM" or "BOWTIE". The default AUTO option  will  let  MACS  decide  which
              format  the  file  is.  Please  check the definition in 00README file if you choose
              ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE. DEFAULT: "AUTO"

       -g GSIZE, --gsize=GSIZE
              Effective genome size. It can be 1.0e+9 or 1000000000, or shortcuts:'hs' for  human
              (2.7e9),  'mm'  for mouse (1.87e9), 'ce' for C. elegans (9e7) and 'dm' for fruitfly
              (1.2e8), Default:hs

       -s TSIZE, --tsize=TSIZE
              Tag size. This will overide the auto detected tag size. DEFAULT: Not set

       --bw=BW
              Band width. This value is only used while building the shifting model. DEFAULT: 300

       -q QVALUE, --qvalue=QVALUE
              Minimum FDR (q-value) cutoff for peak detection.  DEFAULT: 0.01

       -p PVALUE, --pvalue=PVALUE
              Pvalue cutoff for peak detection. When set (e.g. -q 0.05 or -q 1e-5), qvalue cutoff
              will be ignored.  Default is not set.

       -m MFOLD, --mfold=MFOLD
              Select  the  regions  within MFOLD range of highconfidence enrichment ratio against
              background to build model. The regions must be lower than upper limit,  and  higher
              than the lower limit. DEFAULT:10,30

       --nolambda
              If  True,  MACS  will  use  fixed  background lambda as local lambda for every peak
              region. Normally, MACS calculates a dynamic local lambda to reflect the local  bias
              due to potential chromatin structure.

       --slocal=SMALLLOCAL
              The  small  nearby region in basepairs to calculate dynamic lambda. This is used to
              capture the bias near the peak summit region. Invalid if there is no control  data.
              If  you  set  this to 0, MACS will skip slocal lambda calculation. *Note* that MACS
              will always perform a d-size local lambda calculation. The final local bias  should
              be  the  maximum  of  the  lambda  value  from  d, slocal, and llocal size windows.
              DEFAULT: 1000

       --llocal=LARGELOCAL
              The large nearby region in basepairs to calculate dynamic lambda. This is  used  to
              capture  the  surround  bias.  If  you  set this to 0, MACS will skip llocal lambda
              calculation.  *Note*  that  MACS  will  always  perform  a  d-size   local   lambda
              calculation. The final local bias should be the maximum of the lambda value from d,
              slocal, and llocal size windows. DEFAULT: 10000.

       --auto-bimodal
              Whether turn on the auto pair model process. If set,  when  MACS  failed  to  build
              paired  model,  it  will  use  the nomodel settings, the '--shiftsize' parameter to
              shift and extend each tags. Not to use this automate fixation is a default behavior
              now. DEFAULT: False

       --nomodel
              Whether  or not to build the shifting model. If True, MACS will not build model. by
              default it means shifting size = 100, try to set shiftsize to change  it.  DEFAULT:
              False

       --shiftsize=SHIFTSIZE
              The  arbitrary  shift size in bp. When nomodel is true, MACS will use this value as
              1/2 of fragment size.  DEFAULT: 100

       --keep-dup=KEEPDUPLICATES
              It controls the MACS behavior towards duplicate tags at the exact same location  --
              the  same  coordination  and  the same strand. The default 'auto' option makes MACS
              calculate the maximum tags at the exact same location based on binomal distribution
              using  1e-5 as pvalue cutoff; and the 'all' option keeps every tags.  If an integer
              is given, at most this number of tags will be kept at the same  location.  Default:
              auto

       --to-large
              When  set,  scale  the small sample up to the bigger sample. By default, the bigger
              dataset will be scaled down towards the smaller dataset, which will lead to smaller
              p/qvalues and more specific results. Keep in mind that scaling down will bring down
              background noise more. DEFAULT: False

       --down-sample
              When set, random sampling method will scale down the  bigger  sample.  By  default,
              MACS  uses linear scaling.  Warning: This option will make your result unstable and
              irreproducible since each time, random reads would be  selected.  Consider  to  use
              'randsample' script instead. DEFAULT: False

       --shift-control
              When  set, control tags will be shifted just as ChIP tags according to their strand
              before the extension of d, slocal and llocal. By default, control tags are extended
              centered  at their current positions regardless of strand. You may consider to turn
              this option on while comparing two ChIP datasets of  different  condition  but  the
              same factor. DEFAULT: False

       --half-ext
              When  set,  MACS extends 1/2 d size for each fragment centered at its middle point.
              DEFAULT: False

       -B, --bdg
              Whether or not to save extended fragment pileup, local lambda and score  tracks  at
              every bp into a bedGraph file. DEFAULT: False

       --broad
              If  set,  MACS  will  try  to  call  broad  peaks by linking nearby highly enriched
              regions.  The  linking   region   is   controlled   by   another   cutoff   through
              --linking-cutoff.   The  maximum  linking  region length is 4 times of d from MACS.
              DEFAULT: False

       --broad-cutoff=BROADCUTOFF
              Cutoff for broad region. This option is not available unless --broad is set. If  -p
              is set, this is a pvalue cutoff, otherwise, it's a qvalue cutoff. DEFAULT: 0.1

       --verbose=VERBOSE
              Set  verbose  level.  0:  only  show  critical  message, 1: show additional warning
              message, 2: show process information, 3: show debug messages. DEFAULT:2
