//---------------------------------------------------------------------------
#ifndef DATAHELPER_H
#define DATAHELPER_H
//---------------------------------------------------------------------------
// This is part of the custom helper file that allows better transfer
// of numbers and strings across programs.  It's kind of like a super
// light-weight database that depends only on C++ standard library.
//
// It implements a two-stage structure: first there are a list of states, and
// within each state there are list of key-value pairs.
//
// The value can be string, floating point, or integer, depending on what you
// assign it with.
//
// Usage:
//    DataHelper DHFile("Data.dh");
//    DHFile["State"]["Key"] = "Value";
//    DHFile["State"]["NJet"] = 100;
//    DHFile["State"]["JetPTSlope"] = -4.5;
//    DHFile.SaveToFile();   // can also specify a string to save to new file
//
// Author:
//    Yi Chen (chen.yi.first@gmail.com)
//---------------------------------------------------------------------------
#include <string>
#include <cstring>
#include <istream>
#include <ostream>
#include <fstream>
#include <map>
//---------------------------------------------------------------------------
#include "StateContainer.h"
//---------------------------------------------------------------------------
class DataHelper;
//---------------------------------------------------------------------------
std::ostream &operator <<(std::ostream &out, DataHelper &data);
std::istream &operator >>(std::istream &in, DataHelper &data);
//---------------------------------------------------------------------------
class DataHelper
{
private:
   std::map<std::string, StateContainer> States;
   char ConstantHeader[32];
   std::string CurrentFileName;
public:
   DataHelper();
   DataHelper(std::string FileName);
   ~DataHelper(); 
private:
   void Initialize();
   void CleanUp();
public:
   StateContainer &operator [](std::string Key);
   std::vector<std::string> GetListOfKeys();
   bool Exist(std::string Key);
   void Touch(std::string Key);
   void Insert(std::string Key, StateContainer NewState);
   void Erase(std::string Key);
   std::string GetRepresentation();
   std::string GetRepresentation(std::string Key);
   std::string GetRepresentation(std::string Key, std::string Item);
   std::string GetRawRepresentation();
   std::string GetRawRepresentation(std::string Key);
   std::string GetRawRepresentation(std::string Key, std::string Item);
   DataHelper &operator =(DataHelper &other);
   void LoadFromFile(std::string FileName);
   void LoadFromFile();
   void SaveToFile(std::string FileName);
   void SaveToFile();
   void LoadFromStream(std::istream &in);
   void SaveToStream(std::ostream &out);
};
//---------------------------------------------------------------------------
DataHelper::DataHelper()
{
   Initialize();
}
//---------------------------------------------------------------------------
DataHelper::DataHelper(std::string FileName)
{
   Initialize();
   LoadFromFile(FileName);
}
//---------------------------------------------------------------------------
DataHelper::~DataHelper()
{
   CleanUp();
}
//---------------------------------------------------------------------------
void DataHelper::Initialize()
{
   memset(ConstantHeader, '\0', 32);
   strcpy(ConstantHeader, "DataHelperFHead6427");
   CurrentFileName = "";
}
//---------------------------------------------------------------------------
void DataHelper::CleanUp()
{
   States.clear();
}
//---------------------------------------------------------------------------
StateContainer &DataHelper::operator [](std::string Key)
{
   Touch(Key);
   
   return States[Key];
}
//---------------------------------------------------------------------------
std::vector<std::string> DataHelper::GetListOfKeys()
{
   std::vector<std::string> Keys;

   for(std::map<std::string, StateContainer>::iterator iter = States.begin(); iter != States.end(); iter++)
      Keys.push_back(iter->first);
      
   return Keys;
}
//---------------------------------------------------------------------------
bool DataHelper::Exist(std::string Key)
{
   if(States.find(Key) == States.end())
      return false;
   return true;
}
//---------------------------------------------------------------------------
void DataHelper::Touch(std::string Key)
{
   if(States.find(Key) != States.end())
      return;
      
   StateContainer NewState;
   States.insert(std::pair<std::string, StateContainer>(Key, NewState));
}
//---------------------------------------------------------------------------
void DataHelper::Insert(std::string Key, StateContainer NewState)
{
   Touch(Key);
   
   States[Key] = NewState;
}
//---------------------------------------------------------------------------
void DataHelper::Erase(std::string Key)
{
   if(States.find(Key) == States.end())
      return;
   
   States.erase(States.find(Key));
}
//---------------------------------------------------------------------------
std::string DataHelper::GetRepresentation()
{
   std::string Representation = "[";

   bool FirstItem = true;
   
   for(std::map<std::string, StateContainer>::iterator iter = States.begin(); iter != States.end(); iter++)
   {
      if(FirstItem == true)
         FirstItem = false;
      else
         Representation = Representation + ", ";
      
      Representation = Representation + "\"" + iter->first + "\" -- " + iter->second.GetRepresentation();
   }

   Representation = Representation + "]";

   return Representation;
}
//---------------------------------------------------------------------------
std::string DataHelper::GetRepresentation(std::string Key)
{
   if(States.find(Key) == States.end())
      return "STATENOTFOUND";
   
   return States[Key].GetRepresentation();
}
//---------------------------------------------------------------------------
std::string DataHelper::GetRepresentation(std::string Key, std::string Item)
{
   if(States.find(Key) == States.end())
      return "STATENOTFOUND";
   
   return States[Key].GetRepresentation(Item);
}
//---------------------------------------------------------------------------
std::string DataHelper::GetRawRepresentation()
{
   std::string Representation = "[";

   bool FirstItem = true;
   
   for(std::map<std::string, StateContainer>::iterator iter = States.begin(); iter != States.end(); iter++)
   {
      if(FirstItem == true)
         FirstItem = false;
      else
         Representation = Representation + ", ";
      
      Representation = Representation + "\"" + iter->first + "\" -- " + iter->second.GetRawRepresentation();
   }

   Representation = Representation + "]";

   return Representation;
}
//---------------------------------------------------------------------------
std::string DataHelper::GetRawRepresentation(std::string Key)
{
   if(States.find(Key) == States.end())
      return "STATENOTFOUND";
   
   return States[Key].GetRawRepresentation();
}
//---------------------------------------------------------------------------
std::string DataHelper::GetRawRepresentation(std::string Key, std::string Item)
{
   if(States.find(Key) == States.end())
      return "STATENOTFOUND";
   
   return States[Key].GetRawRepresentation(Item);
}
//---------------------------------------------------------------------------
DataHelper &DataHelper::operator =(DataHelper &other)
{
   States = other.States;
   
   return *this;
}
//---------------------------------------------------------------------------
void DataHelper::LoadFromFile(std::string FileName)
{
   CurrentFileName = FileName;
   LoadFromFile();
}
//---------------------------------------------------------------------------
void DataHelper::LoadFromFile()
{
   std::ifstream in(CurrentFileName.c_str());
   LoadFromStream(in);
   in.close();
}
//---------------------------------------------------------------------------
void DataHelper::SaveToFile(std::string FileName)
{
   CurrentFileName = FileName;
   SaveToFile();
}
//---------------------------------------------------------------------------
void DataHelper::SaveToFile()
{
   std::ofstream out(CurrentFileName.c_str());
   SaveToStream(out);
   out.close();
}
//---------------------------------------------------------------------------
void DataHelper::LoadFromStream(std::istream &in)
{
   char Header[33];
   in.read(Header, 32);
   Header[32] = '\0';
   
   if(strcmp(Header, ConstantHeader) != 0)   // wrong file type
      return;
   
   char EntryCountChar[4];
   in.read(EntryCountChar, 4);
   int EntryCount = Char4ToInteger(EntryCountChar);
   
   for(int i = 0; i < EntryCount; i++)
   {
      char KeySizeChar[4] = "";
      in.read(KeySizeChar, 4);
      int KeySize = Char4ToInteger(KeySizeChar);
      
      char *ch = new char[KeySize+1];
      in.read(ch, KeySize);
      ch[KeySize] = '\0';
      
      std::string Key = ch;
      delete[] ch;
      
      StateContainer NewState;
      NewState.LoadFromStream(in);
      
      States.insert(std::pair<std::string, StateContainer>(Key, NewState));
   }
}
//---------------------------------------------------------------------------
void DataHelper::SaveToStream(std::ostream &out)
{
   out.write(ConstantHeader, 32);
   
   char EntryCount[4];
   IntegerToChar4(States.size(), EntryCount);
   out.write(EntryCount, 4);
   
   for(std::map<std::string, StateContainer>::iterator iter = States.begin(); iter != States.end(); iter++)
   {
      char KeySize[4];
      IntegerToChar4(iter->first.size(), KeySize);

      out.write(KeySize, 4);
      out.write(iter->first.c_str(), iter->first.size());

      iter->second.SaveToStream(out);
   }
}
//---------------------------------------------------------------------------
std::ostream &operator <<(std::ostream &out, DataHelper &data)
{
   out << data.GetRepresentation();
   return out;
}
//---------------------------------------------------------------------------
std::istream &operator >>(std::istream &in, DataHelper &data)
{
   data.LoadFromStream(in);
   return in;
}
//---------------------------------------------------------------------------
#endif

