#!/bin/bash

V12DH=DH/CurvesV12b.dh
V14DH=DH/CurvesV14.dh
V17DH=DH/CurvesV17.dh
V22DH=DH/CurvesV22.dh

Davignon=true

#############
# Jet Plots #
#############

./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH,$V22DH \
   --States CaloJetBarrel,Phase1PuppiJetBarrel,SeededConePuppiJetBarrel,TrackerJetBarrelFit \
   --Labels "Calo Jet (barrel)","Histogrammed PuppiJet (barrel)","Seeded Cone PuppiJet (barrel)","Tracker Jet (barrel)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -4,-2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V22_Jet_Barrel

./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH,$V22DH \
   --States CaloJetEndcapStringterpolate,Phase1PuppiJetEndcap,SeededConePuppiJetEndcapStringterpolate,TrackerJetEndcapFit \
   --Labels "Calo Jet (endcap)","Histogrammed PuppiJet (endcap)","Seeded Cone PuppiJet (endcap)","Tracker Jet (endcap)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -4,-2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V22_Jet_Endcap

./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH \
   --States CaloJetForwardStringterpolate,Phase1PuppiJetForward,SeededConePuppiJetForwardStringterpolate \
   --Labels "Calo Jet (forward)","Histogrammed PuppiJet (forward)","Seeded Cone PuppiJet (forward)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -4,-2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V22_Jet_Forward


./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH \
   --States Phase1PuppiJetBarrel,SeededConePuppiJetBarrel,TrackerJetBarrelFit \
   --Labels "Histogrammed PuppiJet (barrel)","Seeded Cone PuppiJet (barrel)","Tracker Jet (barrel)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V22_JetNoCalo_Barrel

./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH \
   --States Phase1PuppiJetEndcap,SeededConePuppiJetEndcapStringterpolate,TrackerJetEndcapFit \
   --Labels "Histogrammed PuppiJet (endcap)","Seeded Cone PuppiJet (endcap)","Tracker Jet (endcap)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V22_JetNoCalo_Endcap

./ExecutePlot \
   --DHFiles $V22DH,$V22DH \
   --States Phase1PuppiJetForward,SeededConePuppiJetForwardStringterpolate \
   --Labels "Histogrammed PuppiJet (forward)","Seeded Cone PuppiJet (forward)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V22_JetNoCalo_Forward

############
# HT Plots #
############

./ExecutePlot \
   --DHFiles ${V22DH},${V22DH},${V22DH} \
   --States CaloHT,Phase1PuppiHT,TrackerHT \
   --Labels "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -4,-2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V22_HT050
./ExecutePlot \
   --DHFiles ${V22DH},${V22DH},${V22DH} \
   --States 090CaloHT,090Phase1PuppiHT,090TrackerHT \
   --Labels "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "90%" \
   --Color -4,-2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V22_HT090

./ExecutePlot \
   --DHFiles ${V22DH},${V22DH} \
   --States Phase1PuppiHT,TrackerHT \
   --Labels "Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V22_HT050NoCalo

./ExecutePlot \
   --DHFiles ${V22DH},${V22DH} \
   --States 090Phase1PuppiHT,090TrackerHT \
   --Labels "Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "90%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V22_HT090NoCalo


#############
# MHT Plots #
#############

./ExecutePlot \
   --DHFiles ${V22DH},${V22DH} \
   --States Phase1PuppiMHT15,TrackerMHT \
   --Labels "Histogrammed PuppiMHT","Tracker MHT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V22_MHT


#############
# MET Plots #
#############

./ExecutePlot \
   --DHFiles ${V22DH},${V22DH} \
   --States PuppiMET,TrackerMETFit \
   --Labels "Puppi MET","Tracker MET" \
   --MaxX 200 --MaxY 400 --Threshold "50%" \
   --Color -1,-2 \
   --Davignon ${Davignon} --OutputBase Plots/V22_MET050
./ExecutePlot \
   --DHFiles ${V22DH},${V22DH} \
   --States 090PuppiMET,090TrackerMETFit \
   --Labels "Puppi MET","Tracker MET" \
   --MaxX 200 --MaxY 550 --Threshold "90%" \
   --Color -1,-2 \
   --Davignon ${Davignon} --OutputBase Plots/V22_MET090












