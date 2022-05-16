#!/bin/bash

source scripts/Samples.sh


./Execute \
   --label "Phase1PuppiHT (200 GeV)","Phase1PuppiHT (350 GeV)" \
   --file ${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiHT_PT_020000","Phase1PuppiHT_PT_035000" \
   --denominator "Phase1PuppiHT_PT_000000","Phase1PuppiHT_PT_000000" \
   --title ";Gen. HT (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HTMHTMET_001.pdf
./Execute \
   --label "Phase1PuppiMHT (70 GeV)","Phase1PuppiMHT (150 GeV)" \
   --file ${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiMHT15_PT_007000","Phase1PuppiMHT15_PT_015000" \
   --denominator "Phase1PuppiMHT15_PT_000000","Phase1PuppiMHT15_PT_000000" \
   --title ";Gen. MHT (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HTMHTMET_002.pdf
./Execute \
   --label "Phase1PuppiMHT (70 GeV)","Phase1PuppiMHT (150 GeV)" \
   --file ${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiMHT30_PT_007000","Phase1PuppiMHT30_PT_015000" \
   --denominator "Phase1PuppiMHT30_PT_000000","Phase1PuppiMHT30_PT_000000" \
   --title ";Gen. MHT(30) (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HTMHTMET_002b.pdf
./Execute \
   --label "PuppiMET (70 GeV)","PuppiMET (150 GeV)" \
   --file ${TTbarV12},${TTbarV12} \
   --numerator "PuppiMET_PT_007000","PuppiMET_PT_015000" \
   --denominator "PuppiMET_PT_000000","PuppiMET_PT_000000" \
   --title ";Gen. MET (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HTMHTMET_003.pdf

