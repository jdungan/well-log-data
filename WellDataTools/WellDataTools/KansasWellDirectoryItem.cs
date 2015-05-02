using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WellDataTools
{
   public class KansasWellDirectoryItem
    {
       public string KGS_ID { get; set; }
       public string Latitude { get; set; }
       public string Longitude { get; set; }
       public string Location { get; set; }
       public string Operator { get; set; }
       public string Lease { get; set; }
       public string API { get; set; }
       public string Elevation { get; set; }
       public string Elev_Ref { get; set; }
       public string Depth_start { get; set; }
       public string Depth_stop { get; set; }
       public string URL { get; set; }
    }
}
