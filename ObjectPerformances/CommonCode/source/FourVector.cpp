//----------------------------------------------------------------------------
// FourVector class - with a lot of extra setters and getter
// Author: Yi Chen (original version on 6624)
//----------------------------------------------------------------------------
#include <vector>
#include <cmath>
#include <ostream>
//----------------------------------------------------------------------------
#include "FourVector.h"
//----------------------------------------------------------------------------
FourVector::FourVector()
{
   P[0] = 0;
   P[1] = 0;
   P[2] = 0;
   P[3] = 0;

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
FourVector::FourVector(double p[4])
{
   P[0] = p[0];
   P[1] = p[1];
   P[2] = p[2];
   P[3] = p[3];

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
FourVector::FourVector(double e, double px, double py, double pz)
{
   P[0] = e;
   P[1] = px;
   P[2] = py;
   P[3] = pz;

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
FourVector::~FourVector()
{
}
//----------------------------------------------------------------------------
void FourVector::SetPtEtaPhi(double pt, double eta, double phi)
{
   SetPtEtaPhiMass(pt, eta, phi, 0);
}
//----------------------------------------------------------------------------
void FourVector::SetPtEtaPhiMass(double pt, double eta, double phi, double mass)
{
   P[1] = pt * cos(phi);
   P[2] = pt * sin(phi);
   P[3] = pt * sinh(eta);

   P[0] = sqrt(mass * mass + SpatialDot(*this));

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
void FourVector::SetPtYPhi(double pt, double y, double phi)
{
   SetPtYPhiMass(pt, y, phi, 0);
}
//----------------------------------------------------------------------------
void FourVector::SetPtYPhiMass(double pt, double y, double phi, double mass)
{
   P[1] = pt * cos(phi);
   P[2] = pt * sin(phi);
   P[0] = sqrt(pt * pt +  mass * mass) * cosh(y);
   P[3] = P[0] * tanh(y);

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
void FourVector::SetSizeEtaPhi(double size, double eta, double phi)
{
   SetSizeEtaPhiMass(size, eta, phi, 0);
}
//----------------------------------------------------------------------------
void FourVector::SetSizeEtaPhiMass(double size, double eta, double phi, double mass)
{
   P[0] = sqrt(size * size + mass * mass);
   P[1] = size / cosh(eta) * cos(phi);
   P[2] = size / cosh(eta) * sin(phi);
   P[3] = size * tanh(eta);

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
void FourVector::SetSizeEtaPhiEnergy(double size, double eta, double phi, double energy)
{
   P[0] = energy;
   P[1] = size / cosh(eta) * cos(phi);
   P[2] = size / cosh(eta) * sin(phi);
   P[3] = size * tanh(eta);

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
void FourVector::SetSizeThetaPhi(double size, double theta, double phi)
{
   SetSizeThetaPhiMass(size, theta, phi, 0);
}
//----------------------------------------------------------------------------
void FourVector::SetSizeThetaPhiMass(double size, double theta, double phi, double mass)
{
   P[0] = sqrt(size * size + mass * mass);
   P[1] = size * sin(theta) * cos(phi);
   P[2] = size * sin(theta) * sin(phi);
   P[3] = size * cos(theta);

   CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
double &FourVector::operator [](int index)
{
   if(index >= 0 && index <= 3)
      return P[index];
   return P[0];
}
//----------------------------------------------------------------------------
double FourVector::operator [](int index) const
{
   if(index >= 0 && index <= 3)
      return P[index];
   return 0;
}
//----------------------------------------------------------------------------
FourVector &FourVector::operator =(const FourVector &Other)
{
   P[0] = Other.P[0];
   P[1] = Other.P[1];
   P[2] = Other.P[2];
   P[3] = Other.P[3];

   CalculateInnerQuantities();

   return *this;
}
//----------------------------------------------------------------------------
FourVector FourVector::operator +(const FourVector &Other) const
{
   FourVector Out;
   Out.P[0] = P[0] + Other.P[0];
   Out.P[1] = P[1] + Other.P[1];
   Out.P[2] = P[2] + Other.P[2];
   Out.P[3] = P[3] + Other.P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::operator -() const
{
   FourVector Out;
   Out.P[0] = -P[0];
   Out.P[1] = -P[1];
   Out.P[2] = -P[2];
   Out.P[3] = -P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::operator -(const FourVector &Other) const
{
   FourVector Out;
   Out.P[0] = P[0] - Other.P[0];
   Out.P[1] = P[1] - Other.P[1];
   Out.P[2] = P[2] - Other.P[2];
   Out.P[3] = P[3] - Other.P[3];
   return Out;
}
//----------------------------------------------------------------------------
double FourVector::operator *(FourVector other)
{
   return MetricDot(other);
}
//----------------------------------------------------------------------------
FourVector FourVector::operator *(double Scale) const
{
   FourVector Out;
   Out.P[0] = P[0] * Scale;
   Out.P[1] = P[1] * Scale;
   Out.P[2] = P[2] * Scale;
   Out.P[3] = P[3] * Scale;
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::operator /(double Scale) const
{
   FourVector Out;
   Out.P[0] = P[0] / Scale;
   Out.P[1] = P[1] / Scale;
   Out.P[2] = P[2] / Scale;
   Out.P[3] = P[3] / Scale;
   return Out;
}
//----------------------------------------------------------------------------
bool FourVector::operator <(const FourVector &Other) const
{
   if(P[0] < Other.P[0])   return true;
   if(P[0] > Other.P[0])   return false;
   if(P[1] < Other.P[1])   return true;
   if(P[1] > Other.P[1])   return false;
   if(P[2] < Other.P[2])   return true;
   if(P[2] > Other.P[2])   return false;
   if(P[3] < Other.P[3])   return true;
   if(P[3] > Other.P[3])   return false;

   return false;
}
//----------------------------------------------------------------------------
void FourVector::CalculateInnerQuantities()
{
   InnerP[0] = P[0];
   InnerP[1] = P[1];
   InnerP[2] = P[2];
   InnerP[3] = P[3];

   InnerEta = InnerGetEta();
   InnerPhi = InnerGetPhi();
   InnerMomentum = InnerGetP();
   InnerPT = InnerGetPT();
   InnerET = InnerGetET();
   InnerMass2 = InnerGetMass2();
   InnerY = InnerGetY();
   InnerTheta = InnerGetTheta();
}
//----------------------------------------------------------------------------
bool FourVector::IsModified()
{
   if(P[0] != InnerP[0])   return true;
   if(P[1] != InnerP[1])   return true;
   if(P[2] != InnerP[2])   return true;
   if(P[3] != InnerP[3])   return true;

   return false;
}
//----------------------------------------------------------------------------
void FourVector::CheckModified()
{
   if(IsModified() == true)
      CalculateInnerQuantities();
}
//----------------------------------------------------------------------------
double FourVector::InnerGetEta() const
{
   double Momentum = InnerGetP();
   return 0.5 * log((Momentum + InnerP[3]) / (Momentum - InnerP[3]));
}
//----------------------------------------------------------------------------
double FourVector::InnerGetPhi() const
{
   double PT = InnerGetPT();

   double Angle = acos(InnerP[1] / PT);
   if(InnerP[2] < 0)
      Angle = -Angle;

   return Angle;
}
//----------------------------------------------------------------------------
double FourVector::InnerGetP() const
{
   return sqrt(InnerP[1] * InnerP[1] + InnerP[2] * InnerP[2] + InnerP[3] * InnerP[3]);
}
//----------------------------------------------------------------------------
double FourVector::InnerGetPT() const
{
   return sqrt(InnerP[1] * InnerP[1] + InnerP[2] * InnerP[2]);
}
//----------------------------------------------------------------------------
double FourVector::InnerGetET() const
{
   return InnerGetPT() / InnerGetP() * InnerP[0];
}
//----------------------------------------------------------------------------
double FourVector::InnerGetMass2() const
{
   return InnerP[0] * InnerP[0] - InnerP[1] * InnerP[1] - InnerP[2] * InnerP[2] - InnerP[3] * InnerP[3];
}
//----------------------------------------------------------------------------
double FourVector::InnerGetY() const
{
   return 0.5 * log((InnerP[0] + InnerP[3]) / (InnerP[0] - InnerP[3]));
}
//----------------------------------------------------------------------------
double FourVector::InnerGetTheta() const
{
   return acos(InnerP[3] / InnerGetP());
}
//----------------------------------------------------------------------------
double FourVector::GetMass()
{
   CheckModified();
   
   if(InnerMass2 >= 0)
      return sqrt(InnerMass2);
   return 0;
}
//----------------------------------------------------------------------------
double FourVector::GetMass2()
{
   CheckModified();

   return InnerMass2;
}
//----------------------------------------------------------------------------
double FourVector::GetP()
{
   CheckModified();
   
   return InnerMomentum;
}
//----------------------------------------------------------------------------
double FourVector::GetP2()
{
   CheckModified();

   return InnerMomentum * InnerMomentum;
}
//----------------------------------------------------------------------------
double FourVector::GetPT()
{
   CheckModified();

   return InnerPT;
}
//----------------------------------------------------------------------------
double FourVector::GetPT2()
{
   CheckModified();

   return InnerPT * InnerPT;
}
//----------------------------------------------------------------------------
double FourVector::GetET()
{
   CheckModified();

   return InnerET;
}
//----------------------------------------------------------------------------
double FourVector::GetET2()
{
   CheckModified();

   return InnerET * InnerET;
}
//----------------------------------------------------------------------------
double FourVector::GetEta()
{
   CheckModified();

   return InnerEta;
}
//----------------------------------------------------------------------------
double FourVector::GetAbsEta()
{
   CheckModified();

   double Eta = InnerEta;

   if(Eta < 0)
      Eta = -Eta;

   return Eta;
}
//----------------------------------------------------------------------------
double FourVector::GetRapidity()
{
   CheckModified();

   return InnerY;
}
//----------------------------------------------------------------------------
double FourVector::GetY()
{
   return GetRapidity();
}
//----------------------------------------------------------------------------
double FourVector::GetPhi()
{
   CheckModified();

   return InnerPhi;
}
//----------------------------------------------------------------------------
double FourVector::GetTheta()
{
   CheckModified();

   return InnerTheta;
}
//----------------------------------------------------------------------------
double FourVector::GetBeta()
{
   double Gamma = GetGamma();
   return sqrt(1 - 1 / (Gamma * Gamma));
}
//----------------------------------------------------------------------------
double FourVector::GetGamma()
{
   return P[0] / GetMass();
}
//----------------------------------------------------------------------------
FourVector FourVector::RotateX(double Angle) const
{
   FourVector Out;
   Out.P[0] = P[0];
   Out.P[1] = P[1];
   Out.P[2] = cos(Angle) * P[2] - sin(Angle) * P[3];
   Out.P[3] = sin(Angle) * P[2] + cos(Angle) * P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::RotateY(double Angle) const
{
   FourVector Out;
   Out.P[0] = P[0];
   Out.P[1] = sin(Angle) * P[3] + cos(Angle) * P[1];
   Out.P[2] = P[2];
   Out.P[3] = cos(Angle) * P[3] - sin(Angle) * P[1];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::RotateZ(double Angle) const
{
   FourVector Out;
   Out.P[0] = P[0];
   Out.P[1] = cos(Angle) * P[1] - sin(Angle) * P[2];
   Out.P[2] = sin(Angle) * P[1] + cos(Angle) * P[2];
   Out.P[3] = P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::Rotate(FourVector Axis, double Angle)
{
   // rotate "axis" and input to y-z plane, then rotate "axis" to z axis,
   //    rotate input with respect to z axis
   //    and then rotate back

   double Psi = M_PI / 2 - Axis.GetPhi();
   double Theta = acos(Axis[3] / Axis.GetP());

   return RotateZ(Psi).RotateX(Theta).RotateZ(Angle).RotateX(-Theta).RotateZ(-Psi);
}
//----------------------------------------------------------------------------
FourVector FourVector::BoostX(double Beta) const
{
   double Gamma = BetaToGamma(Beta);

   FourVector Out;
   Out.P[0] = Gamma * P[0] + Beta * Gamma * P[1];
   Out.P[1] = Beta * Gamma * P[0] + Gamma * P[1];
   Out.P[2] = P[2];
   Out.P[3] = P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::BoostY(double Beta) const
{
   double Gamma = BetaToGamma(Beta);

   FourVector Out;
   Out.P[0] = Gamma * P[0] + Beta * Gamma * P[2];
   Out.P[1] = P[1];
   Out.P[2] = Beta * Gamma * P[0] + Gamma * P[2];
   Out.P[3] = P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::BoostZ(double Beta) const
{
   double Gamma = BetaToGamma(Beta);

   FourVector Out;
   Out.P[0] = Gamma * P[0] + Beta * Gamma * P[3];
   Out.P[1] = P[1];
   Out.P[2] = P[2];
   Out.P[3] = Beta * Gamma * P[0] + Gamma * P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::Boost(FourVector Axis, double Beta) const
{
   if(Axis.GetPT() < 1e-8)   // axis along z direction
   {
      if(Axis[3] > 0)
         return BoostZ(Beta);
      else
         return BoostZ(-Beta);
   }

   double Psi = M_PI / 2 - Axis.GetPhi();
   double Theta = acos(Axis[3] / Axis.GetP());

   return RotateZ(Psi).RotateX(Theta).BoostZ(Beta).RotateX(-Theta).RotateZ(-Psi);
}
//----------------------------------------------------------------------------
FourVector FourVector::GammaBoostX(double Gamma) const
{
   double Beta = GammaToBeta(Gamma);
   if(Gamma < 0)
   {
      Gamma = -Gamma;
      Beta = -Beta;
   }

   FourVector Out;
   Out.P[0] = Gamma * P[0] + Beta * Gamma * P[1];
   Out.P[1] = Beta * Gamma * P[0] + Gamma * P[1];
   Out.P[2] = P[2];
   Out.P[3] = P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::GammaBoostY(double Gamma) const
{
   double Beta = GammaToBeta(Gamma);
   if(Gamma < 0)
   {
      Gamma = -Gamma;
      Beta = -Beta;
   }

   FourVector Out;
   Out.P[0] = Gamma * P[0] + Beta * Gamma * P[2];
   Out.P[1] = P[1];
   Out.P[2] = Beta * Gamma * P[0] + Gamma * P[2];
   Out.P[3] = P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::GammaBoostZ(double Gamma) const
{
   double Beta = GammaToBeta(Gamma);
   if(Gamma < 0)
   {
      Gamma = -Gamma;
      Beta = -Beta;
   }

   FourVector Out;
   Out.P[0] = Gamma * P[0] + Beta * Gamma * P[3];
   Out.P[1] = P[1];
   Out.P[2] = P[2];
   Out.P[3] = Beta * Gamma * P[0] + Gamma * P[3];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::GammaBoost(FourVector Axis, double Gamma) const
{
   if(Axis.GetPT() < 1e-8)   // axis along z direction
   {
      if(Axis[3] > 0)
         return GammaBoostZ(Gamma);
      else
         return GammaBoostZ(-Gamma);
   }

   double Psi = M_PI / 2 - Axis.GetPhi();
   double Theta = acos(Axis[3] / Axis.GetP());

   return RotateZ(Psi).RotateX(Theta).GammaBoostZ(Gamma).RotateX(-Theta).RotateZ(-Psi);
}
//----------------------------------------------------------------------------
FourVector FourVector::SmearAngle(double Angle)
{
   FourVector Reference(0, 1, 0, 0);
   if(fabs(P[2]) < 1e-6 && fabs(P[3]) < 1e-6)
      Reference[2] = 1;

   FourVector Axis = SpatialCross(Reference);   // so that axis is perpendicular to input momentum

   FourVector RealAxis;   // pick a random rotation axis perpendicular to input momentum
   // double AxisRotation = DefaultRandomBase.DrawRandom(0, 2 * M_PI);
   double AxisRotation = 0;
   RealAxis = Axis.Rotate(*this, AxisRotation);

   // double SmearAngle = DefaultRandomBase.DrawGaussian(Angle);
   double SmearAngle = 0;
   return Rotate(RealAxis, SmearAngle);
}
//----------------------------------------------------------------------------
FourVector FourVector::SmearMomentum(double Scale) const
{
   // double Factor = 1 + DefaultRandomBase.DrawGaussian(Scale);
   double Factor = 1;

   return (*this) * Factor;
}
//----------------------------------------------------------------------------
FourVector FourVector::SpatialCross(FourVector Other) const
{
   FourVector Out;
   Out.P[0] = P[0];
   Out.P[1] = P[2] * Other.P[3] - P[3] * Other.P[2];
   Out.P[2] = P[3] * Other.P[1] - P[1] * Other.P[3];
   Out.P[3] = P[1] * Other.P[2] - P[2] * Other.P[1];
   return Out;
}
//----------------------------------------------------------------------------
FourVector FourVector::SpatialNormalize()
{
   FourVector Out;
   Out = (*this) / GetP();
   return Out;
}
//----------------------------------------------------------------------------
double FourVector::SpatialDot(FourVector Other) const
{
   return P[1] * Other.P[1] + P[2] * Other.P[2] + P[3] * Other.P[3];
}
//----------------------------------------------------------------------------
double FourVector::MetricDot(FourVector Other) const
{
   return P[0] * Other.P[0] - SpatialDot(Other);
}
//----------------------------------------------------------------------------
std::ostream &operator <<(std::ostream &out, FourVector P)
{
   out << "(" << P[0] << ", " << P[1] << ", " << P[2] << ", " << P[3] << ")";
   return out;
}
//----------------------------------------------------------------------------
FourVector operator *(double Scale, FourVector P)
{
   return P * Scale;
}
//----------------------------------------------------------------------------
double GetAngle(FourVector P1, FourVector P2)
{
   double V = P1.SpatialDot(P2) / P1.GetP() / P2.GetP();
   if(V > 1 && V - 1 < 1e-5)
      V = 0.999999;
   if(V < -1 && (-1) - V > -1e-5)
      V = -0.999999;
   return acos(V);
}
//----------------------------------------------------------------------------
double GetDR(FourVector P1, FourVector P2)
{
   double DEta = P1.GetEta() - P2.GetEta();
   double DPhi = GetDPhi(P1, P2);

   return sqrt(DPhi * DPhi + DEta * DEta);
}
//----------------------------------------------------------------------------
double GetDPhi(FourVector P1, FourVector P2)
{
   double DPhi = P1.GetPhi() - P2.GetPhi();

   if(DPhi > M_PI)
      DPhi = 2 * M_PI - DPhi;
   if(DPhi < -M_PI)
      DPhi = DPhi + 2 * M_PI;

   return DPhi;
}
//----------------------------------------------------------------------------
double BetaToGamma(double Beta)
{
   return 1 / sqrt(1 - Beta * Beta);
}
//----------------------------------------------------------------------------
double GammaToBeta(double Gamma)
{
   return sqrt(1 - 1 / (Gamma * Gamma));
}
//----------------------------------------------------------------------------


