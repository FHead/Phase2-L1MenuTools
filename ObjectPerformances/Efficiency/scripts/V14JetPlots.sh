#!/bin/bash

source scripts/Samples.sh


./Execute \
   --label "SeededConePuppiJet (p_{T} = 40-100 GeV)","SeededConePuppiJet (p_{T} > 100 GeV)" \
   --file ${TTbarV14},${TTbarV14} \
   --numerator "SeededConePuppiJetWide_EtaPT40to100_000000","SeededConePuppiJetWide_EtaPT100_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14_Jet_001.pdf
./Execute \
   --label "SeededConePuppiJet (barrel)","SeededConePuppiJet (endcap)","SeededConePuppiJet (forward)" \
   --file ${TTbarV14},${TTbarV14},${TTbarV14} \
   --numerator "SeededConePuppiJet_PTEta15_000000","SeededConePuppiJet_PTEtaLarge_000000","SeededConePuppiJetForward_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14_Jet_002.pdf
./Execute \
   --label "SeededConePuppiJet (barrel)","SeededConePuppiJet (endcap)","SeededConePuppiJet (forward)" \
   --file ${TTbarV14},${TTbarV14},${TTbarV14} \
   --numerator "SeededConePuppiJet_PTEta15_005000","SeededConePuppiJet_PTEtaLarge_005000","SeededConePuppiJetForward_PT_005000" \
   --denominator "SeededConePuppiJet_PTEta15_000000","SeededConePuppiJet_PTEtaLarge_000000","SeededConePuppiJetForward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 50 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14_Jet_003.pdf
./Execute \
   --label "SeededConePuppiJet (barrel)","SeededConePuppiJet (endcap)","SeededConePuppiJet (forward)" \
   --file ${TTbarV14},${TTbarV14},${TTbarV14} \
   --numerator "SeededConePuppiJet_PTEta15_012000","SeededConePuppiJet_PTEtaLarge_012000","SeededConePuppiJetForward_PT_012000" \
   --denominator "SeededConePuppiJet_PTEta15_000000","SeededConePuppiJet_PTEtaLarge_000000","SeededConePuppiJetForward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 120 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14_Jet_004.pdf
./Execute \
   --label "SeededConePuppiJet (barrel)","SeededConePuppiJet (endcap)","SeededConePuppiJet (forward)" \
   --file ${TTbarV14},${TTbarV14},${TTbarV14} \
   --numerator "SeededConePuppiJet_PTEta15_030000","SeededConePuppiJet_PTEtaLarge_030000","SeededConePuppiJetForward_PT_030000" \
   --denominator "SeededConePuppiJet_PTEta15_000000","SeededConePuppiJet_PTEtaLarge_000000","SeededConePuppiJetForward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 300 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14_Jet_005.pdf

