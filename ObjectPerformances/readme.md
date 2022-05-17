

# Object performance: efficiency and turn on / scaling


## Background information

Talk about definition of efficiency and turn on here

Talk about how we define scaling here


## Code structure

There are a few folders in here.  Short description of what they do:
- CommonCode: contains common header files used by most of the code
- V22Processing: contains code to process the L1 ntuples.  (ie., from L1 menu ntuple to histograms).  The idea is that whenever there is a new version of the tree, we will make a new folder with specifics of the new version.  This is primarily driven by the way the ntuple is filled.  We first make object containing all information and then put the object in the tree.  It is not safe to just get the branches inside the object directly without using the proper header file that declares the object in full.  The output histograms then serve as the input to the other two steps.
- Efficiency: this makes all the efficiency and turn on plots from the output from the previous step
- TurnOnScaling: this process the turn on curves and extract the scalings we need to serve as input to the rate script.

For more detailed descriptions, check the readme file in each folder.


## Compiling the code

First we need to set up root and fastjet.  If you do `root-config` and `fastjet-config` and both are found, you are ready to go.

Then we set an environment variable

```
export ProjectBase=`pwd`
```

(or `csh` equivalent)

Then...simply type

```
make
```

to compile everything.

One can clean things up by doing

```
make CleanAll
```


## Running the code

Talk about how to run the code





