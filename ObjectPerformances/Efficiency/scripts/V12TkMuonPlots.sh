#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "TkMuon (p_{T} = 2-5 GeV)","TkMuon (p_{T} = 3-15 GeV)","TkMuon (p_{T} > 15 GeV)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "TkMuonQualIso_EtaPT2to5_000000","TkMuonQualIso_EtaPT3to15_000000","TkMuonQualIso_EtaPT15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_TkMuon_001.pdf
./Execute \
   --label "TkMuon (barrel)","TkMuon (overlap)","TkMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "TkMuonQualIsoBEta_PT_000000","TkMuonQualIsoOEta_PT_000000","TkMuonQualIsoEEta_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_TkMuon_002.pdf
./Execute \
   --label "TkMuon (barrel)","TkMuon (overlap)","TkMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "TkMuonQualIsoB_PT_000500","TkMuonQualIsoO_PT_000500","TkMuonQualIsoE_PT_000500" \
   --denominator "TkMuonQualIsoB_PT_000000","TkMuonQualIsoO_PT_000000","TkMuonQualIsoE_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 5 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_TkMuon_003.pdf
./Execute \
   --label "TkMuon (barrel)","TkMuon (overlap)","TkMuon (endcap)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "TkMuonQualIsoB_PT_002000","TkMuonQualIsoO_PT_002000","TkMuonQualIsoE_PT_002000" \
   --denominator "TkMuonQualIsoB_PT_000000","TkMuonQualIsoO_PT_000000","TkMuonQualIsoE_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (L1 p_{T} > 20 GeV)" --xmin 0 --xmax 50 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_TkMuon_004.pdf
./Execute \
   --label "TkMuon (region 1)","TkMuon (region 2)","TkMuon (region 3)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "TkMuonQualIsoB_EtaPT15_000000","TkMuonQualIsoO_EtaPT15_000000","TkMuonQualIsoE_EtaPT15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_TkMuon_005.pdf
./Execute \
   --label "TkMuon (region 1)","TkMuon (region 2)","TkMuon (region 3)" \
   --file ${DYLLV12},${DYLLV12},${DYLLV12} \
   --numerator "TkMuonQualIsoB_EtaPT3to15_000000","TkMuonQualIsoO_EtaPT3to15_000000","TkMuonQualIsoE_EtaPT3to15_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 3-15 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --Davignon ${Davignon} --output Plots/V12_TkMuon_006.pdf

