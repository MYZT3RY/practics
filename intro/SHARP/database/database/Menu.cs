using System;
using InitClass;
using System.Collections.Generic;
using FileClass;
using structes;
using MenuClass;

namespace MenuClass{
    class Menu{
        public void Main(){
            int state = 2, pointer = 1;
            var init = new Init();
            init.Menu(); //- to do
            do{
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
                                        Console.Clear();
                                        Environment.Exit(0);
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
                                        Console.SetCursorPosition((pointer == 1) ? 12 : 14, 4 + (pointer - 3));
                                        break;
                                    }
                            }
                            state = 1;
                            break;
                        }
                    case 3: case 4: case 5: {
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
            var init = new Init();
            init.Sub();// - to do
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
                                        Console.SetCursorPosition((pointer == 1) ? 23 : (pointer == 2) ? 20 : (pointer == 3) ? 19 : (pointer == 4) ? 17 : (pointer == 5) ? 22 : 23, pointer + 1);
                                        break;
                                    }
                            }
                            state = 1;
                            break;
                        }
                    case 3:{
                            // вывести все данные
                            init.showBox(118, 30,1,1);
                            Console.Read();
                            Sub(database);
                            break;
                        }
                    case 4:{ // добавить данные
                            switch (database){
                                case 1:{
                                        init.showBoxWithText(40, 8, "введите дату проведения митинга");
                                        string tempDate = Console.ReadLine();
                                        init.showBoxWithText(40, 8, "введите время проведения митинга");
                                        string tempTime = Console.ReadLine();
                                        init.showBoxWithText(40, 8, "введите адрес проведения митинга");
                                        string tempAddress = Console.ReadLine();
                                        init.showBoxWithText(50, 8, "введите количество приглашений на митинг");
                                        string tempDeclared = Console.ReadLine();
                                        init.showBoxWithText(30, 8, "флаг подтверждения");
                                        string tempFlag = Console.ReadLine();
                                        break;
                                    }
                                case 2:{
                                        init.showBoxWithText(40, 8, "введите ФИО заявителя");
                                        string tempName = Console.ReadLine();
                                        init.showBoxWithText(40, 8, "флаг подтверждения");
                                        string tempFlag = Console.ReadLine();
                                        break;
                                    }
                                case 3:{
                                        init.showBoxWithText(40, 8, "введите номер митинга");
                                        string tempMettingId = Console.ReadLine();
                                        init.showBoxWithText(40, 8, "введите номер заявления");
                                        string tempDeclaredId = Console.ReadLine();
                                        init.showBoxWithText(40, 8, "введите нормативный факт");
                                        string tempFact = Console.ReadLine();
                                        init.showBoxWithText(40, 8, "введите номер и пункт статьи");
                                        string tempArticle = Console.ReadLine();
                                        init.showBoxWithText(40, 8, "флаг осуждения судом");
                                        string tempFlagOfCourt = Console.ReadLine();
                                        break;
                                    }
                            }
                            Sub(database);
                            break;
                        }
                    case 5:{// удалить данные
                            init.showBoxWithText(40, 8, "введите уникальный номер поля");
                            string tempId = Console.ReadLine();
                            switch (database){
                                case 1:{
                                        //удаление митинга
                                        break;
                                    }
                                case 2:{
                                        //удаление заявителя
                                        break;
                                    }
                                case 3:{
                                        //удаление нормативного факта
                                        break;
                                    }
                            }
                            Sub(database);
                            break;
                        }
                    case 6:{// найти данные
                            init.showBoxWithText(40, 8, "введите уникальный номер поля");
                            string tempId = Console.ReadLine();
                            switch (database){
                                case 1:{//митинг
                                        break;
                                    }
                                case 2:{//заявитель
                                        break;
                                    }
                                case 3:{//нормативный факт
                                        break;
                                    }
                            }
                            Sub(database);
                            break;
                        }
                    case 7:{
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
}