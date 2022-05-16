#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file $DYLLV10,$DYLLV10,$DYLLV10,$HGGV10 \
   --numerator "EGTrackIDWideIso_EtaPT25_000000","TkElectronV2TrackIDWideIso_EtaPT25_000000","TkIsoElectronV2Wide_EtaPT25_000000","TkIsoPhotonTrackIDWide_EtaPT25_000000" \
   --denominator "auto","auto","TkElectronV2IsoWideNoMatch_EtaPT25_000000","TkPhotonTrackIDIsoWideNoMatch_EtaPT25_000000" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 25 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -1,-3,-4,-5 \
   --Davignon true --output Plots/V10Remake_001.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file $DYLLV10,$DYLLV10,$DYLLV10,$HGGV10 \
   --numerator "EGTrackIDWideIso_EtaPT10to25_000000","TkElectronV2TrackIDWideIso_EtaPT10to25_000000","TkIsoElectronV2Wide_EtaPT10to25_000000","TkIsoPhotonTrackIDWide_EtaPT10to25_000000" \
   --denominator "auto","auto","TkElectronV2IsoWideNoMatch_EtaPT10to25_000000","TkPhotonTrackIDIsoWideNoMatch_EtaPT10to25_000000" \
   --title ";Gen. #eta;Matching efficiency (p_{T} = 10-25 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -1,-3,-4,-5 \
   --Davignon true --output Plots/V10Remake_002.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file $DYLLV10,$DYLLV10,$DYLLV10,$HGGV10 \
   --numerator "EGTrackIDIso_PTEta15_000000","TkElectronV2TrackIDIso_PTEta15_000000","TkIsoElectronV2_PTEta15_000000","TkIsoPhotonTrackID_PTEta15_000000" \
   --denominator "auto","auto","TkElectronV2IsoNoMatch_PTEta15_000000","TkPhotonTrackIDIsoNoMatch_PTEta15_000000" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon true --output Plots/V10Remake_003.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file $DYLLV10,$DYLLV10,$DYLLV10,$HGGV10 \
   --numerator "EGTrackIDIso_PTEtaLarge_000000","TkElectronV2TrackIDIso_PTEtaLarge_000000","TkIsoElectronV2_PTEtaLarge_000000","TkIsoPhotonTrackID_PTEtaLarge_000000" \
   --denominator "auto","auto","TkElectronV2IsoNoMatch_PTEtaLarge_000000","TkPhotonTrackIDIsoNoMatch_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon true --output Plots/V10Remake_004.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file $DYLLV10,$DYLLV10,$DYLLV10,$HGGV10 \
   --numerator "EGTrackIDIso_PTEta15_003000","TkElectronV2TrackIDIso_PTEta15_003000","TkIsoElectronV2_PTEta15_003000","TkIsoPhotonTrackID_PTEta15_003000" \
   --denominator "EGTrackIDIso_PTEta15_000000","TkElectronV2TrackIDIso_PTEta15_000000","TkIsoElectronV2_PTEta15_000000","TkIsoPhotonTrackID_PTEta15_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (barrel, L1 p_{T} > 30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon true --output Plots/V10Remake_012.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file $DYLLV10,$DYLLV10,$DYLLV10,$HGGV10 \
   --numerator "EGTrackIDIso_PTEtaLarge_001500","TkElectronV2TrackIDIso_PTEtaLarge_001500","TkIsoElectronV2_PTEtaLarge_001500","TkIsoPhotonTrackID_PTEtaLarge_001500" \
   --denominator "EGTrackIDIso_PTEtaLarge_000000","TkElectronV2TrackIDIso_PTEtaLarge_000000","TkIsoElectronV2_PTEtaLarge_000000","TkIsoPhotonTrackID_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (endcap, L1 p_{T} > 15 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon true --output Plots/V10Remake_014.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file $DYLLV10,$DYLLV10,$DYLLV10,$HGGV10 \
   --numerator "EGTrackIDIso_PTEtaLarge_003000","TkElectronV2TrackIDIso_PTEtaLarge_003000","TkIsoElectronV2_PTEtaLarge_003000","TkIsoPhotonTrackID_PTEtaLarge_003000" \
   --denominator "EGTrackIDIso_PTEtaLarge_000000","TkElectronV2TrackIDIso_PTEtaLarge_000000","TkIsoElectronV2_PTEtaLarge_000000","TkIsoPhotonTrackID_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (endcap, L1 p_{T} > 30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon true --output Plots/V10Remake_015.pdf
./Execute \
   --label "EG Electron","EG Photon" \
   --file $DYLLV10,$HGGV10 \
   --numerator "EGTrackIDExtendedIso_PT_001500","EGExtendedIso_PT_001500" \
   --denominator "EGTrackIDExtendedIso_PT_000000","EGExtendedIso_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (|#eta| = 2.4-2.8, L1 p_{T} > 15 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon true --output Plots/V10Remake_016.pdf
./Execute \
   --label "EG Electron","EG Photon" \
   --file $DYLLV10,$HGGV10 \
   --numerator "EGTrackIDExtendedIso_PT_003000","EGExtendedIso_PT_003000" \
   --denominator "EGTrackIDExtendedIso_PT_000000","EGExtendedIso_PT_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (|#eta| = 2.4-2.8, L1 p_{T} > 30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --Davignon true --output Plots/V10Remake_017.pdf

