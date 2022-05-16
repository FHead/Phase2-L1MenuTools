#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10} \
   --numerator "TkMuonIso24_EtaPT2to5_000000","TkMuonStubIso_EtaPT2to5_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 2-5 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-3 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_001.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIso_EtaPT15_000000","TkMuonIso24_EtaPT15_000000","TkMuonStubIso_EtaPT15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_002.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIsoBEta_PT_000000","TkMuonIsoBEta_PT_000000","TkMuonStubIsoBEta_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_003.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIsoOEta_PT_000000","TkMuonIsoOEta_PT_000000","TkMuonStubIsoOEta_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (overlap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_004.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIsoEEta_PT_000000","TkMuonIsoEEta_PT_000000","TkMuonStubIsoEEta_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_005.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIsoB_PT_002000","TkMuonIsoB_PT_002000","TkMuonStubIsoB_PT_002000" \
   --denominator "StandaloneMuonIsoB_PT_000000","TkMuonIsoB_PT_000000","TkMuonStubIsoB_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (barrel, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_006.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIsoO_PT_002000","TkMuonIsoO_PT_002000","TkMuonStubIsoO_PT_002000" \
   --denominator "StandaloneMuonIsoO_PT_000000","TkMuonIsoO_PT_000000","TkMuonStubIsoO_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (overlap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_007.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIsoE_PT_002000","TkMuonIsoE_PT_002000","TkMuonStubIsoE_PT_002000" \
   --denominator "StandaloneMuonIsoE_PT_000000","TkMuonIsoE_PT_000000","TkMuonStubIsoE_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (endcap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_008.pdf
./Execute \
   --label "STA Muon","TkMuon","TkMuonStub" \
   --file ${DYLLV10},${DYLLV10},${DYLLV10} \
   --numerator "StandaloneMuonIso_PT_000000","TkMuonIso24_PT_000000","TkMuonStubIso_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V10_L1TDRMuon_009.pdf

