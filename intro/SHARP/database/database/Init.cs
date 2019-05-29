using System;

namespace InitClass{
    class Init{
        private const string equall = "=";
        private const string equellies = "===========================";
        private const string rigthBar = "|";
        public void Menu(){
            Console.Clear();
            string[] names = { "выбор таблицы", "митинги", "заявители", "нарушения" };
            Console.WriteLine(equellies);
            for (int i = 0; i < 4; i++){
                Console.Write(rigthBar);
                Console.SetCursorPosition(5, i + 1);
                Console.Write(names[i]);
                Console.SetCursorPosition(26, i + 1);
                Console.WriteLine(rigthBar);
            }
            Console.WriteLine(equellies);
        }
        public void Sub(){
            Console.Clear();
            string[] names = { "что нужно сделать?", "вывести все данные", "добавить данные", "удалить данные", "найти данные", "вернуться обратно" };
            Console.WriteLine(equellies);
            for (int i = 0; i < 6; i++){
                Console.Write(rigthBar);
                Console.SetCursorPosition(5, i + 1);
                Console.Write(names[i]);
                Console.SetCursorPosition(26, i + 1);
                Console.WriteLine(rigthBar);
            }
            Console.WriteLine(equellies);
        }
        public void showBoxWithText(int width, int heigth, string message){
            Console.Clear();
            for(int x=0; x < width; x++){
                Console.SetCursorPosition(x, 0);
                Console.Write(equall);
                Console.SetCursorPosition(x, heigth-1);
                Console.Write(equall);
            }
            for(int y=0; y < heigth; y++){
                Console.SetCursorPosition(0, y);
                Console.Write(rigthBar);
                Console.SetCursorPosition(width, y);
                Console.Write(rigthBar);
            }
            Console.SetCursorPosition(width / 2 - message.Length / 2, heigth / 2 / 2 + heigth / 2 / 2);
            Console.Write(message);
            Console.SetCursorPosition(0, heigth);
        }
        public void showBox(int width, int heigth, int headers, int columns){
            Console.Clear();
            for (int x = 0; x < width; x++){
                Console.SetCursorPosition(x, 0);
                Console.Write(equall);
                Console.SetCursorPosition(x, heigth - 1);
                Console.Write(equall);
            }
            for(int y=0; y<heigth; y++){
                Console.SetCursorPosition(0, y);
                Console.Write(rigthBar);
                Console.SetCursorPosition(width, y);
                Console.Write(rigthBar);
            }
        }
    }
}
