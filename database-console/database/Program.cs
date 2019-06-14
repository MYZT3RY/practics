using System;
using System.Collections.Generic;
using MenuClass;
using FileClass;
using InitClass;
using structes;

namespace database{
    class Program{
        public const int maxElements = 50;

        Meetings[] meeting = new Meetings[maxElements];
        Declared[] declared = new Declared[maxElements];
        Offenses[] offense = new Offenses[maxElements];

        static void Main(){
            var menu = new Menu();
            menu.Main();
        }
    }
}