#!/bin/bash

source scripts/Samples.sh

# DYLL
for I in TkMuon GMTTkMuon GMTTkMuonNStubs GMTMuon StandaloneMuon EGTrackID TkElectronTrackID TkElectron
do
   ./Execute \
      --label "$I","$I (PT > 20)" \
      --file ${DYLLV22},${DYLLV22} \
      --numerator "${i}LDR_DR_000000","${I}LDR_DRPT20_000000" \
      --denominator "simple","simple" \
      --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
      --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V22LDR_${I}.pdf
done

# HGG
for I in TkPhotonTrackID TkPhotonPVTrackID EG  
do
   ./Execute \
      --label "$I","$I (PT > 20)" \
      --file ${HGGV22},${HGGV22} \
      --numerator "${i}LDR_DR_000000","${I}LDR_DRPT20_000000" \
      --denominator "simple","simple" \
      --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
      --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V22LDR_${I}.pdf
done

# TTbar
for I in Phase1PuppiJet CaloJet TrackerJet SeededConePuppiJetWide 
do
   ./Execute \
      --label "$I","$I (PT > 20)" \
      --file ${TTbarV22},${TTbarV22} \
      --numerator "${i}LDR_DR_000000","${I}LDR_DRPT20_000000" \
      --denominator "simple","simple" \
      --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
      --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V22LDR_${I}.pdf
done

# HTauTau
for I in NNTauNoID CaloTau 
do
   ./Execute \
      --label "$I","$I (PT > 20)" \
      --file ${VBFHTauTauV22},${VBFHTauTauV22} \
      --numerator "${i}LDR_DR_000000","${I}LDR_DRPT20_000000" \
      --denominator "simple","simple" \
      --title ";#DeltaR;a.u." --xmin 0 --xmax 1 --ymin 0.001 --ymax 100 --logy true --rebin 2 \
      --Davignon ${Davignon} --legendx 0.45 --legendy 0.50 --line 0 --output Plots/V22LDR_${I}.pdf
done


