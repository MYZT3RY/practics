using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public struct Date{
    public int day;
    public int month;
    public int year;
}

public struct Time{
    public int hour;
    public int minute;
}

public struct Meetings{
    public int id;
    public Date dateOfMeeting;
    public Time timeOfMeeting;
    public string addressOfMeeting;
    public int declaredMembers;
    public int members;
    public int listOfMembers;
    public bool acceptFlag;

    public void addMeeting(int id, int day, int month, int year, int hour, int minute, string addressOfMeeting, int declaredMembers, int members, int listOfMembers, bool acceptFlag){
        this.id = id;
        this.dateOfMeeting.day = day;
        this.dateOfMeeting.month = month;
        this.dateOfMeeting.year = year;
        this.timeOfMeeting.hour = hour;
        this.timeOfMeeting.minute = minute;
        this.addressOfMeeting = addressOfMeeting;
        this.declaredMembers = declaredMembers;
        this.members = members;
        this.listOfMembers = listOfMembers;
        this.acceptFlag = acceptFlag;
    }

    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id = id;
    }

    public string getDate(){
        return $"{dateOfMeeting.year}/{dateOfMeeting.month}/{dateOfMeeting.day}";
    }

    public void setDate(int type, int value){
        switch (type) {
            case 1:{
                    this.dateOfMeeting.day = value;
                    break;
                }
            case 2:{
                    this.dateOfMeeting.month = value;
                    break;
                }
            case 3:{
                    this.dateOfMeeting.year = value;
                    break;
                }
        }
    }

    public string getTime(){
        return $"{timeOfMeeting.hour}:{timeOfMeeting.minute}";
    }

    public void setTime(int type, int value){
        switch (type){
            case 1:{
                    this.timeOfMeeting.hour = value;
                    break;
                }
            case 2:{
                    this.timeOfMeeting.minute = value;
                    break;
                }
        }
    }

    public string getAddress(){
        return addressOfMeeting;
    }

    public void setAddress(string address){
        this.addressOfMeeting = address;
    }

    public int getDeclared(){
        return declaredMembers;
    }

    public void setDeclared(int declared){
        this.declaredMembers = declared;
    }

    public int getMembers(){
        return members;
    }

    public void setMembers(int members){
        this.members = members;
    }

    public int getListOfMembers(){
        return listOfMembers;
    }

    public void setListOfMembers(int members){
        this.listOfMembers = members;
    }

    public bool getFlag(){
        return acceptFlag;
    }

    public void setFlag(bool flag){
        this.acceptFlag = flag;
    }
}

public struct dName{
    public string name;
    public string lastname;
    public string pantronymic;
}

struct Declared{
    private int id;
    private dName name;
    private bool flagOfOffense;

    public void addDeclared(int id, string name, string lastname, string pantronymic, bool flagOfOffense){
        this.id = id;
        this.name.name = name;
        this.name.lastname = lastname;
        this.name.pantronymic = pantronymic;
        this.flagOfOffense = flagOfOffense;
    }

    public int getId(){
        return id;
    }

    public string getName(){
        return $"{name.lastname} {name.name} {name.pantronymic}";
    }

    public void setName(int type, string text){
        switch (type){
            case 1:{
                    this.name.lastname = text;
                    break;
                }
            case 2:{
                    this.name.name = text;
                    break;
                }
            case 3:{
                    this.name.pantronymic = text;
                    break;
                }
        }
    }
}

struct Offenses{
    private int id;
    private int idOfMeeting;
    private int idOfDeclared;
    private string regulatoryFact;
    private float articleAndParagraphOfRegulatoryFact;
    private bool flagOfCourtConviction;

    public void addOffense(int id, int idOfMeeting, int idOfDeclared, string regulatoryFact, float articleAndParagraphOfRegulatoryFact, bool flagOfCourtConviction){
        this.id = id;
        this.idOfMeeting = idOfMeeting;
        this.idOfDeclared = idOfDeclared;
        this.regulatoryFact = regulatoryFact;
        this.articleAndParagraphOfRegulatoryFact = articleAndParagraphOfRegulatoryFact;
        this.flagOfCourtConviction = flagOfCourtConviction;
    }

    public int getId(){
        return id;
    }

    public int getIdOfMeeting(){
        return idOfMeeting;
    }

    public void setIdOfMeeting(int id){
        this.idOfMeeting = id;
    }

    public int getIdOfDeclared(){
        return idOfDeclared;
    }

    public void setIdOfDeclared(int id){
        this.idOfDeclared = id;
    }

    public string getRegulatoryFact(){
        return regulatoryFact;
    }

    public void setRegulatoryFact(string text){
        this.regulatoryFact = text;
    }

    public float getArticleAndParagraph(){
        return articleAndParagraphOfRegulatoryFact;
    }

    public void setArticleAndParagraph(float AnP){
        this.articleAndParagraphOfRegulatoryFact = AnP;
    }

    public bool getFlagOfCourtConviction(){
        return flagOfCourtConviction;
    }

    public void setFlagOfCourtConviction(bool flag){
        this.flagOfCourtConviction = flag;
    }
}

namespace structes{
    class structes
    {
    }
}
