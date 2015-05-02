using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace WellDataTools
{
   public  class WellDataDirectoryTools
    {
        public static void CsvToJson()
        {
            var kansasWellDirectory = new List<KansasWellDirectoryItem>();
            var csv = new List<string[]>(); // or, List<YourClass>
            var lines = File.ReadAllLines(@"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.txt");
            foreach (string line in lines)
            {
                if (Array.IndexOf(lines, line) == 0) { continue;}
                var lineProps = line.Replace("\"", "").Split(',');
                var kwdi = new KansasWellDirectoryItem();
                kwdi.KGS_ID = lineProps[0];
                kwdi.Latitude = lineProps[1];
                kwdi.Longitude = lineProps[2];
                kwdi.Location = lineProps[3];
                kwdi.Operator = lineProps[4];
                kwdi.Lease = lineProps[5];
                kwdi.API = lineProps[6];
                kwdi.Elevation = lineProps[7];
                kwdi.Elev_Ref = lineProps[8];
                kwdi.Depth_start = lineProps[9];
                kwdi.Depth_stop = lineProps[10];
                kwdi.URL = lineProps[11];
                kansasWellDirectory.Add(kwdi);
               //csv.Add(line.Replace("\"", "").Split(',')); // or, populate YourClass        
                
            }
            var jss = new JavaScriptSerializer();
            jss.MaxJsonLength = int.MaxValue;
            string json = jss.Serialize(kansasWellDirectory);

            File.WriteAllText(@"C:\Users\tyler-eg\Source\Repos\well-log-data\KS\ks_las_files.json", json);
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
