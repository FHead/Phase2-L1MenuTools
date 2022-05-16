#!/bin/bash

source scripts/Samples.sh

./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDWideIso_EtaPT25_000000","TkElectronTrackIDWideIso_EtaPT25_000000","TkIsoElectronWide_EtaPT25_000000","TkIsoPhotonTrackIDWide_EtaPT25_000000" \
   --denominator "auto","auto","TkElectronIsoWideNoMatch_EtaPT25_000000","TkPhotonTrackIDIsoWideNoMatch_EtaPT25_000000" \
   --title ";Gen. #eta;Matching efficiency (p_{T} > 25 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_001.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDWideIso_EtaPT10to25_000000","TkElectronTrackIDWideIso_EtaPT10to25_000000","TkIsoElectronWide_EtaPT10to25_000000","TkIsoPhotonTrackIDWide_EtaPT10to25_000000" \
   --denominator "auto","auto","TkElectronIsoWideNoMatch_EtaPT10to25_000000","TkPhotonTrackIDIsoWideNoMatch_EtaPT10to25_000000" \
   --title ";Gen. #eta;Matching efficiency (10 < p_{T} < 25 GeV)" --xmin -3.0 --xmax 3.0 --ymin 0.00 --ymax 1.10 --rebin 1 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_002.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEta15_000000","TkElectronTrackIDIso_PTEta15_000000","TkIsoElectron_PTEta15_000000","TkIsoPhotonTrackID_PTEta15_000000" \
   --denominator "auto","auto","TkElectronIsoNoMatch_PTEta15_000000","TkPhotonTrackIDIsoNoMatch_PTEta15_000000" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (barrel)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_003.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEtaLarge_000000","TkElectronTrackIDIso_PTEtaLarge_000000","TkIsoElectron_PTEtaLarge_000000","TkIsoPhotonTrackID_PTEtaLarge_000000" \
   --denominator "auto","auto","TkElectronIsoNoMatch_PTEtaLarge_000000","TkPhotonTrackIDIsoNoMatch_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Matching efficiency (endcap)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_004.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEta15_001500","TkElectronTrackIDIso_PTEta15_001500","TkIsoElectron_PTEta15_001500","TkIsoPhotonTrackID_PTEta15_001500" \
   --denominator "EGTrackIDIso_PTEta15_000000","TkElectronTrackIDIso_PTEta15_000000","TkIsoElectron_PTEta15_000000","TkIsoPhotonTrackID_PTEta15_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (barrel, p_{T} > 15 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_005.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEta15_003000","TkElectronTrackIDIso_PTEta15_003000","TkIsoElectron_PTEta15_003000","TkIsoPhotonTrackID_PTEta15_003000" \
   --denominator "EGTrackIDIso_PTEta15_000000","TkElectronTrackIDIso_PTEta15_000000","TkIsoElectron_PTEta15_000000","TkIsoPhotonTrackID_PTEta15_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (barrel, p_{T} > 30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_006.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEta15_005000","TkElectronTrackIDIso_PTEta15_005000","TkIsoElectron_PTEta15_005000","TkIsoPhotonTrackID_PTEta15_005000" \
   --denominator "EGTrackIDIso_PTEta15_000000","TkElectronTrackIDIso_PTEta15_000000","TkIsoElectron_PTEta15_000000","TkIsoPhotonTrackID_PTEta15_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (barrel, p_{T} > 50 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_007.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEtaLarge_001500","TkElectronTrackIDIso_PTEtaLarge_001500","TkIsoElectron_PTEtaLarge_001500","TkIsoPhotonTrackID_PTEtaLarge_001500" \
   --denominator "EGTrackIDIso_PTEtaLarge_000000","TkElectronTrackIDIso_PTEtaLarge_000000","TkIsoElectron_PTEtaLarge_000000","TkIsoPhotonTrackID_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (endcap, p_{T} > 15 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_008.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEtaLarge_003000","TkElectronTrackIDIso_PTEtaLarge_003000","TkIsoElectron_PTEtaLarge_003000","TkIsoPhotonTrackID_PTEtaLarge_003000" \
   --denominator "EGTrackIDIso_PTEtaLarge_000000","TkElectronTrackIDIso_PTEtaLarge_000000","TkIsoElectron_PTEtaLarge_000000","TkIsoPhotonTrackID_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (endcap, p_{T} > 30 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_009.pdf
./Execute \
   --label "EG Electron","TkElectron","TkIsoElectron","TkIsoPhoton" \
   --file ${DYLLV22},${DYLLV22},${DYLLV22},${HGGV22} \
   --numerator "EGTrackIDIso_PTEtaLarge_005000","TkElectronTrackIDIso_PTEtaLarge_005000","TkIsoElectron_PTEtaLarge_005000","TkIsoPhotonTrackID_PTEtaLarge_005000" \
   --denominator "EGTrackIDIso_PTEtaLarge_000000","TkElectronTrackIDIso_PTEtaLarge_000000","TkIsoElectron_PTEtaLarge_000000","TkIsoPhotonTrackID_PTEtaLarge_000000" \
   --title ";Gen. p_{T} (GeV);Trigger efficiency (endcap, p_{T} > 50 GeV)" --xmin 0 --xmax 150 --ymin 0.00 --ymax 1.10 --rebin 2 \
   --color -1,-3,-4,-5 \
   --Davignon ${Davignon} --output Plots/V22_EG_010.pdf
