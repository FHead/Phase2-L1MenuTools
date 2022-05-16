#!/bin/bash

source scripts/Samples.sh


./Execute \
   --label "GMT TkMuon" \
   --file ${DYLLV12} \
   --numerator "GMTTkMuonIso_EtaPT2to5_000000" \
   --denominator "auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 2-5 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_001.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIso_EtaPT15_000000","GMTTkMuonIso_EtaPT15_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_002.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoBEta_PT_000000","GMTTkMuonIsoBEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_003.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoOEta_PT_000000","GMTTkMuonIsoOEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (overlap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_004.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoEEta_PT_000000","GMTTkMuonIsoEEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_005.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoBEta_PT_002000","GMTTkMuonIsoBEta_PT_002000" \
   --denominator "GMTMuonIsoBEta_PT_000000","GMTTkMuonIsoBEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (barrel, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_006.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoOEta_PT_002000","GMTTkMuonIsoOEta_PT_002000" \
   --denominator "GMTMuonIsoOEta_PT_000000","GMTTkMuonIsoOEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (overlap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_007.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIsoEEta_PT_002000","GMTTkMuonIsoEEta_PT_002000" \
   --denominator "GMTMuonIsoEEta_PT_000000","GMTTkMuonIsoEEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (endcap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_008.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonIso_PT_000000","GMTTkMuonIso_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuon_009.pdf

