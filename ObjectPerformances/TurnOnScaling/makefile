DYLLV10p7      = Outputs/DYLL_V10p7_20211027.root

DYLLV11p3      = Outputs/DYLL_V11p3_20210208.root
PhotonV11p3    = Outputs/FlatPhoton_V11p3_20210208.root
TTbarV11p3     = Outputs/TTbar_V11p3_20210208.root
VBFTauTauV11p3 = Outputs/VBFTauTau_V11p3_20210208.root
HGGV11p3       = Outputs/HGG_V11p3_20210208.root

DYLLV12        = Outputs/DYLL_V12_20211117.root
DYLLV12GMT     = Outputs/DYLL_V12_20220112GMT.root
DYLLV22        = Outputs/DYLL_V22_20220412.root
HGGV12         = Outputs/HGG_V12_20211117.root
HGGV22         = Outputs/HGG_V22_20220412.root
TTbarV12       = Outputs/TTbar_V12_20211117.root
TTbarV12p1     = Outputs/TTbar_V12p1_20211207.root
TTbarV12p1MET  = Outputs/TTbar_V12p1_20211207MET.root
TTbarV14       = Outputs/TTbar_V14_20211217.root
TTbarV14HT     = Outputs/TTbar_V14_20211217HT.root
TTbarV17       = Outputs/TTbar_V17_20220207.root
TTbarV22       = Outputs/TTbar_V22_20220412.root

HadronicTTbarV17  = Outputs/HadronicTTbar_V17_20220207.root

VBFHTauTauV18  = Outputs/VBFHTauTau_V18_20220207Tau.root
VBFHTauTauV21  = Outputs/VBFHTauTau_V21_20220207.root
VBFHTauTauV22  = Outputs/VBFHTauTau_V22_20220412.root

HHBBTauTauV18  = Outputs/HHBBTauTau_V18_20220207Tau.root
HHBBTauTauV20  = Outputs/HHBBTauTau_V20_20220207.root
HHBBTauTauV22  = Outputs/HHBBTauTau_V22_20220412.root

V10RemakeDH    = DH/CurvesV10Remake.dh
V12DH          = DH/CurvesV12b.dh
V14DH          = DH/CurvesV14.dh
V17DH          = DH/CurvesV17.dh
V17HadDH       = DH/CurvesV17Had.dh
V18DH          = DH/CurvesV18.dh
V20DH          = DH/CurvesV20.dh
V21DH          = DH/CurvesV21.dh
V22DH          = DH/CurvesV22.dh

default: Prepare Execute ExecutePlot Export

Prepare:
	mkdir -p DH Fits Plots Text
	ln -sf $(ProjectBase)/CommonCode/DHQuery .

Clean:
	rm -f Execute ExecutePlot Export DHQuery

Debug: ExecutePlot
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "090NNTauLooseBarrel","090NNTauLooseEndcap" \
		--Labels "NNTau loose (barrel)","NNTau loose (endcap)" \
		--MaxX 80 --MaxY 300 --Threshold "90%" \
		--OutputBase Plots/V11p3_TauLoose090

Execute: source/MakeScalingPlot.cpp include/HelperFunctions.h
	g++ `root-config --cflags --glibs` source/MakeScalingPlot.cpp -o Execute -Iinclude -I$(ProjectBase)/CommonCode/include

ExecutePlot: source/V11Scaling.cpp
	g++ `root-config --cflags --glibs` source/V11Scaling.cpp -o ExecutePlot -Iinclude -I$(ProjectBase)/CommonCode/include

Export: source/ExportTextFile.cpp
	g++ `root-config --cflags --glibs` source/ExportTextFile.cpp -o Export -Iinclude -I$(ProjectBase)/CommonCode/include

RunV10STAMuon: Execute
	./Execute --input $(DYLLV10p7) --output Fits/V10Remake_Fits_STAMuon.pdf --curves $(V10RemakeDH) \
		--reference 0.95 --DoSTAMuon true
	./Execute --input $(DYLLV10p7) --output Fits/V10Remake_Fits_STAMuonQual.pdf --curves $(V10RemakeDH) \
		--reference 0.95 --DoSTAMuonQual true

RunV22: RunV22Tau RunV22Muon RunV22EG RunV22JetHT

RunV22JetHT: Execute
	./Execute --input $(TTbarV22)   --output Fits/V22_Fits_Phase1PuppiJet.pdf   --curves $(V22DH) \
		--reference 0.95 --DoPhase1PuppiJet true
	./Execute --input $(TTbarV22)   --output Fits/V22_Fits_Phase1PuppiHT.pdf    --curves $(V22DH) \
		--reference 0.50 --DoPhase1PuppiHT true
	./Execute --input $(TTbarV22)   --output Fits/V22_Fits_Phase1PuppiMHT.pdf   --curves $(V22DH) \
		--reference 0.50 --DoPhase1PuppiMHT true
	./Execute --input $(TTbarV22)   --output Fits/V22_Fits_Phase1PuppiMHT090.pdf   --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoPhase1PuppiMHT true
	./Execute --input $(TTbarV22)   --output Fits/V22_Fits_PuppiMET.pdf         --curves $(V22DH) \
		--reference 0.50 --DoPuppiMET true
	./Execute --input $(TTbarV22)   --output Fits/V22_Fits090_Phase1PuppiHT.pdf --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoPhase1PuppiHT true
	./Execute --input $(TTbarV22)   --output Fits/V22_Fits090_PuppiMET.pdf      --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoPuppiMET true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_CaloJet.pdf            --curves $(V22DH) \
		--reference 0.95 --DoCaloJet true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_TrackerJet.pdf         --curves $(V22DH) \
		--reference 0.95 --DoTrackerJet true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_TrackerHT.pdf          --curves $(V22DH) \
		--reference 0.50 --DoTrackerHT true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_TrackerMHT.pdf         --curves $(V22DH) \
		--reference 0.50 --DoTrackerMHT true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_TrackerMHT090.pdf      --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoTrackerMHT true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_TrackerMET.pdf         --curves $(V22DH) \
		--reference 0.50 --DoTrackerMET true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits090_TrackerHT.pdf       --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoTrackerHT true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits090_TrackerMET.pdf      --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoTrackerMET true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_SeededConePuppiJet.pdf --curves $(V22DH) \
		--reference 0.95 --DoSeededConePuppiJet true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_CaloHT.pdf             --curves $(V22DH) \
		--reference 0.50 --DoCaloHT true
	./Execute --input $(TTbarV22) --output Fits/V22_Fits_CaloHT090.pdf          --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoCaloHT true

RunV22EG: Execute
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_EGElectron.pdf      --curves $(V22DH) \
		--reference 0.95 --DoEGTrack true
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_TkElectron.pdf      --curves $(V22DH) \
		--reference 0.95 --DoElectron true
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_TkIsoElectron.pdf   --curves $(V22DH) \
		--reference 0.95 --DoIsoElectron true
	./Execute --input $(HGGV22)     --output Fits/V22_Fits_TkIsoPhoton.pdf     --curves $(V22DH) \
		--reference 0.95 --DoPhoton true
	./Execute --input $(HGGV22)     --output Fits/V22_Fits_TkIsoPhotonPV.pdf   --curves $(V22DH) \
		--reference 0.95 --DoPhotonPV true

RunV22Muon: Execute
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_STAMuon.pdf         --curves $(V22DH) \
		--reference 0.95 --DoSTAMuonQual true
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_TkMuon.pdf          --curves $(V22DH) \
		--reference 0.95 --DoTkMuonQual true
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_GMTMuon.pdf         --curves $(V22DH) \
		--reference 0.95 --DoGMTMuon true
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_GMTMuonQual.pdf     --curves $(V22DH) \
		--reference 0.95 --DoGMTMuonQual true
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_GMTTkMuon.pdf       --curves $(V22DH) \
		--reference 0.95 --DoGMTTkMuon true
	./Execute --input $(DYLLV22)    --output Fits/V22_Fits_GMTTkMuonNStubs.pdf --curves $(V22DH) \
		--reference 0.95 --DoGMTTkMuonNStubs true

RunV22Tau: Execute
	./Execute --input $(HHBBTauTauV22) --output Fits/V22_Fits_CaloTau.pdf        --curves $(V22DH) \
		--reference 0.50 --DoCaloTau true
	./Execute --input $(HHBBTauTauV22) --output Fits/V22_Fits_CaloTau090.pdf     --curves $(V22DH) \
		--prefix 090 --reference 0.90 --DoCaloTau true
	# ./Execute --input $(VBFHTauTauV22) --output Fits/V22_Fits_NNTau.pdf          --curves $(V22DH) \
	# 	--reference 0.50 --DoNNTauLoose true
	# ./Execute --input $(VBFHTauTauV22) --output Fits/V22_Fits_NNTau2Vtx.pdf      --curves $(V22DH) \
	# 	--reference 0.50 --DoNNTau2VtxLoose true
	# ./Execute --input $(VBFHTauTauV22) --output Fits/V22_Fits_NNTau090.pdf       --curves $(V22DH) \
	# 	--prefix 090 --reference 0.90 --DoNNTauLoose true
	# ./Execute --input $(VBFHTauTauV22) --output Fits/V22_Fits_NNTau2Vtx090.pdf   --curves $(V22DH) \
	# 	--prefix 090 --reference 0.90 --DoNNTau2VtxLoose true
	# ./Execute --input $(HHBBTauTauV22) --output Fits/V22_Fits_HHNNTau.pdf        --curves $(V22DH) \
	# 	--prefix HH --reference 0.50 --DoNNTauLoose true
	# ./Execute --input $(HHBBTauTauV22) --output Fits/V22_Fits_HHNNTau2Vtx.pdf    --curves $(V22DH) \
	# 	--prefix HH --reference 0.50 --DoNNTau2VtxLoose true
	# ./Execute --input $(HHBBTauTauV22) --output Fits/V22_Fits_HHNNTau090.pdf     --curves $(V22DH) \
	# 	--prefix 090HH --reference 0.90 --DoNNTauLoose true
	# ./Execute --input $(HHBBTauTauV22) --output Fits/V22_Fits_HHNNTau2Vtx090.pdf --curves $(V22DH) \
	# 	--prefix 090HH --reference 0.90 --DoNNTau2VtxLoose true

RunV20V21: Execute
	./Execute --input $(VBFHTauTauV21) --output Fits/V21_Fits_NNTau.pdf          --curves $(V21DH) \
		--reference 0.50 --DoNNTauLoose true
	./Execute --input $(VBFHTauTauV21) --output Fits/V21_Fits_NNTau2Vtx.pdf      --curves $(V21DH) \
		--reference 0.50 --DoNNTau2VtxLoose true
	./Execute --input $(VBFHTauTauV21) --output Fits/V21_Fits_NNTau090.pdf       --curves $(V21DH) \
		--prefix 090 --reference 0.90 --DoNNTauLoose true
	./Execute --input $(VBFHTauTauV21) --output Fits/V21_Fits_NNTau2Vtx090.pdf   --curves $(V21DH) \
		--prefix 090 --reference 0.90 --DoNNTau2VtxLoose true
	./Execute --input $(HHBBTauTauV20) --output Fits/V20_Fits_HHNNTau.pdf        --curves $(V20DH) \
		--prefix HH --reference 0.50 --DoNNTauLoose true
	./Execute --input $(HHBBTauTauV20) --output Fits/V20_Fits_HHNNTau2Vtx.pdf    --curves $(V20DH) \
		--prefix HH --reference 0.50 --DoNNTau2VtxLoose true
	./Execute --input $(HHBBTauTauV20) --output Fits/V20_Fits_HHNNTau090.pdf     --curves $(V20DH) \
		--prefix 090HH --reference 0.90 --DoNNTauLoose true
	./Execute --input $(HHBBTauTauV20) --output Fits/V20_Fits_HHNNTau2Vtx090.pdf --curves $(V20DH) \
		--prefix 090HH --reference 0.90 --DoNNTau2VtxLoose true

RunV18: Execute
	./Execute --input $(HHBBTauTauV18) --output Fits/V18_Fits_CaloTau.pdf        --curves $(V18DH) \
		--reference 0.50 --DoCaloTau true
	./Execute --input $(HHBBTauTauV18) --output Fits/V18_Fits_CaloTau090.pdf     --curves $(V18DH) \
		--prefix 090 --reference 0.90 --DoCaloTau true
	# ./Execute --input $(HHBBTauTauV18) --output Fits/V18_Fits_NNTau.pdf          --curves $(V18DH) \
	# 	--reference 0.50 --DoNNTauLoose true
	# ./Execute --input $(VBFHTauTauV18) --output Fits/V18_Fits_NNTau2Vtx.pdf      --curves $(V18DH) \
	# 	--reference 0.50 --DoNNTau2VtxLoose true
	# ./Execute --input $(VBFHTauTauV18) --output Fits/V18_Fits_NNTau090.pdf       --curves $(V18DH) \
	# 	--prefix 090 --reference 0.90 --DoNNTauLoose true
	# ./Execute --input $(VBFHTauTauV18) --output Fits/V18_Fits_NNTau2Vtx090.pdf   --curves $(V18DH) \
	# 	--prefix 090 --reference 0.90 --DoNNTau2VtxLoose true
	# ./Execute --input $(HHBBTauTauV18) --output Fits/V18_Fits_HHNNTau.pdf        --curves $(V18DH) \
	# 	--prefix HH --reference 0.50 --DoNNTauLoose true
	# ./Execute --input $(HHBBTauTauV18) --output Fits/V18_Fits_HHNNTau2Vtx.pdf    --curves $(V18DH) \
	# 	--prefix HH --reference 0.50 --DoNNTau2VtxLoose true
	# ./Execute --input $(HHBBTauTauV18) --output Fits/V18_Fits_HHNNTau090.pdf     --curves $(V18DH) \
	# 	--prefix 090HH --reference 0.90 --DoNNTauLoose true
	# ./Execute --input $(HHBBTauTauV18) --output Fits/V18_Fits_HHNNTau2Vtx090.pdf --curves $(V18DH) \
	# 	--prefix 090HH --reference 0.90 --DoNNTau2VtxLoose true

RunV17: Execute
	# ./Execute --input $(TTbarV17)   --output Fits/V17_Fits_Phase1PuppiJet.pdf   --curves $(V17DH) \
	# 	--reference 0.95 --DoPhase1PuppiJet true
	# ./Execute --input $(TTbarV17)   --output Fits/V17_Fits_Phase1PuppiHT.pdf    --curves $(V17DH) \
	# 	--reference 0.50 --DoPhase1PuppiHT true
	# ./Execute --input $(TTbarV17)   --output Fits/V17_Fits_Phase1PuppiMHT.pdf   --curves $(V17DH) \
	# 	--reference 0.50 --DoPhase1PuppiMHT true
	# ./Execute --input $(TTbarV17)   --output Fits/V17_Fits_Phase1PuppiMHT090.pdf   --curves $(V17DH) \
	# 	--prefix 090 --reference 0.90 --DoPhase1PuppiMHT true
	# ./Execute --input $(TTbarV17)   --output Fits/V17_Fits_PuppiMET.pdf         --curves $(V17DH) \
	# 	--reference 0.50 --DoPuppiMET true
	# ./Execute --input $(TTbarV17)   --output Fits/V17_Fits090_Phase1PuppiHT.pdf --curves $(V17DH) \
	# 	--prefix 090 --reference 0.90 --DoPhase1PuppiHT true
	# ./Execute --input $(TTbarV17)   --output Fits/V17_Fits090_PuppiMET.pdf      --curves $(V17DH) \
	# 	--prefix 090 --reference 0.90 --DoPuppiMET true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_CaloJet.pdf            --curves $(V17DH) \
	# 	--reference 0.95 --DoCaloJet true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_TrackerJet.pdf         --curves $(V17DH) \
	# 	--reference 0.95 --DoTrackerJet true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_TrackerHT.pdf          --curves $(V17DH) \
	# 	--reference 0.50 --DoTrackerHT true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_TrackerMHT.pdf         --curves $(V17DH) \
	# 	--reference 0.50 --DoTrackerMHT true
	./Execute --input $(TTbarV17) --output Fits/V17_Fits_TrackerMHT090.pdf      --curves $(V17DH) \
		--prefix 090 --reference 0.90 --DoTrackerMHT true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_TrackerMET.pdf         --curves $(V17DH) \
	# 	--reference 0.50 --DoTrackerMET true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits090_TrackerHT.pdf       --curves $(V17DH) \
	# 	--prefix 090 --reference 0.90 --DoTrackerHT true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits090_TrackerMET.pdf      --curves $(V17DH) \
	# 	--prefix 090 --reference 0.90 --DoTrackerMET true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_SeededConePuppiJet.pdf --curves $(V17DH) \
	# 	--reference 0.95 --DoSeededConePuppiJet true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_CaloHT.pdf             --curves $(V17DH) \
	# 	--reference 0.50 --DoCaloHT true
	# ./Execute --input $(TTbarV17) --output Fits/V17_Fits_CaloHT090.pdf          --curves $(V17DH) \
	# 	--prefix 090 --reference 0.90 --DoCaloHT true
	# ./Execute --input $(HadronicTTbarV17) --output Fits/V17Had_Fits_Phase1PuppiHT.pdf    --curves $(V17HadDH) \
	# 	--reference 0.50 --DoPhase1PuppiHT true
	# ./Execute --input $(HadronicTTbarV17) --output Fits/V17Had_Fits090_Phase1PuppiHT.pdf --curves $(V17HadDH) \
	# 	--prefix 090 --reference 0.90 --DoPhase1PuppiHT true
	# ./Execute --input $(HadronicTTbarV17) --output Fits/V17Had_Fits_TrackerHT.pdf        --curves $(V17HadDH) \
	# 	--reference 0.50 --DoTrackerHT true
	# ./Execute --input $(HadronicTTbarV17) --output Fits/V17Had_Fits090_TrackerHT.pdf     --curves $(V17HadDH) \
	# 	--prefix 090 --reference 0.90 --DoTrackerHT true
	# ./Execute --input $(HadronicTTbarV17) --output Fits/V17Had_Fits_CaloHT.pdf           --curves $(V17HadDH) \
	# 	--reference 0.50 --DoCaloHT true
	# ./Execute --input $(HadronicTTbarV17) --output Fits/V17Had_Fits_CaloHT090.pdf        --curves $(V17HadDH) \
	# 	--prefix 090 --reference 0.90 --DoCaloHT true


RunV12: Execute
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_STAMuon.pdf         --curves $(V12DH) \
	# 	--reference 0.95 --DoSTAMuonQual true
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_TkMuon.pdf          --curves $(V12DH) \
	# 	--reference 0.95 --DoTkMuonQual true
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_GMTMuon.pdf         --curves $(V12DH) \
	# 	--reference 0.95 --DoGMTMuon true
	./Execute --input $(DYLLV12GMT) --output Fits/V12_Fits_GMTMuonQual.pdf     --curves $(V12DH) \
		--reference 0.95 --DoGMTMuonQual true
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_GMTTkMuon.pdf       --curves $(V12DH) \
	# 	--reference 0.95 --DoGMTTkMuon true
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_GMTTkMuonNStubs.pdf --curves $(V12DH) \
	# 	--reference 0.95 --DoGMTTkMuonNStubs true
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_EGElectron.pdf      --curves $(V12DH) \
	# 	--reference 0.95 --DoEGTrack true
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_TkElectron.pdf      --curves $(V12DH) \
	# 	--reference 0.95 --DoElectron true
	# ./Execute --input $(DYLLV12)    --output Fits/V12_Fits_TkIsoElectron.pdf   --curves $(V12DH) \
	# 	--reference 0.95 --DoIsoElectron true
	# ./Execute --input $(HGGV12)     --output Fits/V12_Fits_TkIsoPhoton.pdf     --curves $(V12DH) \
	# 	--reference 0.95 --DoPhoton true
	# ./Execute --input $(HGGV12)     --output Fits/V12_Fits_TkIsoPhotonPV.pdf   --curves $(V12DH) \
	# 	--reference 0.95 --DoPhotonPV true
	# ./Execute --input $(TTbarV12)   --output Fits/V12_Fits_Phase1PuppiJet.pdf  --curves $(V12DH) \
	# 	--reference 0.95 --DoPhase1PuppiJet true
	# ./Execute --input $(TTbarV12)   --output Fits/V12_Fits_Phase1PuppiHT.pdf   --curves $(V12DH) \
	# 	--reference 0.50 --DoPhase1PuppiHT true
	# ./Execute --input $(TTbarV12)   --output Fits/V12_Fits_Phase1PuppiMHT.pdf  --curves $(V12DH) \
	# 	--reference 0.50 --DoPhase1PuppiMHT true
	# ./Execute --input $(TTbarV12)   --output Fits/V12_Fits_PuppiMET.pdf        --curves $(V12DH) \
	# 	--reference 0.50 --DoPuppiMET true
	# ./Execute --input $(TTbarV12)   --output Fits/V12_Fits090_Phase1PuppiHT.pdf   --curves $(V12DH) \
	# 	--prefix 090 --reference 0.90 --DoPhase1PuppiHT true
	# ./Execute --input $(TTbarV12)   --output Fits/V12_Fits090_PuppiMET.pdf        --curves $(V12DH) \
	# 	--prefix 090 --reference 0.90 --DoPuppiMET true
	# ./Execute --input $(TTbarV12p1) --output Fits/V12p1_Fits_CaloJet.pdf       --curves $(V12DH) \
	# 	--reference 0.95 --DoCaloJet true
	# ./Execute --input $(TTbarV12p1) --output Fits/V12p1_Fits_TrackerJet.pdf    --curves $(V12DH) \
	# 	--reference 0.95 --DoTrackerJet true
	# ./Execute --input $(TTbarV12p1) --output Fits/V12p1_Fits_TrackerHT.pdf     --curves $(V12DH) \
	# 	--reference 0.50 --DoTrackerHT true
	# ./Execute --input $(TTbarV12p1) --output Fits/V12p1_Fits_TrackerMHT.pdf    --curves $(V12DH) \
	# 	--reference 0.50 --DoTrackerMHT true
	# ./Execute --input $(TTbarV12p1MET) --output Fits/V12p1_Fits_TrackerMET.pdf --curves $(V12DH) \
	# 	--reference 0.50 --DoTrackerMET true
	# ./Execute --input $(TTbarV12p1) --output Fits/V12p1_Fits090_TrackerHT.pdf     --curves $(V12DH) \
	# 	--prefix 090 --reference 0.90 --DoTrackerHT true
	# ./Execute --input $(TTbarV12p1MET) --output Fits/V12p1_Fits090_TrackerMET.pdf --curves $(V12DH) \
	# 	--prefix 090 --reference 0.90 --DoTrackerMET true

RunV14: Execute
	# ./Execute --input $(TTbarV14) --output Fits/V14_Fits_SeededConePuppiJet.pdf --curves $(V14DH) \
	# 	--reference 0.95 --DoSeededConePuppiJet true
	./Execute --input $(TTbarV14HT) --output Fits/V14_Fits_CaloHT.pdf --curves $(V14DH) \
		--reference 0.50 --DoCaloHT true
	./Execute --input $(TTbarV14HT) --output Fits/V14_Fits_CaloHT090.pdf --curves $(V14DH) \
		--prefix 090 --reference 0.90 --DoCaloHT true


RunV14Scaling: ExecutePlot
	./ExecutePlot \
		--DHFiles $(V14DH),$(V14DH),$(V14DH) \
		--States SeededConePuppiJetBarrel,SeededConePuppiJetEndcapStringterpolate,SeededConePuppiJetForwardStringterpolate \
		--Labels "SeededConePuppiJet (barrel)","SeededConePuppiJet (endcap)","SeededConePuppiJet (forward)" \
		--MaxX 200 --MaxY 500 --Threshold "95%" \
		--OutputBase Plots/V14_SeededConePuppiJet

RunV12p1Scaling: ExecutePlot
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States CaloJetBarrel,CaloJetEndcapStringterpolate,CaloJetForwardStringterpolate \
		--Labels "CaloJet (barrel)","CaloJet (endcap)","CaloJet (forward)" \
		--MaxX 350 --MaxY 700 --Threshold "95%" \
		--OutputBase Plots/V12p1_CaloJet
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States TrackerJetBarrelFit,TrackerJetEndcapFit \
		--Labels "TrackerJet (barrel)","TrackerJet (endcap)" \
		--MaxX 140 --MaxY 800 --Threshold "95%" \
		--OutputBase Plots/V12p1_TrackerJet
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States TrackerHT,TrackerMHT,TrackerMET \
		--Labels "TrackerHT","TrackerMHT","TrackerMET" \
		--MaxX 700 --MaxY 800 --Threshold "50%" \
		--OutputBase Plots/V12p1_TrackerHTMHTMET
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States 090TrackerHT,090TrackerMETFit \
		--Labels "TrackerHT","TrackerMET" \
		--MaxX 700 --MaxY 1200 --Threshold "90%" \
		--OutputBase Plots/V12p1_TrackerHTMET090

RunV12ScalingEG: ExecutePlot
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH),$(V12DH) \
		--States "EGTrackIDBarrel","TkElectronTrackIDBarrel","TkIsoElectronBarrel","TkIsoPhotonTrackIDBarrel" \
		--Labels "EGElectron","TkElectron","TkIsoElectron","TkIsoPhoton" \
		--MaxX 60 --MaxY 80 --Threshold "Barrel 95%" \
		--OutputBase Plots/V12_EGBarrel
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH),$(V12DH) \
		--States "EGTrackIDEndcap","TkElectronTrackIDEndcap","TkIsoElectronEndcap","TkIsoPhotonTrackIDEndcap" \
		--Labels "EGElectron","TkElectron","TkIsoElectron","TkIsoPhoton" \
		--MaxX 60 --MaxY 80 --Threshold "Endcap 95%" \
		--OutputBase Plots/V12_EGEndcap
	
RunV12Scaling: ExecutePlot
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "TkMuonB","TkMuonO","TkMuonE" \
		--Labels "TkMuon (barrel)","TkMuon (overlap)","TkMuon (endcap)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12_TkMuon
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "GMTMuonB","GMTMuonO","GMTMuonEFit" \
		--Labels "GMTMuon (barrel)","GMTMuon (overlap)","GMTMuon (endcap)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12_GMTMuon
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "GMTMuonB","GMTMuonQualO","GMTMuonEFit" \
		--Labels "GMTMuon (barrel)","GMTMuonQual (overlap)","GMTMuon (endcap)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12_GMTMuonQual
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "GMTTkMuonB","GMTTkMuonO","GMTTkMuonE" \
		--Labels "GMTTkMuon (barrel)","GMTTkMuon (overlap)","GMTTkMuon (endcap)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12_GMTTkMuon
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "GMTTkMuonNStubsB","GMTTkMuonNStubsO","GMTTkMuonNStubsE" \
		--Labels "GMTTkMuon (barrel NStub>1)","GMTTkMuon (overlap NStub>1)","GMTTkMuon (endcap NStub>1)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12_GMTTkMuonNStubs
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "EGTrackIDBarrel","EGTrackIDEndcap" \
		--Labels "EGElectron (barrel)","EGElectron (endcap)" \
		--MaxX 60 --MaxY 80 --Threshold "95%" \
		--OutputBase Plots/V12_EG
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "TkElectronTrackIDBarrel","TkElectronTrackIDEndcap" \
		--Labels "TkElectron (barrel)","TkElectron (endcap)" \
		--MaxX 60 --MaxY 80 --Threshold "95%" \
		--OutputBase Plots/V12_TkElectron
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "TkIsoElectronBarrel","TkIsoElectronEndcap" \
		--Labels "TkIsoElectron (barrel)","TkIsoElectron (endcap)" \
		--MaxX 60 --MaxY 80 --Threshold "95%" \
		--OutputBase Plots/V12_TkIsoElectron
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "TkIsoPhotonTrackIDBarrel","TkIsoPhotonTrackIDEndcap" \
		--Labels "TkIsoPhoton (barrel)","TkIsoPhoton (endcap)" \
		--MaxX 60 --MaxY 80 --Threshold "95%" \
		--OutputBase Plots/V12_TkIsoPhoton
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "TkIsoPhotonPVTrackIDBarrel","TkIsoPhotonPVTrackIDEndcap" \
		--Labels "TkIsoPhotonPV (barrel)","TkIsoPhotonPV (endcap)" \
		--MaxX 60 --MaxY 80 --Threshold "95%" \
		--OutputBase Plots/V12_TkIsoPhotonPV
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "Phase1PuppiJetBarrel","Phase1PuppiJetEndcap","Phase1PuppiJetForward" \
		--Labels "Phase1PuppiJet (barrel)","Phase1PuppiJet (endcap)","Phase1PuppiJet (forward)" \
		--MaxX 200 --MaxY 450 --Threshold "95%" \
		--OutputBase Plots/V12_Phase1PuppiJet

RunV12HTMETPlots:
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "Phase1PuppiHT","090Phase1PuppiHT" \
		--Labels "Phase1PuppiHT (50%)","Phase1PuppiHT (90%)" \
		--MaxX 550 --MaxY 1000 --Threshold "Threshold" \
		--OutputBase Plots/V12_HT
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "Phase1PuppiMHT15","PuppiMET","090PuppiMET" \
		--Labels "Phase1PuppiMHT (50%)","PuppiMET (50%)","PuppiMET (90%)" \
		--MaxX 550 --MaxY 1000 --Threshold "Threshold" \
		--OutputBase Plots/V12_MET

RunV12HLTTDRMuonPlots: ExecutePlot
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "StandaloneMuonQualIsoB","TkMuonQualB" \
		--Labels "STA Muon","TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12HLTTDR_MuonBarrel
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "StandaloneMuonQualIsoO","TkMuonQualO" \
		--Labels "STA Muon","TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12HLTTDR_MuonOverlap
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "StandaloneMuonQualIsoE","TkMuonQualE" \
		--Labels "STA Muon","TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12HLTTDR_MuonEndcap

RunV12EmulationMuonPlots: ExecutePlot
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "GMTMuonB","GMTTkMuonB" \
		--Labels "GMT Muon","GMT TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12Emulation_MuonBarrel
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH),$(V12DH) \
		--States "GMTMuonO","GMTMuonQualO","GMTTkMuonO" \
		--Labels "GMT Muon (No qual)","GMT Muon","GMT TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12Emulation_MuonOverlap
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "GMTMuonQualO","GMTTkMuonO" \
		--Labels "GMT Muon","GMT TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12Emulation_MuonQualOverlap
	./ExecutePlot \
		--DHFiles $(V12DH),$(V12DH) \
		--States "GMTMuonEFit","GMTTkMuonE" \
		--Labels "GMT Muon","GMT TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V12Emulation_MuonEndcap

RunV11p3: Execute
	./Execute --input $(DYLLV11p3)       --output Fits/V11p3_Fits_TkMuon.pdf            --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoTkMuon true
	./Execute --input $(DYLLV11p3)       --output Fits/V11p3_Fits_STAMuon.pdf           --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoSTAMuon true
	./Execute --input $(HGGV11p3)        --output Fits/V11p3_Fits_EGPhoton.pdf          --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoEG true
	./Execute --input $(HGGV11p3)        --output Fits/V11p3_Fits_TkIsoPhoton.pdf       --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoPhoton true
	./Execute --input $(HGGV11p3)        --output Fits/V11p3_Fits_TkIsoPhotonPV.pdf     --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoPhotonPV true
	./Execute --input $(DYLLV11p3)       --output Fits/V11p3_Fits_EGElectron.pdf        --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoEGTrack true
	./Execute --input $(DYLLV11p3)       --output Fits/V11p3_Fits_TkElectron.pdf        --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoElectron true
	./Execute --input $(DYLLV11p3)       --output Fits/V11p3_Fits_TkIsoElectron.pdf     --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoIsoElectron true
	./Execute --input $(TTbarV11p3)      --output Fits/V11p3_Fits_PFPhase1Jet.pdf       --curves DH/CurvesV11p3.dh \
		--reference 0.95 --DoPFPhase1Jet true
	./Execute --input $(TTbarV11p3)      --output Fits/V11p3_Fits_PFPhase1HT.pdf        --curves DH/CurvesV11p3.dh \
		--reference 0.50 --DoPFPhase1HT true
	./Execute --input $(TTbarV11p3)      --output Fits/V11p3_Fits_PFPhase1HT090.pdf     --curves DH/CurvesV11p3.dh \
		--prefix 090 --reference 0.90 --DoPFPhase1HT true
	./Execute --input $(TTbarV11p3)      --output Fits/V11p3_Fits_PuppiMET.pdf          --curves DH/CurvesV11p3.dh \
		--reference 0.50 --DoPuppiMET true
	./Execute --input $(TTbarV11p3)      --output Fits/V11p3_Fits_PuppiMET090.pdf       --curves DH/CurvesV11p3.dh \
		--prefix 090 --reference 0.90 --DoPuppiMET true
	./Execute --input $(VBFTauTauV11p3)  --output Fits/V11p3_Fits_NNTau.pdf             --curves DH/CurvesV11p3.dh \
		--reference 0.50 --DoNNTauTight true
	./Execute --input $(VBFTauTauV11p3)  --output Fits/V11p3_Fits_NNTauLoose.pdf        --curves DH/CurvesV11p3.dh \
		--reference 0.50 --DoNNTauLoose true
	./Execute --input $(VBFTauTauV11p3)  --output Fits/V11p3_Fits_NNTau090.pdf          --curves DH/CurvesV11p3.dh \
		--prefix 090 --reference 0.90 --DoNNTauTight true
	./Execute --input $(VBFTauTauV11p3)  --output Fits/V11p3_Fits_NNTauLoose090.pdf     --curves DH/CurvesV11p3.dh \
		--prefix 090 --reference 0.90 --DoNNTauLoose true
	cp Plots/V11p3*pdf ~/public/html/

RunV11p2: Execute
	./Execute --input DYLL_V11p2.root    --output Fits/V11p2_Fits_TkMuonQual.pdf   --curves DH/CurvesV11p2.dh \
		--reference 0.95 --DoTkMuonQual true

RunV11p1: Execute
	# ./Execute --input DYLL_V11p1.root    --output Fits/V11p1_Fits_TkMuon.pdf       --curves DH/CurvesV11p1.dh \
	# 	--reference 0.95 --DoTkMuon true
	# ./Execute --input DYLL_V11p1.root    --output Fits/V11p1_Fits_TkMuonQual.pdf   --curves DH/CurvesV11p1.dh \
	# 	--reference 0.95 --DoTkMuonQual true
	# ./Execute --input DYLL_V11p1.root    --output Fits/V11p1_Fits_STAMuon.pdf      --curves DH/CurvesV11p1.dh \
	# 	--reference 0.95 --DoSTAMuon true
	# ./Execute --input DYLL_V11p1.root    --output Fits/V11p1_Fits_STAMuonQual.pdf  --curves DH/CurvesV11p1.dh \
	# 	--reference 0.95 --DoSTAMuonQual true
	./Execute --input HGG_V11p1.root     --output Fits/V11p1_Fits_TkIsoPhoton.pdf  --curves DH/CurvesV11p1.dh \
		--reference 0.95 --DoPhoton true
	./Execute --input HGG_V11p1.root     --output Fits/V11p1_Fits_TkIsoPhoton.pdf  --curves DH/CurvesV11p1.dh \
		--reference 0.95 --DoPhotonPV true
	./Execute --input HHBBGG_V11p1.root  --output Fits/V11p1_Fits_TkIsoPhoton.pdf  --curves DH/CurvesV11p1.dh \
		--prefix HH --reference 0.95 --DoPhoton true
	./Execute --input HHBBGG_V11p1.root  --output Fits/V11p1_Fits_TkIsoPhoton.pdf  --curves DH/CurvesV11p1.dh \
		--prefix HH --reference 0.95 --DoPhotonPV true

RunV11: Execute
	# ./Execute --input DYLL_V11.root       --output Fits/V11_Fits_TkMuon.pdf            --curves DH/CurvesV11.dh \
	# 	--reference 0.95 --DoTkMuon true
	# ./Execute --input Photon1_V11.root    --output Fits/V11_Fits_EGPhoton.pdf          --curves DH/CurvesV11.dh \
	# 	--reference 0.95 --DoEG true
	# ./Execute --input Photon1_V11.root    --output Fits/V11_Fits_TkIsoPhoton.pdf       --curves DH/CurvesV11.dh \
	# 	--reference 0.95 --DoPhoton true
	# ./Execute --input DYLL_V11.root       --output Fits/V11_Fits_EGElectron.pdf        --curves DH/CurvesV11.dh \
	# 	--reference 0.95 --DoEGTrack true
	# ./Execute --input DYLL_V11.root       --output Fits/V11_Fits_TkElectron.pdf        --curves DH/CurvesV11.dh \
	# 	--reference 0.95 --DoElectron true
	# ./Execute --input DYLL_V11.root       --output Fits/V11_Fits_TkIsoElectron.pdf     --curves DH/CurvesV11.dh \
	# 	--reference 0.95 --DoIsoElectron true
	# ./Execute --input TTbar_V11.root      --output Fits/V11_Fits_PFPhase1Jet.pdf       --curves DH/CurvesV11.dh \
	# 	--reference 0.95 --DoPFPhase1Jet true
	# ./Execute --input TTbar_V11.root      --output Fits/V11_Fits_PFPhase1HT.pdf        --curves DH/CurvesV11.dh \
	# 	--reference 0.50 --DoPFPhase1HT true
	# ./Execute --input TTbar_V11.root      --output Fits/V11_Fits_PFPhase1HT090.pdf     --curves DH/CurvesV11.dh \
	# 	--prefix 090 --reference 0.90 --DoPFPhase1HT true
	# ./Execute --input TTbar_V11.root      --output Fits/V11_Fits_PuppiMET.pdf          --curves DH/CurvesV11.dh \
	# 	--reference 0.50 --DoPuppiMET true
	./Execute --input TTbar_V11.root      --output Fits/V11_Fits_PuppiMET.pdf          --curves DH/CurvesV11.dh \
		--prefix 090 --reference 0.90 --DoPuppiMET true
	# ./Execute --input VBFHTauTau_V11.root --output Fits/V11_Fits_CaloTau.pdf           --curves DH/CurvesV11.dh \
	# 	--reference 0.50 --DoCaloTau true
	# ./Execute --input VBFHTauTau_V11.root --output Fits/V11_Fits_NNTau.pdf             --curves DH/CurvesV11.dh \
	# 	--reference 0.50 --DoNNTauTight true
	# ./Execute --input VBFHTauTau_V11.root --output Fits/V11_Fits_NNTauLoose.pdf        --curves DH/CurvesV11.dh \
	# 	--reference 0.50 --DoNNTauLoose true
	# ./Execute --input VBFHTauTau_V11.root --output Fits/V11_Fits_NNTau090.pdf          --curves DH/CurvesV11.dh \
	# 	--prefix 090 --reference 0.90 --DoNNTauTight true
	# ./Execute --input VBFHTauTau_V11.root --output Fits/V11_Fits_NNTauLoose090.pdf     --curves DH/CurvesV11.dh \
	# 	--prefix 090 --reference 0.90 --DoNNTauLoose true
	# ./Execute --input HHbbTauTau_V11.root --output Fits/V11_Fits_HHNNTau.pdf           --curves DH/CurvesV11.dh \
	# 	--prefix HH --reference 0.50 --DoNNTauTight true
	# ./Execute --input HHbbTauTau_V11.root --output Fits/V11_Fits_HHNNTauLoose.pdf      --curves DH/CurvesV11.dh \
	# 	--prefix HH --reference 0.50 --DoNNTauLoose true
	# ./Execute --input HHbbTauTau_V11.root --output Fits/V11_Fits_HHNNTau090.pdf        --curves DH/CurvesV11.dh \
	# 	--prefix 090HH --reference 0.90 --DoNNTauTight true
	# ./Execute --input HHbbTauTau_V11.root --output Fits/V11_Fits_HHNNTauLoose090.pdf   --curves DH/CurvesV11.dh \
	# 	--prefix 090HH --reference 0.90 --DoNNTauLoose true
	cp Plots/V11*pdf ~/public/html/

RunV10: Execute
	./Execute --input DYLL_V10p7.root    --output Fits/V10_Fits_STAMuon.pdf           --curves DH/CurvesV10.dh \
		--reference 0.95 --DoSTAMuon true
	# ./Execute --input DYLL_V10p7.root    --output Fits/V10_Fits_TkMuon.pdf            --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoTkMuon true
	# ./Execute --input DYLL_V10p7.root    --output Fits/V10_Fits_TkMuonStub.pdf        --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoTkMuonStub true
	# ./Execute --input HGG_V10p2.root     --output Fits/V10_Fits_EGPhoton.pdf          --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoEG true
	# ./Execute --input HGG_V10p2.root     --output Fits/V10_Fits_TkIsoPhoton.pdf       --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoPhoton true
	# ./Execute --input DYLL_V10p1.root    --output Fits/V10_Fits_EGElectron.pdf        --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoEGTrack true
	# ./Execute --input DYLL_V10p1.root    --output Fits/V10_Fits_TkElectron.pdf        --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoElectron true
	# ./Execute --input DYLL_V10p1.root    --output Fits/V10_Fits_TkIsoElectron.pdf     --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoIsoElectron true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_PFTau.pdf             --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoPFTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_PFIsoTau.pdf          --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoPFIsoTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_HPSTau.pdf            --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoHPSTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_HPSIsoTau.pdf         --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoHPSIsoTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNTau.pdf             --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoNNTauTight true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNTauLoose.pdf        --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoNNTauLoose true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNPFTau.pdf           --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoNNPFTauTight true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNPFTauLoose.pdf      --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoNNPFTauLoose true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_TkEGTau.pdf           --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoTkEGTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_CaloTkTau.pdf         --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoCaloTkTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_CaloTau.pdf           --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoCaloTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_PFTau.pdf             --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoPFTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_PFIsoTau.pdf          --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoPFIsoTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_HPSTau.pdf            --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoHPSTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_HPSIsoTau.pdf         --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoHPSIsoTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNTau.pdf             --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoNNTauTight true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNTauLoose.pdf        --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoNNTauLoose true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNPFTau.pdf           --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoNNPFTauTight true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_NNPFTauLoose.pdf      --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoNNPFTauLoose true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_TkEGTau.pdf           --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoTkEGTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_CaloTkTau.pdf         --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoCaloTkTau true
	# ./Execute --input HHbbTauTau_Tau_V10p5.root --output Fits/V10_Fits_CaloTau.pdf           --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoCaloTau true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_PuppiJet.pdf          --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoPuppiJet true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_PFPhase1Jet.pdf       --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoPFPhase1Jet true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_TrackerJet.pdf        --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoTrackerJet true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_CaloJet.pdf           --curves DH/CurvesV10.dh \
	# 	--reference 0.95 --DoCaloJet true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_PuppiHT.pdf           --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoPuppiHT true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_PFPhase1HT.pdf        --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoPFPhase1HT true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_TrackerHT.pdf         --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoTrackerHT true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_CaloHT.pdf            --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoCaloHT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PuppiJet.pdf    --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.95 --DoPuppiJet true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PFPhase1Jet.pdf --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.95 --DoPFPhase1Jet true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_TrackerJet.pdf  --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.95 --DoTrackerJet true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_CaloJet.pdf     --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.95 --DoCaloJet true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PuppiHT.pdf     --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.50 --DoPuppiHT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PFPhase1HT.pdf  --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.50 --DoPFPhase1HT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_TrackerHT.pdf   --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.50 --DoTrackerHT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_CaloHT.pdf      --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.50 --DoCaloHT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PuppiHT.pdf     --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar --reference 0.50 --DoPuppiHT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PFPhase1HT.pdf  --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar --reference 0.50 --DoPFPhase1HT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_TrackerHT.pdf   --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar --reference 0.50 --DoTrackerHT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_CaloHT.pdf      --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar --reference 0.50 --DoCaloHT true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_PuppiHT.pdf           --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoPuppiHT true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_PFPhase1HT.pdf        --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoPFPhase1HT true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_TrackerHT.pdf         --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoTrackerHT true
	# ./Execute --input QCD_V10p3.root     --output Fits/V10_Fits_CaloHT.pdf            --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoCaloHT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PuppiHT.pdf     --curves DH/CurvesV10.dh \
	# 	--prefix TTbar090 --reference 0.90 --DoPuppiHT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PFPhase1HT.pdf  --curves DH/CurvesV10.dh \
	# 	--prefix TTbar090 --reference 0.90 --DoPFPhase1HT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_TrackerHT.pdf   --curves DH/CurvesV10.dh \
	# 	--prefix TTbar090 --reference 0.90 --DoTrackerHT true
	# ./Execute --input TTbar_V10p3.root   --output Fits/V10_Fits_TTbar_CaloHT.pdf      --curves DH/CurvesV10.dh \
	# 	--prefix TTbar090 --reference 0.90 --DoCaloHT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PuppiHT.pdf     --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar090 --reference 0.90 --DoPuppiHT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_PFPhase1HT.pdf  --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar090 --reference 0.90 --DoPFPhase1HT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_TrackerHT.pdf   --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar090 --reference 0.90 --DoTrackerHT true
	# ./Execute --input HadronicTTbar_V10p3.root   --output Fits/V10_Fits_TTbar_CaloHT.pdf      --curves DH/CurvesV10.dh \
	# 	--prefix HadronicTTbar090 --reference 0.90 --DoCaloHT true
	# ./Execute --input VBFHInv_V10p3.root --output Fits/V10_Fits_PuppiMET.pdf          --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoPuppiMET true
	# ./Execute --input VBFHInv_V10p3.root --output Fits/V10_Fits_TrackerMET.pdf        --curves DH/CurvesV10.dh \
	# 	--reference 0.50 --DoTrackerMET true
	# ./Execute --input TTbar_V10p3.root --output Fits/V10_Fits_PuppiMET.pdf          --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.50 --DoPuppiMET true
	# ./Execute --input TTbar_V10p3.root --output Fits/V10_Fits_TrackerMET.pdf        --curves DH/CurvesV10.dh \
	# 	--prefix TTbar --reference 0.50 --DoTrackerMET true
	# ./Execute --input VBFHInv_V10p3.root --output Fits/V10_Fits_PuppiMET.pdf          --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoPuppiMET true
	# ./Execute --input VBFHInv_V10p3.root --output Fits/V10_Fits_TrackerMET.pdf        --curves DH/CurvesV10.dh \
	# 	--prefix 090 --reference 0.90 --DoTrackerMET true
	# ./Execute --input TTbar_V10p3.root --output Fits/V10_Fits_PuppiMET.pdf          --curves DH/CurvesV10.dh \
	# 	--prefix TTbar090 --reference 0.90 --DoPuppiMET true
	# ./Execute --input TTbar_V10p3.root --output Fits/V10_Fits_TrackerMET.pdf        --curves DH/CurvesV10.dh \
	# 	--prefix TTbar090 --reference 0.90 --DoTrackerMET true
	cp Fits/*.pdf ~/public/html/

RunV10V11TauScaling: ExecutePlot
	./ExecutePlot \
		--DHFiles "DH/CurvesV10.dh","DH/CurvesV10.dh","DH/CurvesV10.dh","DH/CurvesV10.dh","DH/CurvesV11.dh","DH/CurvesV11.dh" \
		--States "NNTauTightBarrel","NNTauLooseBarrel","HNNTauTightBarrel","HNNTauLooseBarrel","NNTauTightBarrel","NNTauLooseBarrel" \
		--Labels "HHbbTauTau (Tight) V10.5","HHbbTauTau (Loose) V10.5","HTauTau (Tight) V10.5","HTauTau (Loose) V10.5","VBFHTauTau (Tight) V11","VBFHTauTau (Loose) V11" \
		--MaxX 80 --MaxY 150 --Threshold "50%" \
		--OutputBase Plots/V10V11_TauBarrelSamples
	./ExecutePlot \
		--DHFiles "DH/CurvesV10.dh","DH/CurvesV10.dh","DH/CurvesV10.dh","DH/CurvesV10.dh","DH/CurvesV11.dh","DH/CurvesV11.dh" \
		--States "NNTauTightEndcap","NNTauLooseEndcap","HNNTauTightEndcap","HNNTauLooseEndcap","NNTauTightEndcap","NNTauLooseEndcap" \
		--Labels "HHbbTauTau (Tight) V10.5","HHbbTauTau (Loose) V10.5","HTauTau (Tight) V10.5","HTauTau (Loose) V10.5","VBFHTauTau (Tight) V11","VBFHTauTau (Loose) V11" \
		--MaxX 80 --MaxY 150 --Threshold "50%" \
		--OutputBase Plots/V10V11_TauEndcapSamples
	cp Plots/V10V11*pdf ~/public/html/

RunV11p2Scaling: ExecutePlot
	./ExecutePlot \
		--DHFiles "DH/CurvesV11.dh","DH/CurvesV11.dh","DH/CurvesV11.dh","DH/CurvesV11p2.dh","DH/CurvesV11p2.dh","DH/CurvesV11p2.dh" \
		--States "TkMuonB","TkMuonO","TkMuonE","TkMuonQualB","TkMuonQualO","TkMuonQualE" \
		--Labels "V11 barrel","V11 overlap","V11 endcap","V11.2 barrel","V11.2 overlap","V11.2 endcap" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p2_TkMuonQual

RunV11p1Scaling: ExecutePlot
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p1.dh","DH/CurvesV11p1.dh","DH/CurvesV11p1.dh" \
		--States "TkMuonQualB","TkMuonQualO","TkMuonQualE" \
		--Labels "TkMuon (barrel)","TkMuon (overlap)","TkMuon (endcap)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p1_TkMuonQual
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p1.dh","DH/CurvesV11p1.dh","DH/CurvesV11p1.dh" \
		--States "StandaloneMuonQualIsoB","StandaloneMuonQualIsoO","StandaloneMuonQualIsoE" \
		--Labels "STAMuon (barrel)","STAMuon (overlap)","STAMuon (endcap)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p1_STAMuonQual
	./ExecutePlot \
		--DHFiles "DH/CurvesV11.dh","DH/CurvesV11p1.dh","DH/CurvesV11p1.dh" \
		--States "TkMuonE","TkMuonE","TkMuonQualE" \
		--Labels "TkMuon (V11)","TkMuon (V11p1 - no quality)","TkMuon (V11p1 - with quality)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p1_TkMuonE
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p1.dh","DH/CurvesV11p1.dh" \
		--States "StandaloneMuonIsoE","StandaloneMuonQualIsoE" \
		--Labels "STAMuon (no quality)","STAMuon (with quality)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p1_STAMuonE
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p1.dh","DH/CurvesV11p1.dh","DH/CurvesV11p1.dh","DH/CurvesV11p1.dh" \
		--States "TkIsoPhotonTrackIDBarrel","TkIsoPhotonTrackIDEndcap","TkIsoPhotonPVTrackIDBarrel","TkIsoPhotonPVTrackIDEndcap" \
		--Labels "TkIsoPhoton (barrel)","TkIsoPhoton (endcap)","TkIsoPhotonPV (barrel)","TkIsoPhotonPV (endcap)" \
		--MaxX 40 --MaxY 70 --Threshold "95%" \
		--OutputBase Plots/V11p1_Photon
	cp Plots/V11p1_* ~/public/html

RunV11Scaling: ExecutePlot
	./ExecutePlot \
		--States "EGTrackIDBarrel","TkElectronTrackIDBarrel","TkIsoElectronBarrel","TkIsoPhotonTrackIDBarrel" \
		--Labels "EG","TkElectron","TkIsoElectron","TkIsoPhoton" \
		--MaxX 55 --MaxY 100 --Threshold "p_{T} (GeV) value at 95% efficiency" --Suffix " " \
		--Marker 20,21,22,23 \
		--Color -2,-3,-4,-5 \
		--OutputBase Plots/V11_EGBarrel
	./ExecutePlot \
		--States "EGTrackIDEndcap","TkElectronTrackIDEndcap","TkIsoElectronEndcap","TkIsoPhotonTrackIDEndcap" \
		--Labels "EG","TkElectron","TkIsoElectron","TkIsoPhoton" \
		--MaxX 55 --MaxY 100 --Threshold "p_{T} (GeV) value at 95% efficiency" --Suffix " " \
		--Marker 20,21,22,23 \
		--Color -2,-3,-4,-5 \
		--OutputBase Plots/V11_EGEndcap
	./ExecutePlot \
		--States "TkMuonB","TkMuonO","TkMuonE" \
		--Labels "TkMuon (barrel)","TkMuon (overlap)","TkMuon (endcap)" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11_Muon
	./ExecutePlot \
		--States "NNTauLooseBarrel","NNTauLooseEndcap","HHNNTauLooseBarrel","HHNNTauLooseEndcap" \
		--Labels "NNTau (barrel)","NNTau (endcap)","NNTau (barrel HH)","NNTau (endcap HH)" \
		--MaxX 80 --MaxY 150 --Threshold "50%" \
		--OutputBase Plots/V11_Tau
	./ExecutePlot \
		--States "090NNTauLooseBarrel","090NNTauLooseEndcap" \
		--Labels "NNTau (barrel)","NNTau (endcap)" \
		--MaxX 80 --MaxY 200 --Threshold "90%" \
		--OutputBase Plots/V11_Tau090
	./ExecutePlot \
		--States "PFPhase1JetBarrel","PFPhase1JetEndcap","PFPhase1JetForward" \
		--Labels "PFPhase1Jet (Barrel)","PFPhase1Jet (Endcap)","PFPhase1Jet (Forward)" \
		--MaxX 200 --MaxY 800 --Threshold "95%" \
		--OutputBase Plots/V11_Jet
	./ExecutePlot \
		--States "PFPhase1HT","090PFPhase1HT" \
		--Labels "PuppiPhase1HT (50%)","PuppiPhase1HT (90%)" \
		--MaxX 550 --MaxY 1000 --Threshold "Threshold" \
		--OutputBase Plots/V11_HT
	./ExecutePlot \
		--States "PuppiMET","090PuppiMET" \
		--Labels "PuppiMET (50%)","PuppiMET (90%)" \
		--MaxX 200 --MaxY 450 --Threshold "Threshold" \
		--OutputBase Plots/V11_MET
	cp Plots/V11*pdf ~/public/html

RunV11p3Scaling: ExecutePlot
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh","DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "EGTrackIDBarrel","TkElectronTrackIDBarrel","TkIsoElectronBarrel","TkIsoPhotonTrackIDBarrel" \
		--Labels "EG","TkElectron","TkIsoElectron","TkIsoPhoton" \
		--MaxX 55 --MaxY 100 --Threshold "p_{T} (GeV) value at 95% efficiency" --Suffix " " \
		--Marker 20,21,22,23 \
		--OutputBase Plots/V11p3_EGBarrel
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh","DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "EGTrackIDEndcap","TkElectronTrackIDEndcap","TkIsoElectronEndcap","TkIsoPhotonTrackIDEndcap" \
		--Labels "EG","TkElectron","TkIsoElectron","TkIsoPhoton" \
		--MaxX 55 --MaxY 100 --Threshold "95%" \
		--OutputBase Plots/V11p3_EGEndcap
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "StandaloneMuonIsoB","TkMuonB" \
		--Labels "STA Muon","TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p3_MuonBarrel
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "StandaloneMuonIsoO","TkMuonO" \
		--Labels "STA Muon","TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p3_MuonOverlap
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "StandaloneMuonIsoE","TkMuonE" \
		--Labels "STA Muon","TkMuon" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p3_MuonEndcap
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "TkMuonB","TkMuonO","TkMuonE" \
		--Labels "TkMuon barrel","TkMuon overlap","TkMuon endcap" \
		--MaxX 40 --MaxY 60 --Threshold "95%" \
		--OutputBase Plots/V11p3_TkMuon
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "NNTauTightBarrel","NNTauLooseBarrel" \
		--Labels "NNTau (Tight)","NNTau (Loose)" \
		--MaxX 80 --MaxY 250 --Threshold "50%" \
		--OutputBase Plots/V11p3_TauBarrel
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "NNTauTightEndcap","NNTauLooseEndcap" \
		--Labels "NNTau (Tight)","NNTau (Loose)" \
		--MaxX 80 --MaxY 250 --Threshold "50%" \
		--OutputBase Plots/V11p3_TauEndcap
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "090NNTauTightBarrel","090NNTauLooseBarrel" \
		--Labels "NNTau (Tight)","NNTau (Loose)" \
		--MaxX 80 --MaxY 250 --Threshold "90%" \
		--OutputBase Plots/V11p3_TauBarrel090
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "090NNTauTightEndcap","090NNTauLooseEndcap" \
		--Labels "NNTau (Tight)","NNTau (Loose)" \
		--MaxX 80 --MaxY 250 --Threshold "90%" \
		--OutputBase Plots/V11p3_TauEndcap090
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "090NNTauLooseBarrel","090NNTauLooseEndcap" \
		--Labels "NNTau loose (barrel)","NNTau loose (endcap)" \
		--MaxX 80 --MaxY 250 --Threshold "90%" \
		--OutputBase Plots/V11p3_TauLoose090
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "PFPhase1JetBarrel","PFPhase1JetEndcap","PFPhase1JetForward"\
		--Labels "PuppiPhase1Jet (barrel)","PuppiPhase1Jet (endcap)","PuppiPhase1Jet (forward)" \
		--MaxX 200 --MaxY 450 --Threshold "95%" \
		--OutputBase Plots/V11p3_Jet
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "PFPhase1HT","090PFPhase1HT" \
		--Labels "PuppiPhase1HT (50%)","PuppiPhase1HT (90%)" \
		--MaxX 550 --MaxY 1000 --Threshold "Threshold location" \
		--OutputBase Plots/V11p3_HT
	./ExecutePlot \
		--DHFiles "DH/CurvesV11p3.dh","DH/CurvesV11p3.dh" \
		--States "PuppiMET","090PuppiMET" \
		--Labels "PuppiMET (50%)","PuppiMET (90%)" \
		--MaxX 200 --MaxY 450 --Threshold "Threshold location" \
		--OutputBase Plots/V11p3_MET
	cp Plots/V11p3*pdf ~/public/html

TestRun: Execute
	./Execute --input SingleTau.root --output Plots/016_PFTau.pdf             --curves DH/CurvesX.dh \
		--reference 0.50 --DoPFTau true
	./Execute --input SingleTau.root --output Plots/017_PFIsoTau.pdf          --curves DH/CurvesX.dh \
		--reference 0.50 --DoPFIsoTau true
	./Execute --input DYLL.root    --output Plots/018_CaloJet.pdf           --curves DH/CurvesX.dh \
		--reference 0.95 --DoCaloJet true
	./Execute --input DYLL.root   --output Plots/012_PuppiJet.pdf          --curves DH/CurvesX.dh \
		--reference 0.95 --DoPuppiJet true
	cp Plots/*.pdf ~/public/html/

RunAll: Execute
	# ./Execute --input DYLL.root    --output Plots/001_STAMuon.pdf           --curves DH/Curves.dh \
		# 	--reference 0.95 --DoSTAMuon true
	# ./Execute --input DYLL.root    --output Plots/002_STADisplacedMuon.pdf  --curves DH/Curves.dh \
		# 	--reference 0.95 --DoSTADisplacedMuon true
	# ./Execute --input DYLL.root    --output Plots/003_TkMuon.pdf            --curves DH/Curves.dh \
		# 	--reference 0.95 --DoTkMuon true
	# ./Execute --input DYLL.root    --output Plots/004_TkMuonStub.pdf        --curves DH/Curves.dh \
		# 	--reference 0.95 --DoTkMuonStub true
	# ./Execute --input DYLL.root    --output Plots/004_TkMuonStubS12.pdf     --curves DH/Curves.dh \
		# 	--reference 0.95 --DoTkMuonStubS12 true
	# ./Execute --input HGG.root     --output Plots/005_EGPhoton.pdf          --curves DH/Curves.dh \
		# 	--reference 0.95 --DoEG true
	./Execute --input DYLL.root    --output Plots/006_EGElectron.pdf        --curves DH/Curves.dh \
		--reference 0.95 --DoEGTrack true
	./Execute --input DYLL.root    --output Plots/007_TkElectron.pdf        --curves DH/Curves.dh \
		--reference 0.95 --DoElectron true
	./Execute --input DYLL.root    --output Plots/008_TkIsoElectron.pdf     --curves DH/Curves.dh \
		--reference 0.95 --DoIsoElectron true
	./Execute --input HGG.root     --output Plots/009_TkIsoPhoton.pdf       --curves DH/Curves.dh \
		--reference 0.95 --DoPhoton true
	# ./Execute --input HGG.root     --output Plots/010_TkIsoPhotonPV.pdf     --curves DH/Curves.dh \
		# 	--reference 0.95 --DoPhotonPV true
	# ./Execute --input DYLL.root    --output Plots/011_TkIsoElectronPV.pdf   --curves DH/Curves.dh \
		# 	--reference 0.95 --DoElectronPV true
	# ./Execute --input TTbar.root   --output Plots/012_PuppiJet.pdf          --curves DH/Curves.dh \
		# 	--reference 0.95 --DoPuppiJet true
	# ./Execute --input TTbar.root   --output Plots/013_PuppiJetForMET.pdf    --curves DH/Curves.dh \
		# 	--reference 0.95 --DoPuppiJetForMET true
	# ./Execute --input QCD.root     --output PuppiJetMin25.pdf         --curves DH/Curves.dh \
		# 	--reference 0.95 --DoPuppiJetMin25 true
	# ./Execute --input TTbar.root   --output PuppiJetMin25TTbar.pdf    --curves DH/Curves.dh \
		# 	--reference 0.95 --DoPuppiJetMin25 true --prefix TTbar
	# ./Execute --input TTbar.root   --output Plots/014_PuppiHT.pdf           --curves DH/Curves.dh \
		# 	--reference 0.50 --DoPuppiHT true
	# ./Execute --input VBFHInv.root --output Plots/015_PuppiMET.pdf          --curves DH/Curves.dh \
		# 	--reference 0.50 --DoPuppiMET true
	# ./Execute --input HTauTau.root --output Plots/016_PFTau.pdf             --curves DH/Curves.dh \
		# 	--reference 0.50 --DoPFTau true
	# ./Execute --input HTauTau.root --output Plots/017_PFIsoTau.pdf          --curves DH/Curves.dh \
		# 	--reference 0.50 --DoPFIsoTau true
	# ./Execute --input DYLL.root    --output Plots/018_CaloJet.pdf           --curves DH/Curves.dh \
		# 	--reference 0.95 --DoCaloJet true
	# CaloHT is killed, we don't look at it
	# ./Execute --input DYLL.root    --output Plots/019_CaloHT.pdf            --curves DH/Curves.dh \
		# 	--reference 0.50 --DoCaloHT true
	# ./Execute --input TTbar.root   --output Plots/020_TrackerJet.pdf        --curves DH/Curves.dh \
		# 	--reference 0.95 --DoTrackerJet true
	# ./Execute --input TTbar.root   --output Plots/021_TrackerHT.pdf         --curves DH/Curves.dh \
		# 	--reference 0.50 --DoTrackerHT true
	# ./Execute --input VBFHInv.root --output Plots/022_TrackerMET.pdf        --curves DH/Curves.dh \
		# 	--reference 0.50 --DoTrackerMET true
	# ./Execute --input HTauTau.root --output Plots/023_TkTau.pdf             --curves DH/Curves.dh \
		# 	--reference 0.50 --DoTkTau true
	# ./Execute --input HTauTau.root --output Plots/024_CaloTkTau.pdf         --curves DH/Curves.dh \
		# 	--reference 0.50 --DoCaloTkTau true
	# ./Execute --input HTauTau.root --output Plots/025_TkEGTau.pdf           --curves DH/Curves.dh \
		# 	--reference 0.50 --DoTkEGTau true
	# ./Execute --input VBFHInv.root --output Plots/026_TrackerMHT.pdf        --curves DH/Curves.dh \
		# 	--reference 0.50 --DoTrackerMHT true
	# ./Execute --input DYLL.root    --output Plots/007_TkZElectron.pdf       --curves DH/CurvesZ.dh \
		# 	--reference 0.95 --DoZElectron true
	# ./Execute --input HTauTau.root --output Plots/027_NNTauLoose.pdf        --curves DH/CurvesTemp.dh \
		# 	--reference 0.50 --DoNNTauLoose true
	# ./Execute --input HTauTau.root --output Plots/028_NNTauTight.pdf        --curves DH/CurvesTemp.dh \
		# 	--reference 0.50 --DoNNTauTight true
	# ./Execute --input HTauTau.root --output Plots/029_CaloTau.pdf           --curves DH/CurvesTemp.dh \
		# 	--reference 0.50 --DoCaloTau true
	cp Plots/*.pdf ~/public/html/

RunExport: Export
	./Export
	cp Text/Scalings*.txt ~/public/html

