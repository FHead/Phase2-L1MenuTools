#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "SeededConePuppiJet","SeededConePuppiJet (PT > 20)" \
   --file ${TTbarV14},${TTbarV14} \
   --numerator "SeededConePuppiJetWideLDR_DR_000000","SeededConePuppiJetWideLDR_DRPT20_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V14LDR_001.pdf

