#ifndef MESSENGER_V22_24434
#define MESSENGER_V22_24434

#include <iostream>
#include <vector>
using namespace std;

#include "TFile.h"
#include "TTree.h"

#include "TauHelperFunctions3.h"

#include "L1AnalysisCSCTFDataFormat.h"
#include "L1AnalysisL1MenuDataFormat.h"
#include "L1AnalysisCaloTPDataFormat.h"
#include "L1AnalysisRCTDataFormat.h"
#include "L1AnalysisDTTFDataFormat.h"
#include "L1AnalysisRecoClusterDataFormat.h"
#include "L1AnalysisEventDataFormat.h"
#include "L1AnalysisRecoJetDataFormat.h"
#include "L1AnalysisGCTDataFormat.h"
#include "L1AnalysisRecoMetDataFormat.h"
#include "L1AnalysisGMTDataFormat.h"
#include "L1AnalysisRecoMuonDataFormat.h"
#include "L1AnalysisGTDataFormat.h"
#include "L1AnalysisRecoTrackDataFormat.h"
#include "L1AnalysisGeneratorDataFormat.h"
#include "L1AnalysisRecoVertexDataFormat.h"
#include "L1AnalysisL1ExtraDataFormat.h"
#include "L1AnalysisSimulationDataFormat.h"
#include "L1AnalysisL1ExtraUpgradeDataFormat.h"
#include "L1AnalysisPhaseIIStep1DataFormatV22.h"

class GenericObject;
class L1NTupleMessenger;
class L1MenuTreeMessenger;
class L1ExtraTreeMessenger;
class L1EmulatorMessenger;
class L1EmulatorExtraMessenger;
class L1ExtraUpgradeTreeMessenger;
class L1PhaseIITreeV22Messenger;
class L1GenMessenger;

class GenericObject
{
public:
   FourVector P;
   int Bx;
   double Iso;
   double VZ;
   double PET;
   int ID;
   int Qual;
   double Type;
   int Flag;
   int Charge;
   double DXY;
public:
   GenericObject()
      : P(-1, 0, 0, 0), Bx(-999), Iso(-1), VZ(-1), PET(-1), ID(-1), Qual(-1), Type(-1), Flag(-1), Charge(-100)
   {
   }
   GenericObject(FourVector p)
      : P(p), Bx(-999), Iso(-1), VZ(-1), PET(-1), ID(-1), Qual(-1), Type(-1), Flag(-1), Charge(-100)
   {
   }
};

class L1NTupleMessenger
{
public:
   TTree *Tree;
public:
   L1Analysis::L1AnalysisEventDataFormat *Event;
   L1Analysis::L1AnalysisGCTDataFormat *GCT;
   L1Analysis::L1AnalysisGeneratorDataFormat *Generator;
   L1Analysis::L1AnalysisSimulationDataFormat *Simulation;
   L1Analysis::L1AnalysisGMTDataFormat *GMT;
   L1Analysis::L1AnalysisGTDataFormat *GT;
   L1Analysis::L1AnalysisRCTDataFormat *RCT;
   L1Analysis::L1AnalysisDTTFDataFormat *DTTF;
   L1Analysis::L1AnalysisCaloTPDataFormat *CALO;
public:
   // Derived stuff
   vector<FourVector> GenP;
   vector<int> GenID;
   vector<int> GenStatus;
public:
   L1NTupleMessenger(TFile &File, string TreeName = "L1NtupleProducer/L1Tree");
   ~L1NTupleMessenger();
   void SetBranchAddress();
   bool GetEntry(int Entry);
};

class L1MenuTreeMessenger
{
};

class L1ExtraTreeMessenger
{
};

class L1EmulatorMessenger
{
};

class L1EmulatorExtraMessenger
{
};

class L1ExtraUpgradeTreeMessenger
{
public:
   TTree *Tree;
public:
   L1Analysis::L1AnalysisL1ExtraUpgradeDataFormat *L1ExtraUpgrade;
public:
   vector<GenericObject> EG;
   vector<GenericObject> IsoEG;
   vector<GenericObject> TkEG;
   vector<GenericObject> TkEG2;
   vector<GenericObject> TkIsoEG;
   vector<GenericObject> TkEM;
   vector<GenericObject> Tau;
   vector<GenericObject> IsoTau;
   vector<GenericObject> TkTau;
   vector<GenericObject> Jet;
   vector<GenericObject> TkJet;
   vector<GenericObject> FwdJet;
   vector<GenericObject> Muon;
   vector<GenericObject> TkMuon;
   vector<GenericObject> MET;
   vector<GenericObject> TkMET;
   vector<GenericObject> MHT;
   vector<GenericObject> TkMHT;
public:
   L1ExtraUpgradeTreeMessenger(TFile &File, string TreeName = "L1ExtraUpgradeTreeProducer/L1ExtraUpgradeTree");
   ~L1ExtraUpgradeTreeMessenger();
   void SetBranchAddress();
   bool GetEntry(int Entry);
   void FillObject(vector<GenericObject> &V, int N,
      vector<double> *ET, vector<double> *Eta, vector<double> *Phi, vector<int> *Bx,
      vector<double> *Iso, vector<double> *VZ, vector<double> *PET);
   void FillObject(vector<GenericObject> &V, int N,
      vector<double> *ET, vector<double> *Eta, vector<double> *Phi, vector<double> *Bx,
      vector<double> *Iso, vector<double> *VZ, vector<double> *PET);
};

class L1PhaseIITreeV22Messenger
{
public:
   TTree *Tree;
public:
   L1Analysis::L1AnalysisPhaseIIStep1DataFormat *L1PhaseII;
public:   // Collections from the trees
   vector<GenericObject> CaloTau;
   vector<GenericObject> HPSTau;
   vector<GenericObject> CaloJet;
   vector<GenericObject> CaloHT;
   vector<GenericObject> CaloHTMenu;
   vector<GenericObject> CaloMHTMenu;
   vector<GenericObject> Phase1PuppiJet;
   vector<GenericObject> Phase1PuppiHTMenu;
   vector<GenericObject> Phase1PuppiMHTMenu;
   vector<GenericObject> Phase1PuppiHT;
   vector<GenericObject> Phase1PuppiMHT;
   vector<GenericObject> Phase1PuppiMET;
   vector<GenericObject> PuppiMET;
   vector<GenericObject> EG;
   vector<GenericObject> EGTrackID;
   vector<GenericObject> TkElectron;
   vector<GenericObject> TkElectronTrackID;
   vector<GenericObject> TkPhoton;
   vector<GenericObject> TkPhotonTrackID;
   vector<GenericObject> TkPhotonPVTrackID;
   vector<GenericObject> StandaloneMuon;
   vector<GenericObject> TkMuon;
   vector<GenericObject> GlobalMuon;
   vector<GenericObject> TkGlobalMuon;
   vector<GenericObject> GMTMuon;
   vector<GenericObject> GMTTkMuon;
   vector<GenericObject> SeededConePuppiJet;
   vector<GenericObject> SeededConePuppiHT;
   vector<GenericObject> SeededConePuppiMHT;
   vector<GenericObject> NNTauTight;
   vector<GenericObject> NNTauLoose;
   vector<GenericObject> NNTauTightPF;
   vector<GenericObject> NNTauLoosePF;
   vector<GenericObject> NNTauTightMass;
   vector<GenericObject> NNTauLooseMass;
   vector<GenericObject> NNTauMass;
   vector<GenericObject> NNTau2VtxTight;
   vector<GenericObject> NNTau2VtxLoose;
   vector<GenericObject> NNTau2VtxTightPF;
   vector<GenericObject> NNTau2VtxLoosePF;
   vector<GenericObject> NNTau2VtxTightMass;
   vector<GenericObject> NNTau2VtxLooseMass;
   vector<GenericObject> NNTau2VtxMass;
   vector<GenericObject> TrackerJet;
   vector<GenericObject> TrackerJetDisplaced;
   vector<GenericObject> TrackerMET;
   vector<GenericObject> TrackerHT;
   vector<GenericObject> TrackerMHT;
   vector<GenericObject> TrackerMETDisplaced;
   vector<GenericObject> TrackerHTDisplaced;
   vector<GenericObject> TrackerMHTDisplaced;
public:
   L1PhaseIITreeV22Messenger(TFile &File, string TreeName = "l1PhaseIITree/L1PhaseIITree");
   ~L1PhaseIITreeV22Messenger();
   void SetBranchAddress();
   bool GetEntry(int Entry);
   vector<double> GetRegionFromEta(vector<double> &Eta);
   vector<double> GetRegionFromEtaMuon(vector<double> &Eta);
   string Version() { return "V22"; }
   template<class T1, class T2, class T3, class T4, class T5, class T6, class T7, class T8, class T9, class T10, class T11, class T12>
      void FillObject(vector<GenericObject> &V, int N,
      vector<T1> *ET, vector<T2> *Eta, vector<T3> *Phi,
      vector<T4> *Bx, vector<T5> *Iso, vector<T6> *VZ, vector<T7> *PET,
      vector<T8> *Qual, vector<T9> *Type, vector<T10> *Flag, vector<T11> *Charge,
      vector<T12> *DXY)
   {
      V.clear();

      for(int i = 0; i < N; i++)
      {
         GenericObject O;

         double TempET  = (ET != nullptr  && ET->size() > i)  ? (*ET)[i]  : -1;
         double TempEta = (Eta != nullptr && Eta->size() > i) ? (*Eta)[i] : -1;
         double TempPhi = (Phi != nullptr && Phi->size() > i) ? (*Phi)[i] : -1;

         O.P.SetPtEtaPhi(TempET, TempEta, TempPhi);
         O.Bx     = (Bx != nullptr     && Bx->size() > i)     ? (*Bx)[i]     : -1;
         O.Iso    = (Iso != nullptr    && Iso->size() > i)    ? (*Iso)[i]    : -1;
         O.VZ     = (VZ != nullptr     && VZ->size() > i)     ? (*VZ)[i]     : -1;
         O.PET    = (PET != nullptr    && PET->size() > i)    ? (*PET)[i]    : -1;
         O.Qual   = (Qual != nullptr   && Qual->size() > i)   ? (*Qual)[i]   : -1;
         O.Type   = (Type != nullptr   && Type->size() > i)   ? (*Type)[i]   : -1;
         O.Flag   = (Flag != nullptr   && Flag->size() > i)   ? (*Flag)[i]   : 1;
         O.Charge = (Charge != nullptr && Charge->size() > i) ? (*Charge)[i] : 0;
         O.DXY    = (DXY != nullptr    && DXY->size() > i)    ? (*DXY)[i]    : -1;

         V.push_back(O);
      }
   }
};

class L1GenMessenger
{
public:
   TTree *Tree;
public:
   L1Analysis::L1AnalysisGeneratorDataFormat *Generator;
public:
   // Derived stuff
   vector<FourVector> GenP;
   vector<int> GenID;
   vector<int> GenStatus;
   vector<int> GenCharge;
   vector<int> GenParent;
   vector<vector<int>> GenDaughter;
   vector<FourVector> GenJet;
   vector<double> GenDxy;
   vector<double> GenLxy;
   FourVector GenMETTrue;
   FourVector GenMETCalo;
public:
   L1GenMessenger(TFile &File, string TreeName = "l1GeneratorTree/L1GenTree");
   ~L1GenMessenger();
   void SetBranchAddress();
   bool GetEntry(int Entry);
};


#endif










