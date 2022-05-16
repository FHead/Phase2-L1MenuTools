#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIso_EtaPT2to5_000000","StandaloneMuonIso_EtaPT2to5_000000","StandaloneMuonQualIso_EtaPT2to5_000000"  \
   --denominator "auto","auto","auto"  \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 2-5 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_001.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIso_EtaPT15_000000","StandaloneMuonIso_EtaPT15_000000","StandaloneMuonQualIso_EtaPT15_000000"  \
   --denominator "auto","auto","auto"  \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_002.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIsoBEta_PT_000000","StandaloneMuonIsoBEta_PT_000000","StandaloneMuonQualIsoBEta_PT_000000"  \
   --denominator "auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_003.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIsoOEta_PT_000000","StandaloneMuonIsoOEta_PT_000000","StandaloneMuonQualIsoOEta_PT_000000"  \
   --denominator "auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency (overlap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_004.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIsoEEta_PT_000000","StandaloneMuonIsoEEta_PT_000000","StandaloneMuonQualIsoEEta_PT_000000"  \
   --denominator "auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_005.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIsoBEta_PT_002000","StandaloneMuonIsoB_PT_002000","StandaloneMuonQualIsoB_PT_002000"  \
   --denominator "GMTMuonQualIsoBEta_PT_000000","StandaloneMuonIsoB_PT_000000","StandaloneMuonQualIsoB_PT_000000"  \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (barrel, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_006.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIsoOEta_PT_002000","StandaloneMuonIsoO_PT_002000","StandaloneMuonQualIsoO_PT_002000"  \
   --denominator "GMTMuonQualIsoOEta_PT_000000","StandaloneMuonIsoO_PT_000000","StandaloneMuonQualIsoO_PT_000000"  \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (overlap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_007.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIsoEEta_PT_002000","StandaloneMuonIsoE_PT_002000","StandaloneMuonQualIsoE_PT_002000"  \
   --denominator "GMTMuonQualIsoEEta_PT_000000","StandaloneMuonIsoE_PT_000000","StandaloneMuonQualIsoE_PT_000000"  \
   --title ";Gen. p_{T} (GeV);Trigger efficinecy (endcap, L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_008.pdf
./Execute \
   --label "GMT Muon","STA Muon (L1 TDR)","STA Muon (HLT TDR)" \
   --file ${DYLLV22},${DYLLV10},${DYLLV12} \
   --numerator "GMTMuonQualIso_PT_000000","StandaloneMuonIso_PT_000000","StandaloneMuonQualIso_PT_000000"  \
   --denominator "auto","auto","auto"  \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-5,-4 \
   --Davignon ${Davignon} --output Plots/V22_Summary1MuonQual_009.pdf

