#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIso_EtaPT2to5_000000","TkMuonStubIso_EtaPT2to5_000000","TkMuonIso24_EtaPT2to5_000000","TkMuonQualIso_EtaPT2to5_000000"  \
   --denominator "auto","auto","auto","auto"  \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 2-5 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4,-1 --legend false \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_001.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIso_EtaPT15_000000","TkMuonStubIso_EtaPT15_000000","TkMuonIso24_EtaPT15_000000","TkMuonQualIso_EtaPT15_000000"  \
   --denominator "auto","auto","auto","auto"  \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_002.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIsoBEta_PT_000000","TkMuonStubIsoBEta_PT_000000","TkMuonIsoBEta_PT_000000","TkMuonQualIsoBEta_PT_000000" \
   --denominator "auto","auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_003.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIsoOEta_PT_000000","TkMuonStubIsoOEta_PT_000000","TkMuonIsoOEta_PT_000000","TkMuonQualIsoOEta_PT_000000" \
   --denominator "auto","auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency (overlap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_004.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIsoEEta_PT_000000","TkMuonStubIsoEEta_PT_000000","TkMuonIsoEEta_PT_000000","TkMuonQualIsoEEta_PT_000000" \
   --denominator "auto","auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_005.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIsoBEta_PT_002000","TkMuonStubIsoB_PT_002000","TkMuonIsoB_PT_002000","TkMuonQualIsoB_PT_002000" \
   --denominator "GMTTkMuonIsoBEta_PT_000000","TkMuonStubIsoB_PT_000000","TkMuonIsoB_PT_000000","TkMuonQualIsoB_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (barrel, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_006.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIsoOEta_PT_002000","TkMuonStubIsoB_PT_002000","TkMuonIsoB_PT_002000","TkMuonQualIsoB_PT_002000" \
   --denominator "GMTTkMuonIsoOEta_PT_000000","TkMuonStubIsoB_PT_000000","TkMuonIsoB_PT_000000","TkMuonQualIsoB_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (overlap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_007.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIsoEEta_PT_002000","TkMuonStubIsoB_PT_002000","TkMuonIsoB_PT_002000","TkMuonQualIsoB_PT_002000" \
   --denominator "GMTTkMuonIsoEEta_PT_000000","TkMuonStubIsoB_PT_000000","TkMuonIsoB_PT_000000","TkMuonQualIsoB_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (endcap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_008.pdf
./Execute \
   --label "GMT TkMuon","TkMuonStub (L1 TDR)","TkMuon (L1 TDR)","TkMuon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV10},${DYLLV12} \
   --numerator "GMTTkMuonIso_PT_000000","TkMuonStubIso_PT_000000","TkMuonIso24_PT_000000","TkMuonQualIso_PT_000000" \
   --denominator "auto","auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4,-1 \
   --Davignon ${Davignon} --output Plots/V22_Summary2Muon_009.pdf

