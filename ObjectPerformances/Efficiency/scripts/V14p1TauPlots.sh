#!/bin/bash

source scripts/Samples.sh

#############
# Tau plots #
#############

T="EtaPT40_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T}","NNTau2VtxLooseIso_${T}" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (>40 GeV)" --xmin -2.5 --xmax 2.5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_001.pdf

T="EtaPT20to40_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T}","NNTau2VtxLooseIso_${T}" \
   --denominator "auto","auto" \
   --title ";Gen. #eta;Matching efficiency (20-40 GeV)" --xmin -2.5 --xmax 2.5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_002.pdf

T="PTEta15_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T}","NNTau2VtxLooseIso_${T}" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T};Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_003.pdf

T="PTEtaLarge_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T}","NNTau2VtxLooseIso_${T}" \
   --denominator "auto","auto" \
   --title ";Gen. p_{T};Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_004.pdf

T1="PTEta15_003000"
T2="PTEta15_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T1}","NNTau2VtxLooseIso_${T1}" \
   --denominator "NNTauLooseIso_${T2}","NNTau2VtxLooseIso_${T2}" \
   --title ";Gen. p_{T};Trigger efficiency (barrel, p_{T} > 30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_005.pdf

T1="PTEta15_007000"
T2="PTEta15_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T1}","NNTau2VtxLooseIso_${T1}" \
   --denominator "NNTauLooseIso_${T2}","NNTau2VtxLooseIso_${T2}" \
   --title ";Gen. p_{T};Trigger efficiency (barrel, p_{T} > 70 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_006.pdf

T1="PTEtaLarge_003000"
T2="PTEtaLarge_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T1}","NNTau2VtxLooseIso_${T1}" \
   --denominator "NNTauLooseIso_${T2}","NNTau2VtxLooseIso_${T2}" \
   --title ";Gen. p_{T};Trigger efficiency (endcap, p_{T} > 30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_007.pdf

T1="PTEtaLarge_007000"
T2="PTEtaLarge_000000"
./Execute \
   --label "NNTau","NNTau2Vtx" \
   --file $VBFHTauTauV14p1,$VBFHTauTauV14p1 \
   --numerator "NNTauLooseIso_${T1}","NNTau2VtxLooseIso_${T1}" \
   --denominator "NNTauLooseIso_${T2}","NNTau2VtxLooseIso_${T2}" \
   --title ";Gen. p_{T};Trigger efficiency (endcap, p_{T} > 70 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon ${Davignon} --output Plots/V14p1_Tau_008.pdf


exit

T1="PTEta15_005000"
T2="PTEta15_000000"
./Execute \
   --label "Calo Jet","Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV12p1},${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_Jet_003.pdf

T1="PTEta15_012000"
T2="PTEta15_000000"
./Execute \
   --label "Calo Jet","Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV12p1},${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_Jet_004.pdf

T1="PTEtaLarge_005000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Calo Jet","Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV12p1},${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_Jet_005.pdf

T1="PTEtaLarge_012000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Calo Jet","Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV12p1},${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_Jet_006.pdf

T1="PT_005000"
T2="PT_000000"
./Execute \
   --label "Calo Jet","Puppi SeededCone Jet","Puppi Histogrammed Jet" \
   --file ${TTbarV12p1},${TTbarV14},${TTbarV12} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_Jet_007.pdf

T1="PT_012000"
T2="PT_000000"
./Execute \
   --label "Calo Jet","Puppi SeededCone Jet","Puppi Histogrammed Jet" \
   --file ${TTbarV12p1},${TTbarV14},${TTbarV12} \
   --numerator "CaloJet_${T1}","SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "CaloJet_${T2}","SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_Jet_008.pdf

#####################
# Jet plots No Calo #
#####################

T="EtaPT40to100_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "SeededConePuppiJetWide_${T}","Phase1PuppiJetWide_${T}","TrackerJet_${T}" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (40-100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_001.pdf

T="EtaPT100_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "SeededConePuppiJetWide_${T}","Phase1PuppiJetWide_${T}","TrackerJet_${T}" \
   --denominator "auto","auto","auto" \
   --title ";Gen. #eta;Matching efficiency (>100 GeV)" --xmin -5 --xmax 5 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_002.pdf

T1="PTEta15_005000"
T2="PTEta15_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_003.pdf

T1="PTEta15_012000"
T2="PTEta15_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, barrel)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_004.pdf

T1="PTEtaLarge_005000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_005.pdf

T1="PTEtaLarge_012000"
T2="PTEtaLarge_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet","Tracker Jet" \
   --file ${TTbarV14},${TTbarV12},${TTbarV12p1} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}","TrackerJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}","TrackerJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, endcap)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_006.pdf

T1="PT_005000"
T2="PT_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet" \
   --file ${TTbarV14},${TTbarV12} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (50 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_007.pdf

T1="PT_012000"
T2="PT_000000"
./Execute \
   --label "Puppi SeededCone Jet","Puppi Histogrammed Jet" \
   --file ${TTbarV14},${TTbarV12} \
   --numerator "SeededConePuppiJet_${T1}","Phase1PuppiJet_${T1}" \
   --denominator "SeededConePuppiJet_${T2}","Phase1PuppiJet_${T2}" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (120 GeV, forward)" \
   --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-2,-3 \
   --Davignon ${Davignon} --output Plots/V12V14p1_JetNoCalo_008.pdf



############
# HT Plots #
############

T1=PT_020000
T2=PT_000000
./Execute \
   --label "Calo HT","Puppi Histogrammed HT","Tracker HT" \
   --file $TTbarV14HT,$TTbarV12,$TTbarV14p1 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (200 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_HT_001.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Calo HT","Puppi Histogrammed HT","Tracker HT" \
   --file $TTbarV14HT,$TTbarV12,$TTbarV14p1 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_HT_002.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Calo HT","Puppi Histogrammed HT","Tracker HT" \
   --file $TTbarV14HT,$TTbarV12,$TTbarV14p1 \
   --numerator "CaloHT_${T1}","Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "CaloHT_${T2}","Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -4,-2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_HT_002Wide.pdf

####################
# HT Plots No Calo #
####################

T1=PT_020000
T2=PT_000000
./Execute \
   --label "Puppi Histogrammed HT","Tracker HT" \
   --file $TTbarV12,$TTbarV14p1 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (200 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_HTNoCalo_001.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Puppi Histogrammed HT","Tracker HT" \
   --file $TTbarV12,$TTbarV14p1 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_HTNoCalo_002.pdf

T1=PT_035000
T2=PT_000000
./Execute \
   --label "Puppi Histogrammed HT","Tracker HT" \
   --file $TTbarV12,$TTbarV14p1 \
   --numerator "Phase1PuppiHT_${T1}","TrackerHT_${T1}" \
   --denominator "Phase1PuppiHT_${T2}","TrackerHT_${T2}" \
   --title ";Gen. HT (GeV);Trigger efficiency (350 GeV)" --xmin 0 --xmax 750 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_HTNoCalo_002Wide.pdf



#############
# MHT Plots #
#############

T1=PT_007000
T2=PT_000000
./Execute \
   --label "Puppi Histogrammed MHT","Tracker MHT" \
   --file $TTbarV12,$TTbarV14p1 \
   --numerator "Phase1PuppiMHT15_${T1}","TrackerMHT_${T1}" \
   --denominator "Phase1PuppiMHT15_${T2}","TrackerMHT_${T2}" \
   --title ";Gen. MHT (GeV);Trigger efficiency (70 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_MHT_001.pdf

T1=PT_015000
T2=PT_000000
./Execute \
   --label "Puppi Histogrammed MHT","Tracker MHT" \
   --file $TTbarV12,$TTbarV14p1 \
   --numerator "Phase1PuppiMHT15_${T1}","TrackerMHT_${T1}" \
   --denominator "Phase1PuppiMHT15_${T2}","TrackerMHT_${T2}" \
   --title ";Gen. MHT (GeV);Trigger efficiency (150 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -2,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_MHT_002.pdf



#############
# MET Plots #
#############

T1=PT_007000
T2=PT_000000
./Execute \
   --label "Puppi MET","Tracker MET" \
   --file $TTbarV14p1,$TTbarV14p1 \
   --numerator "PuppiMET_${T1}","TrackerMET_${T1}" \
   --denominator "PuppiMET_${T2}","TrackerMET_${T2}" \
   --title ";Gen. MET (GeV);Trigger efficiency (70 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_MET_001.pdf

T1=PT_015000
T2=PT_000000
./Execute \
   --label "Puppi MET","Tracker MET" \
   --file $TTbarV1p1,$TTbarV14p1 \
   --numerator "PuppiMET_${T1}","TrackerMET_${T1}" \
   --denominator "PuppiMET_${T2}","TrackerMET_${T2}" \
   --title ";Gen. MET (GeV);Trigger efficiency (150 GeV)" --xmin 0 --xmax 500 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3 \
   --Davignon $Davignon --output Plots/V12V14p1_MET_002.pdf










