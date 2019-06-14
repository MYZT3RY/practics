using System;
using System.Text;
using System.IO;
using System.Collections.Generic;
using System.Linq;

namespace FileClass{
    class CFile{
        public string getFileName(int database){
            return database == 1 ? "meetings" : database == 2 ? "declared" : "offenses";
        }
        public void AddNewLine(int database, string line){
            string path = getFileName(database);
            File.AppendAllText(path, line);
        }
        public void Upload(int database){
            string path = getFileName(database);
        }
        public void Save(int database){
            string path = getFileName(database);
        }
    }
}