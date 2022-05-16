#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "StandaloneMuon (p_{T} = 2-5 GeV)","StandaloneMuon (p_{T} = 3-15 GeV)","StandaloneMuon (p_{T} > 15 GeV)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIso_EtaPT2to5_000000","StandaloneMuonQualIso_EtaPT3to15_000000","StandaloneMuonQualIso_EtaPT15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_StandaloneMuon_001.pdf
./Execute \
   --label "StandaloneMuon (barrel)","StandaloneMuon (overlap)","StandaloneMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoBEta_PT_000000","StandaloneMuonQualIsoOEta_PT_000000","StandaloneMuonQualIsoEEta_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_StandaloneMuon_002.pdf
./Execute \
   --label "StandaloneMuon (barrel)","StandaloneMuon (overlap)","StandaloneMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoB_PT_000500","StandaloneMuonQualIsoO_PT_000500","StandaloneMuonQualIsoE_PT_000500" \
   --denominator "StandaloneMuonQualIsoB_PT_000000","StandaloneMuonQualIsoO_PT_000000","StandaloneMuonQualIsoE_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 5 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_StandaloneMuon_003.pdf
./Execute \
   --label "StandaloneMuon (barrel)","StandaloneMuon (overlap)","StandaloneMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoB_PT_002000","StandaloneMuonQualIsoO_PT_002000","StandaloneMuonQualIsoE_PT_002000" \
   --denominator "StandaloneMuonQualIsoB_PT_000000","StandaloneMuonQualIsoO_PT_000000","StandaloneMuonQualIsoE_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_StandaloneMuon_004.pdf
./Execute \
   --label "StandaloneMuon (region 1)","StandaloneMuon (region 2)","StandaloneMuon (region 3)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoB_EtaPT15_000000","StandaloneMuonQualIsoO_EtaPT15_000000","StandaloneMuonQualIsoE_EtaPT15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_StandaloneMuon_005.pdf
./Execute \
   --label "StandaloneMuon (region 1)","StandaloneMuon (region 2)","StandaloneMuon (region 3)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonQualIsoB_EtaPT3to15_000000","StandaloneMuonQualIsoO_EtaPT3to15_000000","StandaloneMuonQualIsoE_EtaPT3to15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 3-15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_StandaloneMuon_006.pdf

