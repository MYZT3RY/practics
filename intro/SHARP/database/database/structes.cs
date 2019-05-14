using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public struct Date
{
    int day;
    int month;
    int year;
}

public struct Time
{
    int hour;
    int minute;
}

public struct Meetings
{
    public int id;
    public Date dateOfMeeting;
    public Time timeOfMeeting;
    public string addressOfMeeting;
    public int declaredMembers;
    public int members;
    public int listOfMembers;
    public int acceptFlag;
}



struct dName
{
    string name;
    string lastname;
    string pantronymic;
}

struct Declared
{
    int id;
    dName name;
    bool flagOfOffense;
}

struct Offenses
{
    int id;
    int idOfMeeting;
    int idOfDeclared;
    string regulatoryFact;
    float articleAndParagraphOfRegulatoryFact;
    bool flagOfCourtConviction;
}

namespace structes
{
    class structes
    {
    }
}
