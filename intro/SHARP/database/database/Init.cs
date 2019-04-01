using System;

namespace InitClass{
    class Init{
        private readonly string equallies = "===========================";
        private readonly string rigthBar = "|";
        public void Menu(){
            Console.Clear();
            string[] names = { "выбор таблицы", "митинги", "заявители", "нарушения"};
            Console.WriteLine($"{equallies}");
            for (int i = 0; i < 4; i++){
                Console.Write(rigthBar);
                Console.SetCursorPosition(5, i + 1);
                Console.Write(names[i]);
                Console.SetCursorPosition(26, i + 1);
                Console.WriteLine(rigthBar);
            }
            Console.WriteLine($"{equallies}");
        }
        public void Sub(){
            Console.Clear();
            string[] names = { "что нужно сделать?", "вывести все данные", "добавить данные", "удалить данные", "найти данные", "вернуться обратно" };
            Console.WriteLine($"{equallies}");
            for (int i = 0; i < 6; i++){
                Console.Write(rigthBar);
                Console.SetCursorPosition(5, i + 1);
                Console.Write(names[i]);
                Console.SetCursorPosition(26, i + 1);
                Console.WriteLine(rigthBar);
            }
            Console.WriteLine($"{equallies}");
        }
    }
}
