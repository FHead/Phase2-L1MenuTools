#!/bin/bash

V12DH=DH/CurvesV12b.dh
V14DH=DH/CurvesV14.dh
V17DH=DH/CurvesV17.dh
V17HadDH=DH/CurvesV17Had.dh

Davignon=true

############
# HT Plots #
############

./ExecutePlot \
   --DHFiles $V17HadDH,$V17HadDH,$V17HadDH \
   --States CaloHT,Phase1PuppiHT,TrackerHT \
   --Labels "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -4,-2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V17HadronicTTbar_HT050

./ExecutePlot \
   --DHFiles $V17HadDH,$V17HadDH,$V17HadDH \
   --States 090CaloHT,090Phase1PuppiHT,090TrackerHT \
   --Labels "Calo HT","Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "90%" \
   --Color -4,-2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V17HadronicTTbar_HT090

./ExecutePlot \
   --DHFiles $V17HadDH,$V17HadDH \
   --States Phase1PuppiHT,TrackerHT \
   --Labels "Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "50%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V17HadronicTTbar_HT050NoCalo

./ExecutePlot \
   --DHFiles $V17HadDH,$V17HadDH \
   --States 090Phase1PuppiHT,090TrackerHT \
   --Labels "Histogrammed PuppiHT","Tracker HT" \
   --MaxX 700 --MaxY 800 --Threshold "90%" \
   --Color -2,-3 \
   --Davignon ${Davignon} --OutputBase Plots/V17HadronicTTbar_HT090NoCalo













