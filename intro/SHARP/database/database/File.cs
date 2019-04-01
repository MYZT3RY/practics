using System;
using System.Text;
using System.IO;
using System.Collections.Generic;
using System.Linq;

namespace FileClass{
    class CFile{
        static public bool Find(string fileName){
            string path = @"C:\Server\";
            path = path + fileName;
            FileInfo fileInf = new FileInfo(path);
            if (fileInf.Exists){
                return true;
            }
            return false;
        }
        public string GetConfig(string fileName){
            string path = @"C:\Server\config";
            FileInfo handle = new FileInfo(path);
            if (handle.Exists){
                FileStream config = new FileStream("C:\\Server\\config",FileMode.Open);
                StreamReader reader = new StreamReader(config);
                string tempFile;
                do {
                    tempFile = reader.ReadLine();
                } while (fileName != tempFile);
                return tempFile;
            }
            else{
                FileStream config = new FileStream("C:\\Server\\config",FileMode.Create);
                StreamWriter writer = new StreamWriter(config);
                writer.Write("meetings\ndeclared\noffenses");
                writer.Close();
                return (fileName == "meetings") ? "meetings" : (fileName == "declared") ? "declared" : "offenses";
            }
        }
    }
}
