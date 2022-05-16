#!/bin/bash

V12DH=DH/CurvesV12b.dh
V14DH=DH/CurvesV14.dh
V17DH=DH/CurvesV17.dh

Davignon=true

#############
# MHT Plots #
#############

./ExecutePlot \
   --DHFiles ${V17DH},${V17DH},${V17DH},${V17DH} \
   --States Phase1PuppiMHT15,TrackerMHT,090Phase1PuppiMHT15Fit,090TrackerMHTLowFit \
   --Labels "Histogrammed PuppiMHT 50%","Tracker MHT 50%","Histogrammed Puppi MHT 90%","Tracker MHT 90%" \
   --MaxX 700 --MaxY 800 --Threshold "Threshold" \
   --Color -2,-3,-4,-5 \
   --Davignon ${Davignon} --OutputBase Plots/V17_MHT












