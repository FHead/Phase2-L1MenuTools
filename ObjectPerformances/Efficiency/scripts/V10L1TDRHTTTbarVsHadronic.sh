#!/bin/bash

source scripts/Samples.sh

#############
# HT plots #
#############

T1="PT_035000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiHT (full)","Tracker HT (full)","Histogrammed PuppiHT (had)","Tracker HT (had)" \
   --file $TTbarV10,$TTbarV10,$TTbarHadronicV10,$TTbarHadronicV10 \
   --numerator "PFPhase1HT_$T1","TrackerHT_$T1","PFPhase1HT_$T1","TrackerHT_$T1" \
   --denominator "PFPhase1HT_$T2","TrackerHT_$T2","PFPhase1HT_$T2","TrackerHT_$T2" \
   --title ";Gen. H_{T} (GeV);Trigger efficiency (L1 p_{T} > 350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4,-5 \
   --Davignon $Davignon --output Plots/V10RemakeJetHTTTbarComparison_001.pdf

T1="PT_000000"
./Execute \
   --label "GenHT (full)","GenHT (had)" \
   --file $TTbarV10,$TTbarHadronicV10 \
   --numerator "PFPhase1HT_$T1","PFPhase1HT_$T1" \
   --denominator "simple","simple" \
   --title ";Gen. H_{T} (GeV);a.u." --xmin 0 --xmax 750 --ymin 0.00 --ymax 0.005 --rebin 2 \
   --color -2,-4 \
   --Davignon $Davignon --output Plots/V10RemakeJetHTTTbarComparison_002.pdf



