#!/bin/bash

V12DH=DH/CurvesV12b.dh
V14DH=DH/CurvesV14.dh

Davignon=true

#############
# Jet Plots #
#############

./ExecutePlot \
   --DHFiles $V12DH,$V12DH,$V14DH,$V12DH \
   --States CaloJetBarrel,Phase1PuppiJetBarrel,SeededConePuppiJetBarrel,TrackerJetBarrelFit \
   --Labels "Calo Jet (barrel)","Puppi Histogrammed Jet (barrel)","Puppi SeededCone Jet (barrel)","Tracker Jet (barrel)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -4,-2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V12V14_Jet_Barrel

./ExecutePlot \
   --DHFiles $V12DH,$V12DH,$V14DH,$V12DH \
   --States CaloJetEndcapStringterpolate,Phase1PuppiJetEndcap,SeededConePuppiJetEndcapStringterpolate,TrackerJetEndcapFit \
   --Labels "Calo Jet (endcap)","Puppi Histogrammed Jet (endcap)","Puppi SeededCone Jet (endcap)","Tracker Jet (endcap)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -4,-2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V12V14_Jet_Endcap

./ExecutePlot \
   --DHFiles $V12DH,$V12DH,$V14DH \
   --States CaloJetForwardStringterpolate,Phase1PuppiJetForward,SeededConePuppiJetForwardStringterpolate \
   --Labels "Calo Jet (forward)","Puppi Histogrammed Jet (forward)","Puppi SeededCone Jet (forward)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -4,-2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V12V14_Jet_Forward


./ExecutePlot \
   --DHFiles $V12DH,$V14DH,$V12DH \
   --States Phase1PuppiJetBarrel,SeededConePuppiJetBarrel,TrackerJetBarrelFit \
   --Labels "Puppi Histogrammed Jet (barrel)","Puppi SeededCone Jet (barrel)","Tracker Jet (barrel)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V12V14_JetNoCalo_Barrel

./ExecutePlot \
   --DHFiles $V12DH,$V14DH,$V12DH \
   --States Phase1PuppiJetEndcap,SeededConePuppiJetEndcapStringterpolate,TrackerJetEndcapFit \
   --Labels "Puppi Histogrammed Jet (endcap)","Puppi SeededCone Jet (endcap)","Tracker Jet (endcap)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V12V14_JetNoCalo_Endcap

./ExecutePlot \
   --DHFiles $V12DH,$V14DH \
   --States Phase1PuppiJetForward,SeededConePuppiJetForwardStringterpolate \
   --Labels "Puppi Histogrammed Jet (forward)","Puppi SeededCone Jet (forward)" \
   --MaxX 350 --MaxY 700 --Threshold "95%" \
   --Color -2,-1,-3 \
   --Davignon $Davignon --OutputBase Plots/V12V14_JetNoCalo_Forward


############
# HT Plots #
############

./ExecutePlot \
   --DHFiles ${V14DH},${V12DH},${V12DH} \
   --States CaloHT,Phase1PuppiHT,TrackerHT \
   --Labels "Calo HT","Puppi Histogrammed HT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -4,-2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V12V14_HT050
./ExecutePlot \
   --DHFiles ${V14DH},${V12DH},${V12DH} \
   --States 090CaloHT,090Phase1PuppiHT,090TrackerHT \
   --Labels "Calo HT","Puppi Histogrammed HT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "90%" \
   --Color -4,-2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V12V14_HT090

./ExecutePlot \
   --DHFiles ${V12DH},${V12DH} \
   --States Phase1PuppiHT,TrackerHT \
   --Labels "Puppi Histogrammed HT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V12V14_HT050NoCalo
./ExecutePlot \
   --DHFiles ${V12DH},${V12DH} \
   --States 090Phase1PuppiHT,090TrackerHT \
   --Labels "Puppi Histogrammed HT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "90%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V12V14_HT090NoCalo


#############
# MHT Plots #
#############

./ExecutePlot \
   --DHFiles ${V12DH},${V12DH} \
   --States Phase1PuppiMHT15,TrackerMHT \
   --Labels "Puppi Histogrammed MHT","Tracker MHT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V12V14_MHT


#############
# MET Plots #
#############

./ExecutePlot \
   --DHFiles ${V12DH},${V12DH} \
   --States PuppiMET,TrackerMET \
   --Labels "Puppi MET","Tracker MET" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -1,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V12V14_MET050
./ExecutePlot \
   --DHFiles ${V12DH},${V12DH} \
   --States 090PuppiMET,090TrackerMET \
   --Labels "Puppi MET","Tracker MET" \
   --MaxX 700 --MaxY 800 --Threshold "90%" \
   --Color -1,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V12V14_MET090












