#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "TkElectron (Barrel)","TkElectron (Endcap)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "TkElectronIso_TkIsoPT10Eta15_000000","TkElectronIso_TkIsoPT10EtaLarge_000000" \
   --denominator "cumulative","cumulative" \
   --title ";Isolation;Efficiency" --xmin 0 --xmax 0.5 --ymin 0.85 --ymax 1.00 --grid true \
   --Davignon ${Davignon} --legendx 0.35 --legendy 0.20 --line 0.982 --output Plots/V12Iso_001.pdf
./Execute \
   --label "TkPhoton (Barrel)","TkPhoton (Endcap)" \
   --file ${HGGV12},${HGGV12} \
   --numerator "TkPhotonTrackIDIso_TkIsoPT10Eta15_000000","TkPhotonTrackIDIso_TkIsoPT10EtaLarge_000000" \
   --denominator "cumulative","cumulative" \
   --title ";Isolation;Efficiency" --xmin 0 --xmax 0.5 --ymin 0.80 --ymax 1.00 --grid true \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.15 --line 0.946 --output Plots/V12Iso_002.pdf
./Execute \
   --label "TkPhoton (Barrel)","TkPhoton (Endcap)" \
   --file ${HGGV12},${HGGV12} \
   --numerator "TkPhotonPVTrackIDIso_TkIsoPT10Eta15_000000","TkPhotonPVTrackIDIso_TkIsoPT10EtaLarge_000000" \
   --denominator "cumulative","cumulative" \
   --title ";PVIsolation;Efficiency" --xmin 0 --xmax 0.10 --ymin 0.80 --ymax 1.00 --grid true \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.15 --line 0.946 --output Plots/V12Iso_003.pdf
./Execute \
   --label "TkPhoton (PT > 10)","TkPhoton (PT > 20)","TkPhoton (PT > 40)" \
   --file ${HGGV12},${HGGV12},${HGGV12} \
   --numerator "TkPhotonTrackIDIso_TkIsoPT10_000000","TkPhotonTrackIDIso_TkIsoPT20_000000","TkPhotonTrackIDIso_TkIsoPT40_000000" \
   --denominator "simple","simple","simple" \
   --title ";Isolation;a.u." --xmin 0 --xmax 0.35 --ymin 0.05 --ymax 150 --grid true \
   --Davignon ${Davignon} --legendx 0.35 --legendy 0.65 --line 0.00 --logy true --output Plots/V12Iso_004.pdf

