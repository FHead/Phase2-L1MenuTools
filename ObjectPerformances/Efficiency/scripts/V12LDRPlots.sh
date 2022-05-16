#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "TkMuon","TkMuon (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "TkMuonLDR_DR_000000","TkMuonLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_001.pdf
./Execute \
   --label "GMTTkMuon","GMTTkMuon (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTTkMuonLDR_DR_000000","GMTTkMuonLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_002.pdf
./Execute \
   --label "GMTMuon","GMTMuon (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "GMTMuonLDR_DR_000000","GMTMuonLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_003.pdf
./Execute \
   --label "StandaloneMuon","StandaloneMuon (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "StandaloneMuonLDR_DR_000000","StandaloneMuonLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_004.pdf
./Execute \
   --label "TkPhoton","TkPhoton (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "TkPhotonTrackIDLDR_DR_000000","TkPhotonTrackIDLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_005.pdf
./Execute \
   --label "TkPhotonPV","TkPhotonPV (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "TkPhotonPVTrackIDLDR_DR_000000","TkPhotonPVTrackIDLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_006.pdf
./Execute \
   --label "EG","EG (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "EGLDR_DR_000000","EGLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_007.pdf
./Execute \
   --label "EGTrackID","EGTrackID (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "EGTrackIDLDR_DR_000000","EGTrackIDLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_008.pdf
./Execute \
   --label "TkElectron","TkElectron (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "TkElectronLDR_DR_000000","TkElectronLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_009.pdf
./Execute \
   --label "TkElectronTrackID","TkElectronTrackID (PT > 10)" \
   --file ${DYLLV12},${DYLLV12} \
   --numerator "TkElectronTrackIDLDR_DR_000000","TkElectronTrackIDLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_010.pdf
./Execute \
   --label "Phase1PuppiJet","Phase1PuppiJet (PT > 10)" \
   --file ${TTbarV12},${TTbarV12} \
   --numerator "Phase1PuppiJetLDR_DR_000000","Phase1PuppiJetLDR_DRPT10_000000" \
   --denominator "simple","simple" \
   --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
   --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V12LDR_011.pdf

