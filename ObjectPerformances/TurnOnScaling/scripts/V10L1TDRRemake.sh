#!/bin/bash

V9DH=DH/CurvesV9.dh
V10DH=DH/CurvesV10.dh
V10RemakeDH=DH/CurvesV10Remake.dh

./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH,$V10DH \
   --States "EGTrackIDBarrel","TkElectronTrackIDBarrel","TkIsoElectronBarrel","TkIsoPhotonTrackIDBarrel" \
   --Labels "EGElectron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --MaxX 55 --MaxY 100 --Threshold "Barrel, 95%" \
   --Davignon true --OutputBase Plots/V10Remake_EGBarrel
./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH,$V10DH \
   --States "EGTrackIDEndcap","TkElectronTrackIDEndcap","TkIsoElectronEndcap","TkIsoPhotonTrackIDEndcap" \
   --Labels "EGElectron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --MaxX 55 --MaxY 100 --Threshold "Endcap, 95%" \
   --Davignon true --OutputBase Plots/V10Remake_EGEndcap


./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH,$V10DH \
   --States "090NNTauTightBarrel","090NNTauLooseBarrel","090TkEGTauBarrel","090CaloTauBarrel" \
   --Labels "NNPuppiTau (Tight)","NNPuppiTau (Loose)","tkEGTau","CaloTau" \
   --MaxX 80 --MaxY 150 --Threshold "Barrel 90%" \
   --Color -1,-4,-2,-6 \
   --Davignon true --OutputBase Plots/V10Remake_TauBarrel090
./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH,$V10DH \
   --States "090NNTauTightEndcap","090NNTauLooseEndcap","090TkEGTauEndcap","090CaloTauEndcap" \
   --Labels "NNPuppiTau (Tight)","NNPuppiTau (Loose)","tkEGTau","CaloTau" \
   --MaxX 80 --MaxY 150 --Threshold "Endcap 90%" \
   --Color -1,-4,-2,-6 \
   --Davignon true --OutputBase Plots/V10Remake_TauEndcap090


./ExecutePlot \
   --DHFiles $V10DH,$V10DH \
   --States "090PuppiMET","090TrackerMET" \
   --Labels "PuppiMET","TrackerMET" \
   --MaxX 200 --MaxY 1000 --Threshold "90%" \
   --Color -1,-3 \
   --Davignon true --OutputBase Plots/V10Remake_MET090
./ExecutePlot \
   --DHFiles $V10DH,$V10DH \
   --States "TTbar090PuppiMET","TTbar090TrackerMET" \
   --Labels "PuppiMET","TrackerMET" \
   --MaxX 200 --MaxY 1000 --Threshold "90%" \
   --Color -1,-3 \
   --Davignon true --OutputBase Plots/V10RemakeTTbar_MET090

./ExecutePlot \
   --DHFiles $V10RemakeDH,$V10DH,$V10DH \
   --States "StandaloneMuonIsoB","TkMuonB","TkMuonStubB" \
   --Labels "STA Muon","TkMuon","TkMuonStub" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V10Remake_MuonBarrel
./ExecutePlot \
   --DHFiles $V10RemakeDH,$V10DH,$V10DH \
   --States "StandaloneMuonIsoO","TkMuonO","TkMuonStubO" \
   --Labels "STA Muon","TkMuon","TkMuonStub" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V10Remake_MuonOverlap
./ExecutePlot \
   --DHFiles $V10RemakeDH,$V10DH,$V10DH \
   --States "StandaloneMuonIsoE","TkMuonE","TkMuonStubE" \
   --Labels "STA Muon","TkMuon","TkMuonStub" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V10Remake_MuonEndcap
./ExecutePlot \
   --DHFiles $V10DH \
   --States "TkMuonStubExtended" \
   --Labels "TkMuonStub" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V10Remake_MuonOuter


./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH \
   --States "TTbarPFPhase1JetBarrel","TTbarTrackerJetBarrel","TTbarCaloJetBarrel" \
   --Labels "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --MaxX 200 --MaxY 800 --Threshold "95%" \
   --Color -2,-3,-4 \
   --Davignon true --OutputBase Plots/V10Remake_JetBarrel
./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH \
   --States "TTbarPFPhase1JetEndcap","TTbarTrackerJetEndcap","TTbarCaloJetEndcap" \
   --Labels "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --MaxX 200 --MaxY 800 --Threshold "95%" \
   --Color -2,-3,-4 \
   --Davignon true --OutputBase Plots/V10Remake_JetEndcap
./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH \
   --States "TTbarPFPhase1JetForward","TTbarTrackerJetForward","TTbarCaloJetForward" \
   --Labels "Histogrammed PuppiJet","Tracker Jet","Calo Jet" \
   --MaxX 200 --MaxY 800 --Threshold "95%" \
   --Color -2,-3,-4 \
   --Davignon true --OutputBase Plots/V10Remake_JetForward

./ExecutePlot \
   --DHFiles $V10DH,$V10DH \
   --States "TTbarPFPhase1JetBarrel","TTbarTrackerJetBarrel" \
   --Labels "Histogrammed PuppiJet","Tracker Jet" \
   --MaxX 200 --MaxY 800 --Threshold "95%" \
   --Color -2,-3 \
   --Davignon true --OutputBase Plots/V10RemakeNoCalo_JetBarrel
./ExecutePlot \
   --DHFiles $V10DH,$V10DH \
   --States "TTbarPFPhase1JetEndcap","TTbarTrackerJetEndcap" \
   --Labels "Histogrammed PuppiJet","Tracker Jet" \
   --MaxX 200 --MaxY 800 --Threshold "95%" \
   --Color -2,-3 \
   --Davignon true --OutputBase Plots/V10RemakeNoCalo_JetEndcap
./ExecutePlot \
   --DHFiles $V10DH,$V10DH \
   --States "TTbarPFPhase1JetForward","TTbarTrackerJetForward" \
   --Labels "Histogrammed PuppiJet","Tracker Jet" \
   --MaxX 200 --MaxY 800 --Threshold "95%" \
   --Color -2,-3 \
   --Davignon true --OutputBase Plots/V10RemakeNoCalo_JetForward


./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH \
   --States "TTbar090PFPhase1HT","TTbar090TrackerHT","TTbar090CaloHT" \
   --Labels "Histogrammed PuppiHT","Tracker HT","Calo HT" \
   --MaxX 550 --MaxY 1000 --Threshold "90%" \
   --Color -2,-3,-4 \
   --Davignon true --OutputBase Plots/V10Remake_HT
./ExecutePlot \
   --DHFiles $V10DH,$V10DH,$V10DH \
   --States "HadronicTTbar090PFPhase1HT","HadronicTTbar090TrackerHT","HadronicTTbar090CaloHT" \
   --Labels "Histogrammed PuppiHT","Tracker HT","Calo HT" \
   --MaxX 550 --MaxY 1000 --Threshold "90%" \
   --Color -2,-3,-4 \
   --Davignon true --OutputBase Plots/V10RemakeHadronic_HT

./ExecutePlot \
   --DHFiles $V10DH,$V10DH \
   --States "TTbar090PFPhase1HT","TTbar090TrackerHT" \
   --Labels "Histogrammed PuppiHT","Tracker HT" \
   --MaxX 550 --MaxY 1000 --Threshold "90%" \
   --Color -2,-3 \
   --Davignon true --OutputBase Plots/V10RemakeNoCalo_HT
./ExecutePlot \
   --DHFiles $V10DH,$V10DH \
   --States "HadronicTTbar090PFPhase1HT","HadronicTTbar090TrackerHT" \
   --Labels "Histogrammed PuppiHT","Tracker HT" \
   --MaxX 550 --MaxY 1000 --Threshold "90%" \
   --Color -2,-3 \
   --Davignon true --OutputBase Plots/V10RemakeHadronicNoCalo_HT

