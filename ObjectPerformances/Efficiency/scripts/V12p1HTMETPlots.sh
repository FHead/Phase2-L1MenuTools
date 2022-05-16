#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "TrackerHT (200 GeV)","TrackerHT (350 GeV)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerHT_PT_020000","TrackerHT_PT_035000" \
   --denominator "TrackerHT_PT_000000","TrackerHT_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_HTMET_001.pdf
./Execute \
   --label "TrackerHT (70 GeV)","TrackerHT (150 GeV)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerHT_PT_007000","TrackerHT_PT_015000" \
   --denominator "TrackerHT_PT_000000","TrackerHT_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_HTMET_002.pdf
./Execute \
   --label "TrackerMET (70 GeV)","TrackerMET (150 GeV)","TrackerMET (300 GeV)","TrackerMET (500 GeV)","TrackerMET (650 GeV)" \
   --file ${TTbarV12p1MET},${TTbarV12p1MET},${TTbarV12p1MET},${TTbarV12p1MET},${TTbarV12p1MET} \
   --numerator "TrackerMET_PT_007000","TrackerMET_PT_015000","TrackerMET_PT_030000","TrackerMET_PT_050000","TrackerMET_PT_065000" \
   --denominator "TrackerMET_PT_000000","TrackerMET_PT_000000","TrackerMET_PT_000000","TrackerMET_PT_000000","TrackerMET_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --legendx 0.45 --legendy 0.15 \
   --Davignon ${Davignon} --output Plots/V12p1_HTMET_003.pdf
./Execute \
   --label "TrackerMHT (70 GeV)","TrackerMHT (150 GeV)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerMHT_PT_007000","TrackerMHT_PT_015000" \
   --denominator "TrackerMHT_PT_000000","TrackerMHT_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_HTMET_004.pdf

