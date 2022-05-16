#!/bin/bash

source scripts/Samples.sh


./Execute \
   --label "TkJet","TkJet (PT > 20)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerJetLDR_DR_000000","TrackerJetLDR_DRPT20_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12p1LDR_001.pdf
./Execute \
   --label "CaloJet","CaloJet (PT > 20)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "CaloJetWideLDR_DR_000000","CaloJetWideLDR_DRPT20_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12p1LDR_002.pdf
./Execute \
   --label "TkJet","TkJet (PT > 20)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerJetChargedLDR_DR_000000","TrackerJetChargedLDR_DRPT20_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12p1LDR_003.pdf

