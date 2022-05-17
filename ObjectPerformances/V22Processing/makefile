Config     = config/20220412.config
TestConfig = config/20220412Test.config

default: Prepare Execute

Clean:
	rm -f library/*
	rm -f source/L1Classes.cpp source/L1Classes_rdict.pcm
	rm -f samples/*
	rm -f Execute

Prepare:
	mkdir -p samples
	mkdir -p library
	ln -sf /eos/cms/store/cmst3/group/l1tr/phase2Menu/EmuDev/DYToLL_M-50_TuneCP5_14TeV-pythia8/DY_PU200_v22/220407_094155/0000// samples/DYLLV22
	ln -sf /eos/cms/store/cmst3/group/l1tr/phase2Menu/EmuDev/GluGluHToGG_M125_14TeV_powheg_pythia8_TuneCP5/HGG_PU200_v22/220407_094856/0000// samples/HGGV22
	ln -sf /eos/cms/store/cmst3/group/l1tr/phase2Menu/EmuDev/GluGluToHHTo2B2Tau_node_SM_TuneCP5_14TeV-madgraph-pythia8/GGToHHTo2B2Tau_PU200_v22/220408_073133/0000// samples/HHBBTauTauV22
	ln -sf /eos/cms/store/cmst3/group/l1tr/phase2Menu/EmuDev/TT_TuneCP5_14TeV-powheg-pythia8/TT_PU200_v22/220407_094308/0000// samples/TTbarV22
	ln -sf /eos/cms/store/cmst3/group/l1tr/phase2Menu/EmuDev/VBFHToTauTau_M125_14TeV_powheg_pythia8_correctedGridpack_tuneCP5/VBFToTauTau_PU200_v22/220407_095503/0000// samples/VBFHTauTauV22

Execute: source/FillHistograms.cpp library/Histograms.o library/HelperFunctions.o library/L1Classes.so library/Messenger.o
	g++ `root-config --cflags --glibs` source/FillHistograms.cpp -Iinclude -I$(ProjectBase)/CommonCode/include -o Execute \
		`fastjet-config --cxxflags --libs` -std=c++17 \
		$(ProjectBase)/CommonCode/library/TauHelperFunctions3.o \
		library/Messenger.o library/L1Classes.so \
		library/Histograms.o library/HelperFunctions.o

library/L1Classes.so: include/L1Classes.h include/L1LinkDef.h
	rootcint -f source/L1Classes.cpp -c include/L1Classes.h include/L1LinkDef.h
	g++ `root-config --cflags` source/L1Classes.cpp -o library/L1Classes.o -I. -c -fpic
	g++ -shared -o library/L1Classes.so library/L1Classes.o
	(cd library && ln -sf ../source/L1Classes_rdict.pcm .)

library/Messenger.o: source/Messenger.cpp
	g++ `root-config --cflags` source/Messenger.cpp -I$(ProjectBase)/CommonCode/include -Iinclude -c -o library/Messenger.o -std=c++17

library/Histograms.o: source/Histograms.cpp include/Histograms.h
	g++ `root-config --cflags` source/Histograms.cpp -I$(ProjectBase)/CommonCode/include -Iinclude -c -o library/Histograms.o -std=c++17

library/HelperFunctions.o: source/HelperFunctions.cpp include/HelperFunctions.h
	g++ `root-config --cflags` source/HelperFunctions.cpp -c -o library/HelperFunctions.o \
		-I$(ProjectBase)/CommonCode/include -Iinclude `fastjet-config --cxxflags` -std=c++17

RunTest: Execute
	./Execute --input `ls samples/DYLLV22/* | head -n 5 | tr '\n' ',' | sed "s/,$$//g"` \
		--output TestRun.root --StoredGen true --config $(TestConfig) --LDROnly true

RunLDR: Execute
	./Execute --input `ls samples/DYLLV22/* | head -n 40 | tr '\n' ',' | sed "s/,$$//g"` \
		--output DYLLLDR_V22.root --StoredGen true --config $(Config) --LDROnly true
	./Execute --input `ls samples/TTbarV22/* | head -n 40 | tr '\n' ',' | sed "s/,$$//g"` \
		--output TTbarLDR_V22.root --StoredGen true --config $(Config) --LDROnly true
	./Execute --input `ls samples/VBFHTauTauV22/* | head -n 40 | tr '\n' ',' | sed "s/,$$//g"` \
		--output VBFHTauTauLDR_V22.root --StoredGen true --config $(Config) --LDROnly true
	./Execute --input `ls samples/VBFHTauTauV22/* | head -n 40 | tr '\n' ',' | sed "s/,$$//g"` \
		--output VBFHTauTauLDR_V22.root --StoredGen true --config $(Config) --LDROnly true
	./Execute --input `ls samples/HHBBTauTauV22/* | head -n 40 | tr '\n' ',' | sed "s/,$$//g"` \
		--output HHBBTauTauLDR_V22.root --StoredGen true --config $(Config) --LDROnly true

RunDYLL: Execute
	./Execute --input `ls samples/DYLLV22/* | head -n 99999 | tr '\n' ',' | sed "s/,$$//g"` \
		--output /tmp/$(USER)/DYLL_V22.root --StoredGen true --config $(Config)

RunDYLLPartial: Execute
	./Execute --input `ls samples/DYLLV22/* | head -n 40 | tr '\n' ',' | sed "s/,$$//g"` \
		--output /tmp/$(USER)/DYLLPartial_V22.root --StoredGen true --config $(Config)

RunHGG: Execute
	./Execute --input `ls samples/HGGV22/* | head -n 99999 | tr '\n' ',' | sed "s/,$$//g"` \
		--output /tmp/$(USER)/HGG_V22.root --StoredGen true --config $(Config)

RunTTbar: Execute
	./Execute --input `ls samples/TTbarV22/* | head -n 99999 | tr '\n' ',' | sed "s/,$$//g"` \
		--output /tmp/$(USER)/TTbar_V22.root --StoredGen true --config $(Config)

RunHadronicTTbar: Execute
	./Execute --input `ls samples/TTbarV22/* | head -n 99999 | tr '\n' ',' | sed "s/,$$//g"` \
		--output /tmp/$(USER)/HadronicTTbar_V22.root --StoredGen true --config $(Config) --RejectLeptonicW true

RunVBFHTauTau: Execute
	./Execute --input `ls samples/VBFHTauTauV22/* | head -n 99999 | tr '\n' ',' | sed "s/,$$//g"` \
		--output /tmp/$(USER)/VBFHTauTau_V22.root --StoredGen true --config $(Config)

RunHHBBTauTau: Execute
	./Execute --input `ls samples/HHBBTauTauV22/* | head -n 99999 | tr '\n' ',' | sed "s/,$$//g"` \
		--output /tmp/$(USER)/HHBBTauTau_V22.root --StoredGen true --config $(Config)


