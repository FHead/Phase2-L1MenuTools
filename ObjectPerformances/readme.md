

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


## Running the code: example

First compile everything!  Then to reproduce V22 plots...

### V22Processing

Go in to the processing directory and do 

```
make RunDYLL
```

to process the DYLL sample.  There are also TTbar, VBFHTauTau, HGG, HHBBTauTau.  See `makefile` to see what is there.

Once done, move the output files to some common location following the convention.  So far I am putting them at 
`/eos/user/c/chenyi/BatchOutput/PhysicsWorkspace/L1TriggerUpgrade2018/TriggerTurnOn/21732_BasicTurnOnV10///`, it should be soft linked to the folder as `Outputs/`.  For V22 since I have run this step already, you should find the root files there and we can just verify that your files look the same as what I got.

Then go to `Efficiency` folder and run one of the many scripts for V22.  For example

`bash scripts/V22JetHTMETMHTPlots.sh`

The outputs will be written to the `Plots/` folder.  There are also many others, feel free to run them as well.

Finally go to the `TurnOnScaling` folder and calculate the scalings.  First do

```
make RunV22
```

to fit everything.  Then check the fits in the `Fits/` folder to make sure things look reasonable.  Once happy, make the beautiful scaling plots

```
bash scripts/V22JetHTMHTMETPlots.sh
```

There are also some others in the scripts folder.  The scaling text file can be exported as 

```
make RunExport
```

It will be stored in the `Txt/` folder.






