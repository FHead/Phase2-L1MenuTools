#!/bin/bash

source scripts/Samples.sh


########
# Muon #
########

T1=PT_002000
T2=PT_000000
./Execute \
   --label "TkMuon TTbarV12.1","TkMuon TTbarV14","TkMuon TTbarV14.1" \
   --file $TTbarV12p1,$TTbarV14,$TTbarV14p1 \
   --numerator "TkMuonQualIsoB_${T1}","TkMuonQualIsoB_${T1}","TkMuonQualIsoB_${T1}" \
   --denominator "TkMuonQualIsoB_${T2}","TkMuonQualIsoB_${T2}","TkMuonQualIsoB_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (barrel 20 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_TkMuon_001.pdf

T1=PT_002000
T2=PT_000000
./Execute \
   --label "TkMuon TTbarV12.1","TkMuon TTbarV14","TkMuon TTbarV14.1" \
   --file $TTbarV12p1,$TTbarV14,$TTbarV14p1 \
   --numerator "TkMuonQualIsoO_${T1}","TkMuonQualIsoO_${T1}","TkMuonQualIsoO_${T1}" \
   --denominator "TkMuonQualIsoO_${T2}","TkMuonQualIsoO_${T2}","TkMuonQualIsoO_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (overlap 20 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_TkMuon_002.pdf

T1=PT_002000
T2=PT_000000
./Execute \
   --label "TkMuon TTbarV12.1","TkMuon TTbarV14","TkMuon TTbarV14.1" \
   --file $TTbarV12p1,$TTbarV14,$TTbarV14p1 \
   --numerator "TkMuonQualIsoE_${T1}","TkMuonQualIsoE_${T1}","TkMuonQualIsoE_${T1}" \
   --denominator "TkMuonQualIsoE_${T2}","TkMuonQualIsoE_${T2}","TkMuonQualIsoE_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (endcap 20 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_TkMuon_003.pdf








