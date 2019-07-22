using DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class Durum
    {
        public int DurumID { get; set; }
        public string Durumu { get; set; }

        public virtual List<TarihiOlay> TarihiOlaylar { get; set; }
    }
}
