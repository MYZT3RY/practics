using System;
using MenuClass;
using FileClass;

struct Date{
    int day;
    int month;
    int year;
}

struct Time{
    int hour;
    int minute;
}

struct Meetings{
    int id;
    Date dateOfMeeting;
    Time timeOfMeeting;
    string addressOfMeeting;
    int declaredMembers;
    int members;
    int listOfMembers;
    int acceptFlag;
}

struct dName{
    string name;
    string lastname;
    string pantronymic;
}

struct Declared{
    int id;
    dName name;
    bool flagOfOffense;
}

struct Offenses{
    int id;
    int idOfMeeting;
    int idOfDeclared;
    string regulatoryFact;
    float articleAndParagraphOfRegulatoryFact;
    bool flagOfCourtConviction;
}

namespace MenuClass{
    class Program{
        static void Main(string[] args){
            var menu = new Menu();
            menu.Main();
            /*CFile file = new CFile();
            file.GetConfig("ааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааа");
            Console.Read();*/
        }
    }
}