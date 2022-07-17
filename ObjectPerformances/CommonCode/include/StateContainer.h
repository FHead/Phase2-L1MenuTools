//---------------------------------------------------------------------------
#ifndef STATECONTAINER_H
#define STATECONTAINER_H
//---------------------------------------------------------------------------
// This is part of the custom helper file that allows better transfer
// of numbers and strings across programs.  It's kind of like a super
// light-weight database that depends only on C++ standard library.
// See DataHelper.h for more explanation.
//
// Author:
//    Yi Chen (chen.yi.first@gmail.com)
//---------------------------------------------------------------------------
#include <string>
#include <vector>
#include <map>
//---------------------------------------------------------------------------
#include "DataContainer.h"
//---------------------------------------------------------------------------
class StateContainer;
//---------------------------------------------------------------------------
std::ostream &operator <<(std::ostream &out, StateContainer &data);
std::istream &operator >>(std::istream &in, StateContainer &data);
//---------------------------------------------------------------------------
class StateContainer
{
   friend class DataHelper;
private:
   std::map<std::string, DataContainer> Data;
public:
   StateContainer();
   StateContainer(StateContainer &other);
   StateContainer(const StateContainer &other);
   ~StateContainer();
private:
   void Initialize();
   void CleanUp();
public:
   std::vector<std::string> GetListOfKeys();
   DataContainer &operator [](std::string Key);   // get single object
   void Insert(std::string Key, DataContainer NewData);
   bool Exist(std::string Key);
   void Touch(std::string Key);
   void Delete(std::string Key);
   std::string GetRepresentation(std::string Key);   // get representation of single value
   std::string GetRepresentation();   // get representation of whole object
   std::string GetRawRepresentation(std::string Key);   // get representation of single value
   std::string GetRawRepresentation();   // get representation of whole object
   void SaveToStream(std::ostream &out);
   void LoadFromStream(std::istream &in);
   StateContainer &operator =(const StateContainer &other);
};
//---------------------------------------------------------------------------
StateContainer::StateContainer()
{
}
//---------------------------------------------------------------------------
StateContainer::StateContainer(StateContainer &other)
{
   Data = other.Data;
}
//---------------------------------------------------------------------------
StateContainer::StateContainer(const StateContainer &other)
{
   Data = other.Data;
}
//---------------------------------------------------------------------------
StateContainer::~StateContainer()
{
}
//---------------------------------------------------------------------------
void StateContainer::Initialize()
{
}
//---------------------------------------------------------------------------
void StateContainer::CleanUp()
{
   Data.clear();
}
//---------------------------------------------------------------------------
std::vector<std::string> StateContainer::GetListOfKeys()
{
   std::vector<std::string> Keys;
   for(std::map<std::string, DataContainer>::iterator iter = Data.begin(); iter != Data.end(); iter++)
      Keys.push_back(iter->first);
   
   return Keys;
}
//---------------------------------------------------------------------------
DataContainer &StateContainer::operator [](std::string Key)
{
   Touch(Key);   
   return Data[Key];
}
//---------------------------------------------------------------------------
void StateContainer::Insert(std::string Key, DataContainer NewData)
{
   Touch(Key);
   Data[Key] = NewData;
}
//---------------------------------------------------------------------------
bool StateContainer::Exist(std::string Key)
{
   if(Data.find(Key) == Data.end())
      return false;
   return true;
}
//---------------------------------------------------------------------------
void StateContainer::Touch(std::string Key)
{
   if(Data.find(Key) != Data.end())
      return;
      
   DataContainer NewData;
   Data.insert(std::pair<std::string, DataContainer>(Key, NewData));
}
//---------------------------------------------------------------------------
void StateContainer::Delete(std::string Key)
{
   if(Data.find(Key) == Data.end())
      return;
   
   Data.erase(Data.find(Key));
}
//---------------------------------------------------------------------------
std::string StateContainer::GetRepresentation(std::string Key)
{
   if(Data.find(Key) == Data.end())
      return "DATANOTFOUND";
      
   return Data[Key].GetRepresentation();
}
//---------------------------------------------------------------------------
std::string StateContainer::GetRepresentation()
{
   bool FirstEntry = true;

   std::string Representation = "{";
   
   for(std::map<std::string, DataContainer>::iterator iter = Data.begin(); iter != Data.end(); iter++)
   {
      if(FirstEntry == true)
         FirstEntry = false;
      else
         Representation = Representation + ", ";
         
      Representation = Representation + "\"" + iter->first + "\": " + iter->second.GetRepresentation();
   }

   Representation = Representation + "}";

   return Representation;
}
//---------------------------------------------------------------------------
std::string StateContainer::GetRawRepresentation(std::string Key)
{
   if(Data.find(Key) == Data.end())
      return "DATANOTFOUND";
      
   return Data[Key].GetRawRepresentation();
}
//---------------------------------------------------------------------------
std::string StateContainer::GetRawRepresentation()
{
   bool FirstEntry = true;

   std::string Representation = "{";
   
   for(std::map<std::string, DataContainer>::iterator iter = Data.begin(); iter != Data.end(); iter++)
   {
      if(FirstEntry == true)
         FirstEntry = false;
      else
         Representation = Representation + ", ";
         
      Representation = Representation + "\"" + iter->first + "\": " + iter->second.GetRawRepresentation();
   }

   Representation = Representation + "}";

   return Representation;
}
//---------------------------------------------------------------------------
void StateContainer::SaveToStream(std::ostream &out)
{
   char EntryCount[4];
   IntegerToChar4(Data.size(), EntryCount);
   
   out.write(EntryCount, 4);
   
   for(std::map<std::string, DataContainer>::iterator iter = Data.begin(); iter != Data.end(); iter++)
   {
      char KeySize[4];
      IntegerToChar4(iter->first.size(), KeySize);

      out.write(KeySize, 4);      
      out.write(iter->first.c_str(), iter->first.size());
      
      iter->second.SaveToStream(out);
   }
}
//---------------------------------------------------------------------------
void StateContainer::LoadFromStream(std::istream &in)
{
   CleanUp();
   
   char EntryCountChar[4];
   in.read(EntryCountChar, 4);
   int EntryCount = Char4ToInteger(EntryCountChar);
   
   for(int i = 0; i < EntryCount; i++)
   {
      char KeySizeChar[4];
      in.read(KeySizeChar, 4);
      int KeySize = Char4ToInteger(KeySizeChar);

      std::string Key = "";
      
      char *ch = new char[KeySize+1];
      in.read(ch, KeySize);
      ch[KeySize] = '\0';
      Key = ch;
      delete[] ch;
      
      DataContainer NewData;
      NewData.LoadFromStream(in);
      
      Data.insert(std::pair<std::string, DataContainer>(Key, NewData));
   }
}
//---------------------------------------------------------------------------
StateContainer &StateContainer::operator =(const StateContainer &other)
{
   Data = other.Data;
   
   return *this;
}
//---------------------------------------------------------------------------
std::ostream &operator <<(std::ostream &out, StateContainer &data)
{
   out << data.GetRepresentation();
   return out;
}
//---------------------------------------------------------------------------
std::istream &operator >>(std::istream &in, StateContainer &data)
{
   data.LoadFromStream(in);
   return in;
}
//---------------------------------------------------------------------------
#endif
