
# V22 Processing

The code here is designed to process tree version V22 of the L1 menu ntuple.

It will go through the files, process what we want, and store the histograms in a root file for further usage.


# Compile the code

Type `make Prepare` to do necessary preparations,
and do `make Execute` to compile the executable.


# Input/output to the `Execute` executable

Arguments:
- `--input`: comma-separated list of input file names (ie., L1 menu ntuple)
- `--output`: string, output root file filename
- `--config`: string, name of the config file
- `--UseStoredGen`: boolean, whether to use the gen jets/HT/... that is stored in the ntuple, or recluster
- `--LDROnly`: boolean, whether to process only the lines with "LDR" in the name
- `--RejectLeptonicW`: boolean, whether to reject events containing a leptonically-decayed W
- `--tree`: string, name of the L1 phase 2 tree.  Usually fine to leave as default.


# Config file

Some examples are in the `config/` folder.  In the config file, each line is one record (set of histograms) that we want to process.

The columns are
- Input Object: What is the input object we are using
- Directory: Name of the directory in the output file for this set of histograms
- Reference: Reference object (ie., gen object to use for this line)
- |Eta| Min: Eta range
- |Eta| Max: Eta range
- L1 PT Min: Ignore L1 object with PT smaller than this
- Reference Iso: Apply isolation on the reference object
- Quality: Quality selection on the L1 object
- DR Cut: Max DR the matching of L1 object and gen object
- Type / Region: L1 object type or region
- IsolationBB: Isolation to apply on the L1 object for barrel
- IsolationEC: same as above, but for endcap
- Histogram: Base name of the output histograms.  So far set to the same as directory name, this field is more for potential future expansion
- Binning for PT: triplet (N, Min, Max)
- Binning for eta: triplet (N, Min, Max)
- Binning for iso: triplet (N, Min, Max)
- Binning for dxy: triplet (N, Min, Max)
- Thresholds: Threshold preset on L1 obejct to run over (this correspond to the superset of the L1 turn on threshold we want to have in the end)

You can see the full history of config files [here](https://docs.google.com/spreadsheets/d/14CVVhA6ITSTmv0x0Z2BRJ7cLgMKabi6TWsDXbyffGBg/edit#gid=462890739)

Export sheet as tab-separated file to use as input to the code.


# Typical run sequence 

We usually run this multiple times, each time updating the config in various places.

- First run through we use the LDR option, where we run the lines with large DR.  This is to open up matching window and allow us to choose a good matching DR for given option.  Details about this is in the Efficiency folder.  Once happy, we update the DR field in the config files
- Then for EG objects, we run again (this time without the LDR option).  This is to derive the isolation working points.  Again details is in the Efficiency folder.  Once happy, we update the configs again.
- Then we run everything!  This will be the final run-through of the code in this folder.

Once we run through the last step, we store the root files in some shared place with proper naming convention.  So far the convention is `SAMPLE_VERSION_CONFIGVERSION.root`.  Note once we put files there we don't touch the config anymore, otherwise things are not traceable and can lead to chaos.

All the recent results are stored on eos here /eos/user/c/chenyi/BatchOutput/PhysicsWorkspace/L1TriggerUpgrade2018/TriggerTurnOn/21732_BasicTurnOnV10/




# Making a new version

Describe what to do here


# Code

Add short description of what each code does



