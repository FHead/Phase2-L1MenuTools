#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "GMTTkMuon (p_{T} = 2-5 GeV)","GMTTkMuon (p_{T} = 3-15 GeV)","GMTTkMuon (p_{T} > 15 GeV)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTTkMuonIso_EtaPT2to5_000000","GMTTkMuonIso_EtaPT3to15_000000","GMTTkMuonIso_EtaPT15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_GMTTkMuon_001.pdf
./Execute \
   --label "GMTTkMuon (barrel)","GMTTkMuon (overlap)","GMTTkMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTTkMuonIsoBEta_PT_000000","GMTTkMuonIsoOEta_PT_000000","GMTTkMuonIsoEEta_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_GMTTkMuon_002.pdf
./Execute \
   --label "GMTTkMuon (barrel)","GMTTkMuon (overlap)","GMTTkMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTTkMuonIsoBEta_PT_000500","GMTTkMuonIsoOEta_PT_000500","GMTTkMuonIsoEEta_PT_000500" \
   --denominator "GMTTkMuonIsoBEta_PT_000000","GMTTkMuonIsoOEta_PT_000000","GMTTkMuonIsoEEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 5 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_GMTTkMuon_003.pdf
./Execute \
   --label "GMTTkMuon (barrel)","GMTTkMuon (overlap)","GMTTkMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTTkMuonIsoBEta_PT_002000","GMTTkMuonIsoOEta_PT_002000","GMTTkMuonIsoEEta_PT_002000" \
   --denominator "GMTTkMuonIsoBEta_PT_000000","GMTTkMuonIsoOEta_PT_000000","GMTTkMuonIsoEEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_GMTTkMuon_004.pdf

