using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace database
{
    class Menu{
   
        public void Main() {
            int state = 2, pointer = 1;
            InitMenu();
            do {
                switch (state){
                    case 1:{                            
                            switch (Console.ReadKey().Key){
                                case ConsoleKey.UpArrow:{
                                        switch (pointer){
                                            case 2:
                                            case 3:{
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
                                            case 1:
                                            case 2:{
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
                                            case 1:{
                                                    state = 3;
                                                    break;
                                                }
                                            case 2:{
                                                    state = 4;
                                                    break;
                                                }
                                            case 3:{
                                                    state = 5;
                                                    break;
                                                }
                                        }
                                        break;
                                    }
                            }
                            state = 2;
                            break;
                        }
                    case 2:{
                            switch (pointer){
                                case 1:{
                                        Console.SetCursorPosition(11,2);
                                        break;
                                    }
                                case 2:{
                                        Console.SetCursorPosition(13, 3);
                                        break;
                                    }
                                case 3:{
                                        Console.SetCursorPosition(13, 4);
                                        break;
                                    }
                            }
                            state = 1;
                            break;
                        }
                    case 3:
                    case 4:
                    case 5:{

                            break;
                        }
                    default:{
                            state = 1;
                            break;
                        }
                }
            } while (state != 6);
        }

        private void InitMenu(){
            string[] names = { "|    выбор таблицы        |", "|   митинги               |", "|   заявители             |", "|   нарушения             |" };
            Console.WriteLine("===========================");
            for (int i=0; i < 4; i++){
                Console.WriteLine($"{names[i]}");
            } 
            Console.WriteLine("===========================");
        }
    }
    class Program{
        static void Main(string[] args){
            var menu = new Menu();
            menu.Main();
        }
    }
}