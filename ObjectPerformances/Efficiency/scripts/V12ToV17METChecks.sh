#!/bin/bash

source scripts/Samples.sh


#############
# MET Plots #
#############

T1=PuppiMET_PT_007000
T2=PuppiMET_PT_000000
./Execute \
   --label "Puppi MET V12.1","Puppi MET V14","Puppi MET V14.1","Puppi MET V15","Puppi MET V16","Puppi MET V17" \
   --file $TTbarV12p1,$TTbarV14,$TTbarV14p1,$TTbarV15,$TTbarV16,$TTbarV17 \
   --numerator ${T1},${T1},${T1},${T1},${T1},${T1} \
   --denominator ${T2},${T2},${T2},${T2},${T2},${T2} \
   --title ";Gen. MET (GeV);Trigger efficiency (70 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon $Davignon --output Plots/V12ToV17_MET_001.pdf

T1=TrackerMET_PT_007000
T2=TrackerMET_PT_000000
./Execute \
   --label "Tracker MET V12.1","Tracker MET V14","Tracker MET V14.1","Tracker MET V15","Tracker MET V16","Tracker MET V17" \
   --file $TTbarV12p1,$TTbarV14,$TTbarV14p1,$TTbarV15,$TTbarV16,$TTbarV17 \
   --numerator ${T1},${T1},${T1},${T1},${T1},${T1} \
   --denominator ${T2},${T2},${T2},${T2},${T2},${T2} \
   --title ";Gen. MET (GeV);Trigger efficiency (70 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon $Davignon --output Plots/V12ToV17_MET_002.pdf

T1=PuppiMET_PT_015000
T2=PuppiMET_PT_000000
./Execute \
   --label "Puppi MET V12.1","Puppi MET V14","Puppi MET V14.1","Puppi MET V15","Puppi MET V16","Puppi MET V17" \
   --file $TTbarV12p1,$TTbarV14,$TTbarV14p1,$TTbarV15,$TTbarV16,$TTbarV17 \
   --numerator ${T1},${T1},${T1},${T1},${T1},${T1} \
   --denominator ${T2},${T2},${T2},${T2},${T2},${T2} \
   --title ";Gen. MET (GeV);Trigger efficiency (150 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon $Davignon --output Plots/V12ToV17_MET_003.pdf

T1=TrackerMET_PT_015000
T2=TrackerMET_PT_000000
./Execute \
   --label "Tracker MET V12.1","Tracker MET V14","Tracker MET V14.1","Tracker MET V15","Tracker MET V16","Tracker MET V17" \
   --file $TTbarV12p1,$TTbarV14,$TTbarV14p1,$TTbarV15,$TTbarV16,$TTbarV17 \
   --numerator ${T1},${T1},${T1},${T1},${T1},${T1} \
   --denominator ${T2},${T2},${T2},${T2},${T2},${T2} \
   --title ";Gen. MET (GeV);Trigger efficiency (150 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon $Davignon --output Plots/V12ToV17_MET_004.pdf



