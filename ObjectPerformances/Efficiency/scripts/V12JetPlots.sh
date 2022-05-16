#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "Phase1PuppiJet (p_{T} = 40-100 GeV)","Phase1PuppiJet (p_{T} > 100 GeV)" \
   --file ${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiJetWide_EtaPT40to100_000000","Phase1PuppiJetWide_EtaPT100_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_Jet_001.pdf
./Execute \
   --label "Phase1PuppiJet (barrel)","Phase1PuppiJet (endcap)","Phase1PuppiJet (forward)" \
   --file ${TTbarV12},${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiJet_PTEta15_000000","Phase1PuppiJet_PTEtaLarge_000000","Phase1PuppiJetForward_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_Jet_002.pdf
./Execute \
   --label "Phase1PuppiJet (barrel)","Phase1PuppiJet (endcap)","Phase1PuppiJet (forward)" \
   --file ${TTbarV12},${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiJet_PTEta15_005000","Phase1PuppiJet_PTEtaLarge_005000","Phase1PuppiJetForward_PT_005000" \
   --denominator "Phase1PuppiJet_PTEta15_000000","Phase1PuppiJet_PTEtaLarge_000000","Phase1PuppiJetForward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 50 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_Jet_003.pdf
./Execute \
   --label "Phase1PuppiJet (barrel)","Phase1PuppiJet (endcap)","Phase1PuppiJet (forward)" \
   --file ${TTbarV12},${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiJet_PTEta15_012000","Phase1PuppiJet_PTEtaLarge_012000","Phase1PuppiJetForward_PT_012000" \
   --denominator "Phase1PuppiJet_PTEta15_000000","Phase1PuppiJet_PTEtaLarge_000000","Phase1PuppiJetForward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 120 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12_Jet_004.pdf

