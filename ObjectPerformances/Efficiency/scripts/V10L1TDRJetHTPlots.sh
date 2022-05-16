#!/bin/bash

source scripts/Samples.sh

#############
# Jet plots #
#############

T="EtaPT40to100_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T","TrackerJet_$T","CaloJetWide_$T" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 40-100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon $Davignon --output Plots/V10RemakeJetHT_001.pdf

T="EtaPT100_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T","TrackerJet_$T","CaloJetWide_$T" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon $Davignon --output Plots/V10RemakeJetHT_002.pdf

T1="PTEta15_005000"
T2="PTEta15_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1","CaloJetWide_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2","CaloJetWide_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHT_003.pdf

T1="PTEta15_012000"
T2="PTEta15_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1","CaloJetWide_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2","CaloJetWide_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHT_004.pdf

T1="PTEtaLarge_005000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1","CaloJetWide_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2","CaloJetWide_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHT_005.pdf

T1="PTEtaLarge_012000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1","CaloJetWide_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2","CaloJetWide_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHT_006.pdf

T1="PT_005000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetForward_$T1","TrackerJetForward_$T1","CaloJetFoward_$T1" \
   --denominator "PFPhase1JetForward_$T2","TrackerJetForward_$T2","CaloJetFoward_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHT_007.pdf

T1="PT_012000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetForward_$T1","TrackerJetForward_$T1","CaloJetFoward_$T1" \
   --denominator "PFPhase1JetForward_$T2","TrackerJetForward_$T2","CaloJetFoward_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHT_008.pdf

#####################
# Jet Plots No Calo #
#####################

T="EtaPT40to100_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T","TrackerJet_$T" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 40-100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V10RemakeJetHTNoCalo_001.pdf

T="EtaPT100_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T","TrackerJet_$T" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V10RemakeJetHTNoCalo_002.pdf

T1="PTEta15_005000"
T2="PTEta15_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHTNoCalo_003.pdf

T1="PTEta15_012000"
T2="PTEta15_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHTNoCalo_004.pdf

T1="PTEtaLarge_005000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHTNoCalo_005.pdf

T1="PTEtaLarge_012000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetWide_$T1","TrackerJet_$T1" \
   --denominator "PFPhase1JetWide_$T2","TrackerJet_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHTNoCalo_006.pdf

T1="PT_005000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetForward_$T1","TrackerJetForward_$T1" \
   --denominator "PFPhase1JetForward_$T2","TrackerJetForward_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHTNoCalo_007.pdf

T1="PT_012000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiJet","Tracker Jet" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1JetForward_$T1","TrackerJetForward_$T1" \
   --denominator "PFPhase1JetForward_$T2","TrackerJetForward_$T2" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon ${Davignon} --output Plots/V10RemakeJetHTNoCalo_008.pdf

#############
# HT plots #
#############

T1="PT_035000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT","Calo HT" \
   --file $TTbarV10,$TTbarV10,$TTbarV10 \
   --numerator "PFPhase1HT_$T1","TrackerHT_$T1","CaloHT_$T1" \
   --denominator "PFPhase1HT_$T2","TrackerHT_$T2","CaloHT_$T2" \
   --title ";Gen. H_{T} (GeV);Trigger efficiency (L1 p_{T} > 350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon $Davignon --output Plots/V10RemakeJetHT_009.pdf

T1="PT_035000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarV10,$TTbarV10 \
   --numerator "PFPhase1HT_$T1","TrackerHT_$T1" \
   --denominator "PFPhase1HT_$T2","TrackerHT_$T2" \
   --title ";Gen. H_{T} (GeV);Trigger efficiency (L1 p_{T} > 350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V10RemakeJetHTNoCalo_009.pdf


T1="PT_035000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT","Calo HT" \
   --file $TTbarHadronicV10,$TTbarHadronicV10,$TTbarHadronicV10 \
   --numerator "PFPhase1HT_$T1","TrackerHT_$T1","CaloHT_$T1" \
   --denominator "PFPhase1HT_$T2","TrackerHT_$T2","CaloHT_$T2" \
   --title ";Gen. H_{T} (GeV);Trigger efficiency (L1 p_{T} > 350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3,-4 \
   --Davignon $Davignon --output Plots/V10RemakeJetHT_010Hadronic.pdf

T1="PT_035000"
T2="PT_000000"
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarHadronicV10,$TTbarHadronicV10 \
   --numerator "PFPhase1HT_$T1","TrackerHT_$T1" \
   --denominator "PFPhase1HT_$T2","TrackerHT_$T2" \
   --title ";Gen. H_{T} (GeV);Trigger efficiency (L1 p_{T} > 350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V10RemakeJetHTNoCalo_010Hadronic.pdf


