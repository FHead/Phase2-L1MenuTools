#!/bin/bash

V22DH=DH/CurvesV22.dh

./ExecutePlot \
   --DHFiles $V22DH,$V22DH \
   --States "GMTMuonB","GMTTkMuonB" \
   --Labels "GMT Muon","GMT TkMuon" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V22Emulation_MuonBarrel
./ExecutePlot \
   --DHFiles $V22DH,$V22DH,$V22DH \
   --States "GMTMuonO","GMTMuonQualO","GMTTkMuonO" \
   --Labels "GMT Muon (No qual)","GMT Muon","GMT TkMuon" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V22Emulation_MuonOverlap
./ExecutePlot \
   --DHFiles $V22DH,$V22DH \
   --States "GMTMuonQualO","GMTTkMuonO" \
   --Labels "GMT Muon","GMT TkMuon" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V22Emulation_MuonQualOverlap
./ExecutePlot \
   --DHFiles $V22DH,$V22DH \
   --States "GMTMuonEFit","GMTTkMuonE" \
   --Labels "GMT Muon","GMT TkMuon" \
   --MaxX 40 --MaxY 60 --Threshold "95%" \
   --Davignon true --OutputBase Plots/V22Emulation_MuonEndcap

