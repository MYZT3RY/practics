using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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

namespace database
{
    class File {
        private string fileName;

        public int Find(){

            return 1;
        }
    }
    class Init{
        private readonly string equallies = "===========================";
        private readonly string rigthBar = "|";
        public void Menu(){
            Console.Clear();
            string[] names = { "выбор таблицы", "митинги", "заявители", "нарушения" };
            Console.WriteLine($"{equallies}");
            for (int i = 0; i < 4; i++){
                Console.Write(rigthBar);
                Console.SetCursorPosition(5, i + 1);
                Console.Write($"{names[i]}");
                Console.SetCursorPosition(26, i + 1);
                Console.WriteLine(rigthBar);
            }
            Console.WriteLine($"{equallies}");
        }
        public void Sub(){
            Console.Clear();
            string[] names = { "что нужно сделать?", "вывести все данные", "добавить данные", "удалить данные", "найти данные", "вернуться обратно" };
            Console.WriteLine($"{equallies}");
            for(int i=0; i < 6; i++){
                Console.Write(rigthBar);
                Console.SetCursorPosition(5, i + 1);
                Console.Write($"{names[i]}");
                Console.SetCursorPosition(26, i + 1);
                Console.WriteLine(rigthBar);
            }
            Console.WriteLine($"{equallies}");
        }
    }
    class Menu{
        public void Main() {
            int state = 2, pointer = 1;
            var init = new Init();
            init.Menu();
            do {
                switch (state){
                    case 1:{
                            state = 2;
                            switch (Console.ReadKey(true).Key){
                                case ConsoleKey.UpArrow:{
                                        switch (pointer){
                                            case 2: case 3:{
                                                    pointer--;
                                                    break;
                                                }
                                            default:{
                                                    pointer = 3;
                                                    break;
                                                }
                                        }
                                        break;
                                    }
                                case ConsoleKey.DownArrow:{
                                        switch (pointer){
                                            case 1: case 2:{
                                                    pointer++;
                                                    break;
                                                }
                                            default:{
                                                    pointer = 1;
                                                    break;
                                                }
                                        }
                                        break;
                                    }
                                case ConsoleKey.Escape:{
                                        Console.SetCursorPosition(0, 15);
                                        Environment.Exit(0);
                                        //state = 6;
                                        break;
                                    }
                                case ConsoleKey.Enter:{
                                        switch (pointer){
                                            case 1: case 2: case 3:{
                                                    state = pointer + 2;
                                                    break;
                                                }
                                        }
                                        break;
                                    }
                            }
                            break;
                        }
                    case 2:{
                            switch (pointer){
                                case 1: case 2: case 3:{
                                        Console.SetCursorPosition((pointer == 1) ? 11 : 13, 4 + (pointer - 3));
                                        break;
                                    }
                            }
                            state = 1;
                            break;
                        }
                    case 3: case 4: case 5:{
                            Sub(state - 2);
                            break;
                        }
                    default:{
                            state = 1;
                            break;
                        }
                }
            } while (state != 6);
        }
        public void Sub(int database){
            int state = 2, pointer = 1;
            switch (database){
                case 1:{
                        //митинги
                        break;
                    }
                case 2:{
                        //заявители
                        break;
                    }
                case 3:{
                        //нарушения
                        break;
                    }
            }
            var init = new Init();
            init.Sub();
            do{
                switch (state){
                    case 1:{
                            state = 2;
                            switch (Console.ReadKey(true).Key){
                                case ConsoleKey.Enter:{
                                        switch (pointer){
                                            case 1: case 2: case 3: case 4: case 5:{
                                                    state = pointer + 2;
                                                    break;
                                                }
                                        }
                                        break;
                                    }
                                case ConsoleKey.UpArrow:{
                                        switch (pointer){
                                            case 2: case 3: case 4: case 5:{
                                                    pointer--;
                                                    break;
                                                }
                                            default:{

                                                    pointer = 5;
                                                    break;
                                                }
                                        }
                                        break;
                                    }
                                case ConsoleKey.DownArrow:{
                                        switch (pointer){
                                            case 1: case 2: case 3: case 4:{
                                                    pointer++;
                                                    break;
                                                }
                                            default:{
                                                    pointer = 1;
                                                    break;
                                                }
                                        }
                                        break;
                                    }
                            }
                            break;
                        }
                    case 2:{
                            switch (pointer){
                                case 1: case 2: case 3: case 4: case 5:{
                                        Console.SetCursorPosition((pointer == 1)?23:(pointer==2)?20:(pointer==3)?19:(pointer==4)?17:(pointer==5)?22:23, pointer + 1);
                                        break;
                                    }
                            }
                            state = 1;
                            break;
                        }
                    case 3:{
                            Console.WriteLine(pointer);
                            break;
                        }
                    case 4:{
                            Console.WriteLine(pointer);
                            break;
                        }
                    case 5:{
                            Console.WriteLine(pointer);
                            break;
                        }
                    case 6:{
                            Console.WriteLine(pointer);
                            break;
                        }
                    case 7:{
                            Console.WriteLine(pointer);
                            var menu = new Menu();
                            menu.Main();
                            break;
                        }
                    default:{
                            state = 2;
                            break;
                        }
                }
            } while (state != 8);
        }
    }
    class Program{
        static void Main(string[] args){
            var menu = new Menu();
            menu.Main();
        }
    }
}