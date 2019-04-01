using System;
using InitClass;
using FileClass;

namespace MenuClass{
    class Menu{
        public void Main(){
            int state = 2, pointer = 1;
            var init = new Init();
            init.Menu();
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
            int state = 2, pointer = 1, defaultFileNotExist = 1;
            switch (database){
                case 1:{
                        defaultFileNotExist = (CFile.Find("meetings") ? 0 : 1);
                        break;
                    }
                case 2:{
                        defaultFileNotExist = (CFile.Find("declared") ? 0 : 1);
                        break;
                    }
                case 3:{
                        defaultFileNotExist = (CFile.Find("offenses") ? 0 : 1);
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
                                        Console.SetCursorPosition((pointer == 1) ? 23 : (pointer == 2) ? 20 : (pointer == 3) ? 19 : (pointer == 4) ? 17 : (pointer == 5) ? 22 : 23, pointer + 1);
                                        break;
                                    }
                            }
                            state = 1;
                            break;
                        }
                    case 3:{
                            // вывести все данные
                            break;
                        }
                    case 4:{
                            // добавить данные
                            break;
                        }
                    case 5:{
                            // удалить данные
                            break;
                        }
                    case 6:{
                            // найти данные
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