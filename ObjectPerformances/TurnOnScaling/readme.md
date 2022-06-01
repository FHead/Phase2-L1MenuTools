
# Scalings

The code here derives scalings!

It takes input from the V*Processing folders.



# Compile the code

Type `make Prepare` to do necessary preparations,
and do `make Execute ExecutePlot Export` to compile the executables.

The executables are
- `Execute`: does the fitting
- `ExecutePlot`: makes the pretty scaling plots
- `Export`: makes the text files for the rate code



# Input/output to the executables

## `Execute`

Arguments:
- `input`: string, input root file name
- `output`: string, output pdf file name for quality control plots
- `curves`: string, DHFile name to store results
- `reference`: double, location of the turn on to use
- `prefix`: string, tag to add when storing the results
- `Do*`: boolean, switch on/off fitting to different objects

See the code to find out what are the `Do*` options and what they actually do.


TODO Add some short description to the code here, at least the `ProcessFile` function


## `ExecutePlot`

Arguments:
- `DHFiles`: list of strings, which DHFile to take from
- `States`: list of strings, what object to take from the DHFiles for each curve
- `Labels`: list of strings, label to use for each curve
- `OutputBase`: string, output file filename base (will append ".pdf", ".C", ... from this)
- `DoWatermark`: boolean, whether to add watermark or not.  Recommend to always keep this on
- `Markers`: list of integers, markers to use for each curve
- `MaxX`: canvas max x
- `MaxY`: canvas max y
- `Threshold`: string, what to put on the y axis
- `Suffix`: string, what to put on the y axis
- `Colors`: list of integers, color to use for the curves.  Positive for root colors, negative for default colors, goes from -1 to -6
- `Texts`: list of triplets, comma separated.  Each triplet is of form `X,Y,Text`.  For example `0.2,0.4,"CMS",0.2,0.35,"Preliminary"` puts CMS at location (0.2, 0.4) and "Preliminary" at location (0.2, 0.35).


## `Export`

No arguments!  We modify the code directly to export relevant scalings.

TODO add description on what is what in the code



