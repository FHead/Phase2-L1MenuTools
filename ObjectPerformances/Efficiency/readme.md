
# Efficiency

The code here makes pretty efficiency/isolation/DR/... plots

It takes input from the V*Processing folders.



# Compile the code

Type `make Prepare` to do necessary preparations,
and do `make Execute` to compile the executable.


# Input/output to the `Execute` executable

Arguments:
- `label`: comma-separated-list of strings, labels to use for each curve in the legend.  Set to "NONE" to skip given curve in legend.
- `file`: comma-separated-list of strings, name of files to take each pair of histograms from
- `numerator`: comma-separated-list of strings, histograms to be used as numerator
- `denominator`: comma-separated-list of strings, histograms to be used as denominator
- `output`: string, output file name
- `title`: string, title/labels of the histogram.  Use "Title;X;Y"
- `xmin`: double, world x min
- `xmax`: double, world x max
- `ymin`: double, world y min
- `ymax`: double, world y max
- `color`: list of integers, colors to use for each curve.  Positive = root colors, negative = default colors.  Goes from -1 to -7.
- `marker`: list of integers, markers to use for each one
- `line`: list of doubles, line widths for each of them 
- `text`: list of triplets, comma separated.  Each triplet is of form `X,Y,Text`.  For example `0.2,0.4,"CMS",0.2,0.35,"Preliminary"` puts CMS at location (0.2, 0.4) and "Preliminary" at location (0.2, 0.35).
- `grid`: boolean, whether we want grid lines or not
- `logy`: boolean, whether we want log y or not
- `legend`: boolean, whether to add legend or not 
- `legendx`: location of lower-left corner of legend
- `legendy`: location of lower-left corner of legend
- `rebin`: integer.  Rebin histograms with this.  Useful for low stat curves.
- `watermark`: whether to add watermark in the plot.  Recommend to always leave this on so that we can tell what is what more easily later on in talks.
- `Davignon`: boolean, whether to do Davignon style setting


In the denominator there are special keywords one can use.
- `auto`: the code will attempt to find the non-gen-matched histogram as denominator
- `cumulative`: ignore denominator, and instead plot the cumulative distribution of the numerator histogram.  Useful for things like isolation working point
- `simple`: just plot whatever is in the numerator and don't divide.


# Running stuff

All the scripts are in the `scripts/` folder.  You can see various scripts making different plots.  The most important one that all of the use is the Samples.sh script.  It specifies which input root file to use.



## Running LDR and isolation

We make the plots and read the numbers by eye!  See V22LDRPlots.sh and V22IsoPlots.sh for more concrete examples




# Code

Add short description of what each code does



