#!/bin/bash

source scripts/Samples.sh

#############
# Jet plots #
#############

T="EtaPT40to100_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJetWide_${T}","SeededConePuppiJetWide_${T}","Phase1PuppiJetWide_${T}","TrackerJet_${T}" \
   --denominator "auto","auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (40-100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_001.pdf

T="EtaPT100_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJetWide_${T}","SeededConePuppiJetWide_${T}","Phase1PuppiJetWide_${T}","TrackerJet_${T}" \
   --denominator "auto","auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (>100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_002.pdf

T1="PTEta15_005000"
T2="PTEta15_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_003.pdf

T1="PTEta15_012000"
T2="PTEta15_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_004.pdf

T1="PTEtaLarge_005000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_005.pdf

T1="PTEtaLarge_012000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_006.pdf

T1="PT_005000"
T2="PT_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_007.pdf

T1="PT_012000"
T2="PT_000000"
./Execute \
   --label "Calo Jet","Seeded Cone PuppiJet","Histogrammed PuppiJet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_Jet_008.pdf

#####################
# Jet plots No Calo #
#####################

T="EtaPT40to100_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJetWide_${T}","Phase1PuppiJetWide_${T}","TrackerJet_${T}" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (40-100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_001.pdf

T="EtaPT100_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJetWide_${T}","Phase1PuppiJetWide_${T}","TrackerJet_${T}" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (>100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_002.pdf

T1="PTEta15_005000"
T2="PTEta15_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_003.pdf

T1="PTEta15_012000"
T2="PTEta15_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_004.pdf

T1="PTEtaLarge_005000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_005.pdf

T1="PTEtaLarge_012000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet","Tracker Jet" \
   --file ${TTbarV17},${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_006.pdf

T1="PT_005000"
T2="PT_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet" \
   --file ${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_007.pdf

T1="PT_012000"
T2="PT_000000"
./Execute \
   --label "Seeded Cone PuppiJet","Histogrammed PuppiJet" \
   --file ${TTbarV17},${TTbarV17} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V17_JetNoCalo_008.pdf



############
# HT Plots #
############

T1=PT_020000
T2=PT_000000
./Execute \
   --label "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarV17,$TTbarV17,$TTbarV17 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (200 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V17_HT_001.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarV17,$TTbarV17,$TTbarV17 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V17_HT_002.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarV17,$TTbarV17,$TTbarV17 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V17_HT_002Wide.pdf

####################
# HT Plots No Calo #
####################

T1=PT_020000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (200 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17_HTNoCalo_001.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17_HTNoCalo_002.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiHT","Tracker HT" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17_HTNoCalo_002Wide.pdf



#############
# MHT Plots #
#############

T1=PT_007000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiMHT","Tracker MHT" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "Phase1PuppiMHT15_${T1}","TrackerMHT_${T1}" \
   --denominator "Phase1PuppiMHT15_${T2}","TrackerMHT_${T2}" \
   --title ";Gen. MHT (GeV);Trigger efficiency (70 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17_MHT_001.pdf

T1=PT_015000
T2=PT_000000
./Execute \
   --label "Histogrammed PuppiMHT","Tracker MHT" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "Phase1PuppiMHT15_${T1}","TrackerMHT_${T1}" \
   --denominator "Phase1PuppiMHT15_${T2}","TrackerMHT_${T2}" \
   --title ";Gen. MHT (GeV);Trigger efficiency (150 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V17_MHT_002.pdf



#############
# MET Plots #
#############

T1=PT_007000
T2=PT_000000
./Execute \
   --label "Puppi MET","Tracker MET" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "PuppiMET_${T1}","TrackerMET_${T1}" \
   --denominator "PuppiMET_${T2}","TrackerMET_${T2}" \
   --title ";Gen. MET (GeV);Trigger efficiency (70 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2 \
   --Davignon $Davignon --output Plots/V17_MET_001.pdf

T1=PT_015000
T2=PT_000000
./Execute \
   --label "Puppi MET","Tracker MET" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "PuppiMET_${T1}","TrackerMET_${T1}" \
   --denominator "PuppiMET_${T2}","TrackerMET_${T2}" \
   --title ";Gen. MET (GeV);Trigger efficiency (150 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2 \
   --Davignon $Davignon --output Plots/V17_MET_002.pdf


######################
# Muon (cross check) #
######################

T1=PT_002000
T2=PT_000000
./Execute \
   --label "TkMuon V12.1","TkMuon V17.1" \
   --file $TTbarV17,$TTbarV17 \
   --numerator "TkMuonQualIso_${T1}","TkMuonQualIso_${T1}" \
   --denominator "TkMuonQualIso_${T2}","TkMuonQualIso_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3 \
   --Davignon $Davignon --output Plots/V17_TkMuon_001.pdf








