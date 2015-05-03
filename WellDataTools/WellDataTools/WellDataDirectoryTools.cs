using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.Policy;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace WellDataTools
{
    public class WellDataDirectoryTools
    {
        public static List<KansasWellDirectoryItem> GetKansasWellDirectoryFromTxtFile(string txtFileName, int count)
        {
            var kansasWellDirectory = new List<KansasWellDirectoryItem>();
            var csv = new List<string[]>();
            var lines = File.ReadAllLines(txtFileName);  //@"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.txt"
            for (var i=0; i<count; i++)
            {
                var line = lines[i];

                if (Array.IndexOf(lines, line) == 0) { continue; }
                var lineProps = line.Split('\"');
                var filteredLineProps = new List<string>();
                foreach (var prop in lineProps)
                {
                    if (prop == ",") { continue; }

                    filteredLineProps.Add(prop);
                }
                // var lineProps = line.Replace("\"", "").Replace(", Sec", " Sec").Replace(", LLC", " LLC").Replace(",  ", "  ").Replace(", C", " C").Replace(", Inc.", " Inc.").Split(',');
                var kwdi = new KansasWellDirectoryItem();
                kwdi.KGS_ID = filteredLineProps[1];
                kwdi.Latitude = filteredLineProps[2];
                kwdi.Longitude = filteredLineProps[3];
                kwdi.Location = filteredLineProps[4];
                kwdi.Operator = filteredLineProps[5];
                kwdi.Lease = filteredLineProps[6];
                kwdi.API = filteredLineProps[7];
                kwdi.Elevation = filteredLineProps[8];
                kwdi.Elev_Ref = filteredLineProps[9];
                kwdi.Depth_start = filteredLineProps[10];
                kwdi.Depth_stop = filteredLineProps[11];
                kwdi.URL = filteredLineProps[12];
                kansasWellDirectory.Add(kwdi);
            }

            return kansasWellDirectory;
        }

        public static void SerializeKansasWellDirectory(
            List<KansasWellDirectoryItem> kansasWellDirectory, string jsonFileName)
        {
            var jss = new JavaScriptSerializer();
            jss.MaxJsonLength = int.MaxValue;
            string json = jss.Serialize(kansasWellDirectory);

            File.WriteAllText(jsonFileName, json); //@"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.json"
        }

        public static List<KansasWellDirectoryItem> DeserializeKansasWellDirectory(string jsonFileName)
        {
            var lines = File.ReadAllLines(jsonFileName); //@"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.json"
            var jss = new JavaScriptSerializer();
            jss.MaxJsonLength = int.MaxValue;
            //return lines.Select(line => jss.Deserialize<KansasWellDirectoryItem>(line)).ToList();

            var kwd = new List<KansasWellDirectoryItem>();

            foreach (var line in lines)
            {
                var kwdi = jss.Deserialize<KansasWellDirectoryItem>(line);
                kwd.Add(kwdi);
            }
            return kwd;
        }

        public static void CopyWellDataFileLocal(KansasWellDirectoryItem kwdi)
        {
            byte[] data;
            var fileName = kwdi.URL.Split('/').Last();
            if (!File.Exists(@"C:\Users\tyler-eg\Source\Repos\well-log-data\sample\" + fileName))
            {
                using (WebClient client = new WebClient())
                {
                    try
                    {
                        client.DownloadFile(kwdi.URL, @"C:\Users\tyler-eg\Source\Repos\well-log-data\sample\" + fileName);
                        Console.WriteLine("downloaded " + kwdi.URL);
                    }
                    catch (WebException ex)
                    {
                        Console.WriteLine("failed to download " + kwdi.URL);
                        Console.WriteLine("    -" +ex.Message);
                       
                    }
                    
                    //data = client.DownloadData("http://testsite.com/web/abc.jpg");
                    //data = client.DownloadData(kwdi.URL);
                }
               // File.WriteAllBytes(@"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\" + fileName, data);
            }
        }


        ///// <summary>
        ///// Converts a CSV string to a Json array format.
        ///// </summary>
        ///// <remarks>First line in CSV must be a header with field name columns.</remarks>
        ///// <param name="value"></param>
        ///// <returns></returns>
        //public static string CsvToJson(this string value)
        //{
        //    // Get lines.
        //    if (value == null) return null;
        //    string[] lines = value.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
        //    if (lines.Length < 2) throw new InvalidDataException("Must have header line.");

        //    // Get headers.
        //    string[] headers = lines.First().SplitQuotedLine(new char[] { ',' }, false);

        //    // Build JSON array.
        //    StringBuilder sb = new StringBuilder();
        //    sb.AppendLine("[");
        //    for (int i = 1; i < lines.Length; i++)
        //    {
        //        string[] fields = lines[i].SplitQuotedLine(new char[] { ',', ' ' }, true, '"', false);
        //        if (fields.Length != headers.Length) throw new InvalidDataException("Field count must match header count.");
        //        var jsonElements = headers.Zip(fields, (header, field) => string.Format("{0}: {1}", header, field)).ToArray();
        //        string jsonObject = "{" + string.Format("{0}", string.Join(",", jsonElements)) + "}";
        //        if (i < lines.Length - 1)
        //            jsonObject += ",";
        //        sb.AppendLine(jsonObject);
        //    }
        //    sb.AppendLine("]");
        //    return sb.ToString();
        //}

        //public static string SplitQuotedLine(this string value, char separator, bool quotes)
        //{
        //    // Use the "quotes" bool if you need to keep/strip the quotes or something...
        //    var s = new StringBuilder();
        //    var regex = new Regex("(?<=^|,)(\"(?:[^\"]|\"\")*\"|[^,]*)");
        //    foreach (Match m in regex.Matches(value))
        //    {
        //        s.Append(m.Value);
        //    }
        //    return s.ToString();
        //}
    }
}
