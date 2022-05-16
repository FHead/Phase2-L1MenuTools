#!/bin/bash

source scripts/Samples.sh


./Execute \
   --label "CaloJet (p_{T} = 40-100 GeV)","CaloJet (p_{T} > 100 GeV)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "CaloJetWide_EtaPT40to100_000000","CaloJetWide_EtaPT100_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_001.pdf
./Execute \
   --label "CaloJet (barrel)","CaloJet (endcap)","CaloJet (forward)" \
   --file ${TTbarV12p1},${TTbarV12p1},${TTbarV12p1} \
   --numerator "CaloJet_PTEta15_000000","CaloJet_PTEtaLarge_000000","CaloJetFoward_PT_000000" \
   --denominator "auto","auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_002.pdf
./Execute \
   --label "CaloJet (barrel)","CaloJet (endcap)","CaloJet (forward)" \
   --file ${TTbarV12p1},${TTbarV12p1},${TTbarV12p1} \
   --numerator "CaloJet_PTEta15_005000","CaloJet_PTEtaLarge_005000","CaloJetFoward_PT_005000" \
   --denominator "CaloJet_PTEta15_000000","CaloJet_PTEtaLarge_000000","CaloJetFoward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 50 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_003.pdf
./Execute \
   --label "CaloJet (barrel)","CaloJet (endcap)","CaloJet (forward)" \
   --file ${TTbarV12p1},${TTbarV12p1},${TTbarV12p1} \
   --numerator "CaloJet_PTEta15_012000","CaloJet_PTEtaLarge_012000","CaloJetFoward_PT_012000" \
   --denominator "CaloJet_PTEta15_000000","CaloJet_PTEtaLarge_000000","CaloJetFoward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 120 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_004.pdf
./Execute \
   --label "CaloJet (barrel)","CaloJet (endcap)","CaloJet (forward)" \
   --file ${TTbarV12p1},${TTbarV12p1},${TTbarV12p1} \
   --numerator "CaloJet_PTEta15_030000","CaloJet_PTEtaLarge_030000","CaloJetFoward_PT_030000" \
   --denominator "CaloJet_PTEta15_000000","CaloJet_PTEtaLarge_000000","CaloJetFoward_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 300 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_009.pdf
./Execute \
   --label "TrackerJet (p_{T} = 40-100 GeV)","TrackerJet (p_{T} > 100 GeV)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerJet_EtaPT40to100_000000","TrackerJet_EtaPT100_000000" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency" --xmin -2.5 --xmax 2.5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_005.pdf
./Execute \
   --label "TrackerJet (barrel)","TrackerJet (endcap)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerJet_PTEta15_000000","TrackerJet_PTEtaLarge_000000" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T} (GeV);Matching efficiency" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_006.pdf
./Execute \
   --label "TrackerJet (barrel)","TrackerJet (endcap)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerJet_PTEta15_005000","TrackerJet_PTEtaLarge_005000" \
   --denominator "TrackerJet_PTEta15_000000","TrackerJet_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 50 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_007.pdf
./Execute \
   --label "TrackerJet (barrel)","TrackerJet (endcap)" \
   --file ${TTbarV12p1},${TTbarV12p1} \
   --numerator "TrackerJet_PTEta15_012000","TrackerJet_PTEtaLarge_012000" \
   --denominator "TrackerJet_PTEta15_000000","TrackerJet_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (p_{T} > 120 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V12p1_Jet_008.pdf

