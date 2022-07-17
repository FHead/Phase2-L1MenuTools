// This file does the exporting to text file for rate codes
//
// It reads from DH files and format it in a way compatible with what the rate code needs
// Not steerable from command line for now
//
// Author: Yi Chen (chen.yi.first@gmail.com)

#include <iostream>
#include <vector>
#include <fstream>
using namespace std;

#include "TFile.h"
#include "TGraph.h"
#include "TF1.h"

#include "DataHelper.h"

struct Configuration
{
   string Name;
   string DHFileName;
   string State;
   double P0;
   double P1;
   double EtaEnd;
};

int main(int argc, char *argv[]);
void FitGraph(Configuration &C);
string Unit(Configuration C);
string Unit(double P0, double P1);

int main(int argc, char *argv[])
{
   // ofstream OutputFile("Text/ScalingsV12bV17V18V20V21.txt");
   ofstream OutputFile("Text/ScalingsV22.txt");

   string DHV12b = "DH/CurvesV12b.dh";
   string DHV14 = "DH/CurvesV14.dh";
   string DHV17 = "DH/CurvesV17.dh";
   string DHV17Had = "DH/CurvesV17Had.dh";
   string DHV18 = "DH/CurvesV18.dh";
   string DHV20 = "DH/CurvesV20.dh";
   string DHV21 = "DH/CurvesV21.dh";
   string DHV22 = "DH/CurvesV22.dh";

   typedef Configuration C;

   vector<vector<C>> Cs;

   // Single eta range
   // Cs.push_back({C{"Phase1PuppiHT", DHV12b, "Phase1PuppiHT", 0, 0, 2.4}});
   // Cs.push_back({C{"Phase1PuppiMHT", DHV12b, "Phase1PuppiMHT15", 0, 0, 2.4}});
   // Cs.push_back({C{"PuppiMET", DHV12b, "PuppiMET", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerHT", DHV12b, "TrackerHT", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerMHT", DHV12b, "TrackerMHT", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerMET", DHV12b, "TrackerMET", 0, 0, 2.4}});
   // Cs.push_back({C{"CaloHT", DHV14, "CaloHT", 0, 0, 2.4}});
   // Cs.push_back({C{"Phase1PuppiHT", DHV17, "Phase1PuppiHT", 0, 0, 2.4}});
   // Cs.push_back({C{"Phase1PuppiHTHad", DHV17Had, "Phase1PuppiHT", 0, 0, 2.4}});
   // Cs.push_back({C{"Phase1PuppiMHT", DHV17, "Phase1PuppiMHT15", 0, 0, 2.4}});
   // Cs.push_back({C{"Phase1PuppiMHT090", DHV17, "090Phase1PuppiMHT15Fit", 0, 0, 2.4}});
   // Cs.push_back({C{"PuppiMET", DHV17, "PuppiMET", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerHT", DHV17, "TrackerHT", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerHTHad", DHV17Had, "TrackerHT", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerMHT", DHV17, "TrackerMHT", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerMHT090", DHV17, "090TrackerMHTLowFit", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerMET", DHV17, "TrackerMETFit", 0, 0, 2.4}});
   // Cs.push_back({C{"CaloHT", DHV17, "CaloHT", 0, 0, 2.4}});
   // Cs.push_back({C{"CaloHTHad", DHV17Had, "CaloHT", 0, 0, 2.4}});
   Cs.push_back({C{"Phase1PuppiHT", DHV22, "Phase1PuppiHT", 0, 0, 2.4}});
   Cs.push_back({C{"Phase1PuppiMHT", DHV22, "Phase1PuppiMHT15", 0, 0, 2.4}});
   Cs.push_back({C{"Phase1PuppiMHT090", DHV22, "090Phase1PuppiMHT15Fit", 0, 0, 2.4}});
   Cs.push_back({C{"PuppiMET", DHV22, "PuppiMET", 0, 0, 2.4}});
   Cs.push_back({C{"TrackerHT", DHV22, "TrackerHT", 0, 0, 2.4}});
   Cs.push_back({C{"TrackerMHT", DHV22, "TrackerMHT", 0, 0, 2.4}});
   Cs.push_back({C{"TrackerMHT090", DHV22, "090TrackerMHTLowFit", 0, 0, 2.4}});
   Cs.push_back({C{"TrackerMET", DHV22, "TrackerMETFit", 0, 0, 2.4}});
   Cs.push_back({C{"CaloHT", DHV22, "CaloHT", 0, 0, 2.4}});
   
   // Cs.push_back({C{"Phase1PuppiHT090", DHV17, "090Phase1PuppiHT", 0, 0, 2.4}});
   // Cs.push_back({C{"Phase1PuppiHT090Had", DHV17Had, "090Phase1PuppiHT", 0, 0, 2.4}});
   // Cs.push_back({C{"PuppiMET090", DHV17, "090PuppiMET", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerHT090", DHV17, "090TrackerHT", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerHT090Had", DHV17Had, "090TrackerHT", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerMET090", DHV17, "090TrackerMETFit", 0, 0, 2.4}});
   // Cs.push_back({C{"CaloHT090", DHV17, "090CaloHT", 0, 0, 2.4}});
   // Cs.push_back({C{"CaloHT090Had", DHV17Had, "090CaloHT", 0, 0, 2.4}});
   Cs.push_back({C{"Phase1PuppiHT090", DHV22, "090Phase1PuppiHT", 0, 0, 2.4}});
   Cs.push_back({C{"PuppiMET090", DHV22, "090PuppiMET", 0, 0, 2.4}});
   Cs.push_back({C{"TrackerHT090", DHV22, "090TrackerHT", 0, 0, 2.4}});
   Cs.push_back({C{"TrackerMET090", DHV22, "090TrackerMETFit", 0, 0, 2.4}});
   Cs.push_back({C{"CaloHT090", DHV22, "090CaloHT", 0, 0, 2.4}});

   // Two eta ranges
   // Cs.push_back({C{"EGElectron", DHV12b, "EGTrackIDBarrel", 0, 0, 1.5},
   //               C{"EGElectron", DHV12b, "EGTrackIDEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"TkElectron", DHV12b, "TkElectronTrackIDBarrel", 0, 0, 1.5},
   //               C{"TkElectron", DHV12b, "TkElectronTrackIDEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"TkIsoElectron", DHV12b, "TkIsoElectronBarrel", 0, 0, 1.5},
   //               C{"TkIsoElectron", DHV12b, "TkIsoElectronEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"TkIsoPhoton", DHV12b, "TkIsoPhotonTrackIDBarrel", 0, 0, 1.5},
   //               C{"TkIsoPhoton", DHV12b, "TkIsoPhotonTrackIDEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"TkIsoPhotonPV", DHV12b, "TkIsoPhotonPVTrackIDBarrel", 0, 0, 1.5},
   //               C{"TkIsoPhotonPV", DHV12b, "TkIsoPhotonPVTrackIDEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"EGElectron", DHV22, "EGTrackIDBarrel", 0, 0, 1.5},
                 C{"EGElectron", DHV22, "EGTrackIDEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"TkElectron", DHV22, "TkElectronTrackIDBarrel", 0, 0, 1.5},
                 C{"TkElectron", DHV22, "TkElectronTrackIDEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"TkIsoElectron", DHV22, "TkIsoElectronBarrel", 0, 0, 1.5},
                 C{"TkIsoElectron", DHV22, "TkIsoElectronEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"TkIsoPhoton", DHV22, "TkIsoPhotonTrackIDBarrel", 0, 0, 1.5},
                 C{"TkIsoPhoton", DHV22, "TkIsoPhotonTrackIDEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerJet", DHV12b, "TrackerJetBarrelFit", 0, 0, 1.5},
   //               C{"TrackerJet", DHV12b, "TrackerJetEndcapFit", 0, 0, 2.4}});
   // Cs.push_back({C{"TrackerJet", DHV17, "TrackerJetBarrelFit", 0, 0, 1.5},
   //               C{"TrackerJet", DHV17, "TrackerJetEndcapFit", 0, 0, 2.4}});
   // Cs.push_back({C{"CaloTau050", DHV18, "CaloTauFitBarrel", 0, 0, 1.5},
   //               C{"CaloTau050", DHV18, "CaloTauFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau050", DHV18, "HHNNTauLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau050", DHV18, "HHNNTauLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx050", DHV18, "HHNNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx050", DHV18, "HHNNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"CaloTau090", DHV18, "090CaloTauFitBarrel", 0, 0, 1.5},
   //               C{"CaloTau090", DHV18, "090CaloTauFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau090", DHV18, "090HHNNTauLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau090", DHV18, "090HHNNTauLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx090", DHV18, "090HHNNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx090", DHV18, "090HHNNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau050VBF", DHV18, "NNTauLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau050VBF", DHV18, "NNTauLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx050VBF", DHV18, "NNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx050VBF", DHV18, "NNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau090VBF", DHV18, "090NNTauLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau090VBF", DHV18, "090NNTauLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx090VBF", DHV18, "090NNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx090VBF", DHV18, "090NNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx050V20", DHV20, "HHNNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx050V20", DHV20, "HHNNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx090V20", DHV20, "090HHNNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx090V20", DHV20, "090HHNNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx050VBFV21", DHV21, "NNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx050VBFV21", DHV21, "NNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   // Cs.push_back({C{"NNPuppiTau2Vtx090VBFV21", DHV21, "090NNTau2VtxLooseFitBarrel", 0, 0, 1.5},
   //               C{"NNPuppiTau2Vtx090VBFV21", DHV21, "090NNTau2VtxLooseFitEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"TrackerJet", DHV22, "TrackerJetBarrelFit", 0, 0, 1.5},
                 C{"TrackerJet", DHV22, "TrackerJetEndcapFit", 0, 0, 2.4}});
   Cs.push_back({C{"CaloTau050", DHV22, "CaloTauFitBarrel", 0, 0, 1.5},
                 C{"CaloTau050", DHV22, "CaloTauFitEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"NNPuppiTau050", DHV22, "HHNNTauLooseFitBarrel", 0, 0, 1.5},
                 C{"NNPuppiTau050", DHV22, "HHNNTauLooseFitEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"CaloTau090", DHV22, "090CaloTauFitBarrel", 0, 0, 1.5},
                 C{"CaloTau090", DHV22, "090CaloTauFitEndcap", 0, 0, 2.4}});
   Cs.push_back({C{"NNPuppiTau090", DHV22, "090HHNNTauLooseFitBarrel", 0, 0, 1.5},
                 C{"NNPuppiTau090", DHV22, "090HHNNTauLooseFitEndcap", 0, 0, 2.4}});
 
   // Three eta ranges
   // Cs.push_back({C{"Phase1PuppiJet", DHV12b, "Phase1PuppiJetBarrel", 0, 0, 1.5},
   //               C{"Phase1PuppiJet", DHV12b, "Phase1PuppiJetEndcap", 0, 0, 2.4},
   //               C{"Phase1PuppiJet", DHV12b, "Phase1PuppiJetForward", 0, 0, 5.0}});
   // Cs.push_back({C{"Phase1PuppiJet", DHV17, "Phase1PuppiJetBarrel", 0, 0, 1.5},
   //               C{"Phase1PuppiJet", DHV17, "Phase1PuppiJetEndcap", 0, 0, 2.4},
   //               C{"Phase1PuppiJet", DHV17, "Phase1PuppiJetForward", 0, 0, 5.0}});
   Cs.push_back({C{"Phase1PuppiJet", DHV22, "Phase1PuppiJetBarrel", 0, 0, 1.5},
                 C{"Phase1PuppiJet", DHV22, "Phase1PuppiJetEndcap", 0, 0, 2.4},
                 C{"Phase1PuppiJet", DHV22, "Phase1PuppiJetForward", 0, 0, 5.0}});
   // Cs.push_back({C{"TkMuonQual", DHV12b, "TkMuonQualB", 0, 0, 0.83},
   //               C{"TkMuonQual", DHV12b, "TkMuonQualO", 0, 0, 1.24},
   //               C{"TkMuonQual", DHV12b, "TkMuonQualE", 0, 0, 2.40}});
   // Cs.push_back({C{"StandaloneMuonQual", DHV12b, "StandaloneMuonQualIsoB", 0, 0, 0.83},
   //               C{"StandaloneMuonQual", DHV12b, "StandaloneMuonQualIsoO", 0, 0, 1.24},
   //               C{"StandaloneMuonQual", DHV12b, "StandaloneMuonQualIsoE", 0, 0, 2.40}});
   // Cs.push_back({C{"GMTTkMuon", DHV12b, "GMTTkMuonB", 0, 0, 0.83},
   //               C{"GMTTkMuon", DHV12b, "GMTTkMuonO", 0, 0, 1.24},
   //               C{"GMTTkMuon", DHV12b, "GMTTkMuonE", 0, 0, 2.40}});
   // Cs.push_back({C{"GMTTkMuonNStubs", DHV12b, "GMTTkMuonNStubsB", 0, 0, 0.83},
   //               C{"GMTTkMuonNStubs", DHV12b, "GMTTkMuonNStubsO", 0, 0, 1.24},
   //               C{"GMTTkMuonNStubs", DHV12b, "GMTTkMuonNStubsE", 0, 0, 2.40}});
   // Cs.push_back({C{"GMTMuon", DHV12b, "GMTMuonB", 0, 0, 0.83},
   //               C{"GMTMuon", DHV12b, "GMTMuonO", 0, 0, 1.24},
   //               C{"GMTMuon", DHV12b, "GMTMuonEFit", 0, 0, 2.40}});
   // Cs.push_back({C{"GMTMuonQual", DHV12b, "GMTMuonB", 0, 0, 0.83},
   //               C{"GMTMuonQual", DHV12b, "GMTMuonQualO", 0, 0, 1.24},
   //               C{"GMTMuonQual", DHV12b, "GMTMuonEFit", 0, 0, 2.40}});
   Cs.push_back({C{"GMTTkMuon", DHV22, "GMTTkMuonB", 0, 0, 0.83},
                 C{"GMTTkMuon", DHV22, "GMTTkMuonO", 0, 0, 1.24},
                 C{"GMTTkMuon", DHV22, "GMTTkMuonE", 0, 0, 2.40}});
   Cs.push_back({C{"GMTTkMuonNStubs", DHV22, "GMTTkMuonNStubsB", 0, 0, 0.83},
                 C{"GMTTkMuonNStubs", DHV22, "GMTTkMuonNStubsO", 0, 0, 1.24},
                 C{"GMTTkMuonNStubs", DHV22, "GMTTkMuonNStubsE", 0, 0, 2.40}});
   Cs.push_back({C{"GMTMuon", DHV22, "GMTMuonB", 0, 0, 0.83},
                 C{"GMTMuon", DHV22, "GMTMuonO", 0, 0, 1.24},
                 C{"GMTMuon", DHV22, "GMTMuonEFit", 0, 0, 2.40}});
   Cs.push_back({C{"GMTMuonQual", DHV22, "GMTMuonB", 0, 0, 0.83},
                 C{"GMTMuonQual", DHV22, "GMTMuonQualO", 0, 0, 1.24},
                 C{"GMTMuonQual", DHV22, "GMTMuonEFit", 0, 0, 2.40}});
   // Cs.push_back({C{"CaloJet", DHV12b, "CaloJetBarrel", 0, 0, 1.5},
   //               C{"CaloJet", DHV12b, "CaloJetEndcapStringterpolate", 0, 0, 2.4},
   //               C{"CaloJet", DHV12b, "CaloJetForwardStringterpolate", 0, 0, 5.0}});
   // Cs.push_back({C{"SeededConePuppiJet", DHV14, "SeededConePuppiJetBarrel", 0, 0, 1.5},
   //               C{"SeededConePuppiJet", DHV14, "SeededConePuppiJetEndcapStringterpolate", 0, 0, 2.4},
   //               C{"SeededConePuppiJet", DHV14, "SeededConePuppiJetForwardStringterpolate", 0, 0, 5.0}});
   // Cs.push_back({C{"CaloJet", DHV17, "CaloJetBarrel", 0, 0, 1.5},
   //               C{"CaloJet", DHV17, "CaloJetEndcapStringterpolate", 0, 0, 2.4},
   //               C{"CaloJet", DHV17, "CaloJetForwardStringterpolate", 0, 0, 5.0}});
   // Cs.push_back({C{"SeededConePuppiJet", DHV17, "SeededConePuppiJetBarrel", 0, 0, 1.5},
   //               C{"SeededConePuppiJet", DHV17, "SeededConePuppiJetEndcapStringterpolate", 0, 0, 2.4},
   //               C{"SeededConePuppiJet", DHV17, "SeededConePuppiJetForwardStringterpolate", 0, 0, 5.0}});
   Cs.push_back({C{"CaloJet", DHV22, "CaloJetBarrel", 0, 0, 1.5},
                 C{"CaloJet", DHV22, "CaloJetEndcapStringterpolate", 0, 0, 2.4},
                 C{"CaloJet", DHV22, "CaloJetForwardStringterpolate", 0, 0, 5.0}});
   Cs.push_back({C{"SeededConePuppiJet", DHV22, "SeededConePuppiJetBarrel", 0, 0, 1.5},
                 C{"SeededConePuppiJet", DHV22, "SeededConePuppiJetEndcapStringterpolate", 0, 0, 2.4},
                 C{"SeededConePuppiJet", DHV22, "SeededConePuppiJetForwardStringterpolate", 0, 0, 5.0}});

   for(vector<C> &V : Cs)
   {
      for(C &P : V)
         FitGraph(P);

      string Closing = "";

      OutputFile << "function :: " << V[0].Name << "OfflineEtCut :: args:=(offline,Et,Eta); ";
      OutputFile << "lambda:=";
      if(V.size() >= 1)   OutputFile << Unit(V[0]);
      for(int i = 1; i < (int)V.size(); i++)
      {
         OutputFile << " if abs(Eta)<" << V[i-1].EtaEnd << " else (" << Unit(V[i]);
         Closing = Closing + ")";
      }
      OutputFile << Closing << endl;
   }

   OutputFile.close();

   return 0;
}

void FitGraph(Configuration &C)
{
   DataHelper DHFile(C.DHFileName);

   int N = DHFile[C.State]["N"].GetInteger();

   if(N <= 0)
      return;

   TGraph G(N);

   for(int i = 0; i < N; i++)
   {
      double X = DHFile[C.State][Form("X%d",i)].GetDouble();
      double Y = DHFile[C.State][Form("Y%d",i)].GetDouble();

      G.SetPoint(i, X, Y);
   }
      
   TF1 F("F", "[0]+[1]*x");
   G.Fit(&F);

   C.P0 = F.GetParameter(0);
   C.P1 = F.GetParameter(1);
}

string Unit(Configuration C)
{
   return Unit(C.P0, C.P1);
}

string Unit(double P0, double P1)
{
   string Result = "";
   if(P0 > 0)
      Result = "Et>(offline-" + to_string(P0) + ")/" + to_string(P1);
   else
      Result = "Et>(offline+" + to_string(-P0) + ")/" + to_string(P1);
   return Result;
}

