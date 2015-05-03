using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WellDataTools;

namespace WellDataToolsRunner
{
    class Program
    {
        static void Main(string[] args)
        {
            //DoAll();
            DoCount(1000);
        }

        static void DoCount(int count)
        {
            var txtFileName = @"C:\Users\tyler-eg\Source\Repos\well-log-data\ks\ks_las_files.txt";
            var jsonFileName = @"C:\Users\tyler-eg\Source\Repos\well-log-data\sample\ks_las_files.json";

            var kansasWellDirectory = WellDataDirectoryTools.GetKansasWellDirectoryFromTxtFile(txtFileName,count);
            WellDataDirectoryTools.SerializeKansasWellDirectory(kansasWellDirectory, @"C:\Users\tyler-eg\Source\Repos\well-log-data\sample\ks_las_files.json");
            //var kansasWellDirectory = WellDataDirectoryTools.DeserializeKansasWellDirectory(jsonFileName);

            foreach (var kwdi in kansasWellDirectory)
            {
                WellDataDirectoryTools.CopyWellDataFileLocal(kwdi);
            }

            //var nodePath = @"C:\Program Files\nodejs\node.exe";
            //var nodeModPath = @"C:\Users\tyler-eg\Source\Repos\well-log-data\wellDataUnzipper.js";

            //System.Diagnostics.Process.Start( nodePath,nodeModPath);

            //Console.ReadLine();
        }

        //static void DoAll()
        //{
        //    var txtFileName = @"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.txt";
        //    var jsonFileName = @"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.json";

        //    var kansasWellDirectory = WellDataDirectoryTools.GetKansasWellDirectoryFromTxtFile(txtFileName);
        //    WellDataDirectoryTools.SerializeKansasWellDirectory(kansasWellDirectory, @"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.json");
        //    //var kansasWellDirectory = WellDataDirectoryTools.DeserializeKansasWellDirectory(jsonFileName);

        //    //foreach (var kwdi in kansasWellDirectory)
        //    //{
        //    //    WellDataDirectoryTools.CopyWellDataFileLocal(kwdi);
        //    //}
        //}
       
    }
}
