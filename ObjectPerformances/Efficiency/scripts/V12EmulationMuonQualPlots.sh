#!/bin/bash

source scripts/Samples.sh


./Execute \
   --label "GMT TkMuon" \
   --file ${DYLLV12} \
   --numerator "GMTTkMuonIso_EtaPT2to5_000000" \
   --denominator "auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 2-5 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_001.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIso_EtaPT15_000000","GMTTkMuonIso_EtaPT15_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_002.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIsoBEta_PT_000000","GMTTkMuonIsoBEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_003.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIsoOEta_PT_000000","GMTTkMuonIsoOEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (overlap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_004.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIsoEEta_PT_000000","GMTTkMuonIsoEEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_005.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIsoBEta_PT_002000","GMTTkMuonIsoBEta_PT_002000" \
   --denominator "GMTMuonQualIsoBEta_PT_000000","GMTTkMuonIsoBEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (barrel, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_006.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIsoOEta_PT_002000","GMTTkMuonIsoOEta_PT_002000" \
   --denominator "GMTMuonQualIsoOEta_PT_000000","GMTTkMuonIsoOEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (overlap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_007.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIsoEEta_PT_002000","GMTTkMuonIsoEEta_PT_002000" \
   --denominator "GMTMuonQualIsoEEta_PT_000000","GMTTkMuonIsoEEta_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (endcap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_008.pdf
./Execute \
   --label "GMT Muon","GMT TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonQualIso_PT_000000","GMTTkMuonIso_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_EmulationMuonQual_009.pdf

