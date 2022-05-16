#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "TkMuon" \
   --file ${DYLLV12} \
   --numerator "TkMuonQualIso_EtaPT2to5_000000" \
   --denominator "auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 2-5 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_001.pdf
./Execute \
   --label "STA Muon (No Qual)","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonIso_EtaPT2to5_000000","TkMuonQualIso_EtaPT2to5_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 2-5 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_001_NoQual.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIso_EtaPT15_000000","TkMuonQualIso_EtaPT15_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_002.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoBEta_PT_000000","TkMuonQualIsoBEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_003.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoOEta_PT_000000","TkMuonQualIsoOEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (overlap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_004.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoEEta_PT_000000","TkMuonQualIsoEEta_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_005.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoB_PT_002000","TkMuonQualIsoB_PT_002000" \
   --denominator "StandaloneMuonQualIsoB_PT_000000","TkMuonQualIsoB_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (barrel, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_006.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoO_PT_002000","TkMuonQualIsoO_PT_002000" \
   --denominator "StandaloneMuonQualIsoO_PT_000000","TkMuonQualIsoO_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (overlap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_007.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoE_PT_002000","TkMuonQualIsoE_PT_002000" \
   --denominator "StandaloneMuonQualIsoE_PT_000000","TkMuonQualIsoE_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (endcap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_008.pdf
./Execute \
   --label "STA Muon","TkMuon" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIso_PT_000000","TkMuonQualIso_PT_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_HLTTDRMuon_009.pdf

