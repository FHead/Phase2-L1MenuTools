#!/bin/bash

DH=DH/CurvesV18.dh

./ExecutePlot \
   --DHFiles $DH,$DH \
   --States "090HHNNTauLooseFitBarrel","090CaloTauFitBarrel" \
   --Labels "NNPuppiTau","CaloTau" \
   --MaxX 80 --MaxY 150 --Threshold "Barrel 90%" \
   --Color -4,-6 \
   --Davignon true --OutputBase Plots/V18_TauBarrel

./ExecutePlot \
   --DHFiles $DH,$DH \
   --States "090HHNNTauLooseFitEndcap","090CaloTauFitEndcap" \
   --Labels "NNPuppiTau","CaloTau" \
   --MaxX 80 --MaxY 150 --Threshold "Endcap 90%" \
   --Color -4,-6 \
   --Davignon true --OutputBase Plots/V18_TauEndcap

./ExecutePlot \
   --DHFiles $DH,$DH,$DH,$DH \
   --States "090HHNNTauLooseFitBarrel","090HHNNTau2VtxLooseFitBarrel","090NNTauLooseFitBarrel","090NNTau2VtxLooseFitBarrel" \
   --Labels "NNPuppiTau (HH)","NNPuppiTau2Vtx (HH)","NNPuppiTau (H)","NNPuppiTau2Vtx (H)" \
   --MaxX 80 --MaxY 150 --Threshold "Barrel 90%" \
   --Color -4,-1,-2,-3 \
   --Davignon true --OutputBase Plots/V18_NNTauBarrel

./ExecutePlot \
   --DHFiles $DH,$DH,$DH,$DH \
   --States "090HHNNTauLooseFitEndcap","090HHNNTau2VtxLooseFitEndcap","090NNTauLooseFitEndcap","090NNTau2VtxLooseFitEndcap" \
   --Labels "NNPuppiTau (HH)","NNPuppiTau2Vtx (HH)","NNPuppiTau (H)","NNPuppiTau2Vtx (H)" \
   --MaxX 80 --MaxY 150 --Threshold "Endcap 90%" \
   --Color -4,-1,-2,-3 \
   --Davignon true --OutputBase Plots/V18_NNTauEndcap

./ExecutePlot \
   --DHFiles $DH,$DH \
   --States "090HHNNTauLooseFitBarrel","090NNTauLooseFitBarrel" \
   --Labels "NNPuppiTau (HH)","NNPuppiTau (H)" \
   --MaxX 80 --MaxY 150 --Threshold "Barrel 90%" \
   --Color -4,-2 \
   --Davignon true --OutputBase Plots/V18_NNTau1VtxBarrel

./ExecutePlot \
   --DHFiles $DH,$DH \
   --States "090HHNNTauLooseFitEndcap","090NNTauLooseFitEndcap" \
   --Labels "NNPuppiTau (HH)","NNPuppiTau (H)" \
   --MaxX 80 --MaxY 150 --Threshold "Endcap 90%" \
   --Color -4,-2 \
   --Davignon true --OutputBase Plots/V18_NNTau1VtxEndcap





