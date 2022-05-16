#!/bin/bash

V9DH=DH/CurvesV9.dh
V10DH=DH/CurvesV10.dh
V10RemakeDH=DH/CurvesV10Remake.dh
V22DH=DH/CurvesV22.dh

./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH,$V22DH \
   --States "EGTrackIDBarrel","TkElectronTrackIDBarrel","TkIsoElectronBarrel","TkIsoPhotonTrackIDBarrel" \
   --Labels "EGElectron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --MaxX 55 --MaxY 100 --Threshold "Barrel, 95%" \
   --Davignon true --OutputBase Plots/V22_EGBarrel
./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH,$V22DH \
   --States "EGTrackIDEndcap","TkElectronTrackIDEndcap","TkIsoElectronEndcap","TkIsoPhotonTrackIDEndcap" \
   --Labels "EGElectron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --MaxX 55 --MaxY 100 --Threshold "Endcap, 95%" \
   --Davignon true --OutputBase Plots/V22_EGEndcap


