#!/bin/bash

source scripts/Samples.sh


############
# HT Plots #
############

T1=PT_020000
T2=PT_000000
./Execute \
   --label "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarHadronicV17,$TTbarHadronicV17,$TTbarHadronicV17 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (200 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V17HadronicTTbar_HT_001.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarHadronicV17,$TTbarHadronicV17,$TTbarHadronicV17 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V17HadronicTTbar_HT_002.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarHadronicV17,$TTbarHadronicV17,$TTbarHadronicV17 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V17HadronicTTbar_HT_002Wide.pdf

####################
# HT Plots No Calo #
####################

T1=PT_020000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarHadronicV17,$TTbarHadronicV17 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (200 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17HadronicTTbar_HTNoCalo_001.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarHadronicV17,$TTbarHadronicV17 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17HadronicTTbar_HTNoCalo_002.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarHadronicV17,$TTbarHadronicV17 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17HadronicTTbar_HTNoCalo_002Wide.pdf









