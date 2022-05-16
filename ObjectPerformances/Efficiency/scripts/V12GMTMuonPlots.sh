#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "GMTMuon (p_{T} = 2-5 GeV)","GMTMuon (p_{T} = 3-15 GeV)","GMTMuon (p_{T} > 15 GeV)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIso_EtaPT2to5_000000","GMTMuonIso_EtaPT3to15_000000","GMTMuonIso_EtaPT15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_GMTMuon_001.pdf
./Execute \
   --label "GMTMuon (barrel)","GMTMuon (overlap)","GMTMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoBEta_PT_000000","GMTMuonIsoOEta_PT_000000","GMTMuonIsoEEta_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_GMTMuon_002.pdf
./Execute \
   --label "GMTMuon (barrel)","GMTMuon (overlap)","GMTMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoBEta_PT_000500","GMTMuonIsoOEta_PT_000500","GMTMuonIsoEEta_PT_000500" \
   --denominator "GMTMuonIsoBEta_PT_000000","GMTMuonIsoOEta_PT_000000","GMTMuonIsoEEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 5 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_GMTMuon_003.pdf
./Execute \
   --label "GMTMuon (barrel)","GMTMuon (overlap)","GMTMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoBEta_PT_002000","GMTMuonIsoOEta_PT_002000","GMTMuonIsoEEta_PT_002000" \
   --denominator "GMTMuonIsoBEta_PT_000000","GMTMuonIsoOEta_PT_000000","GMTMuonIsoEEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_GMTMuon_004.pdf

