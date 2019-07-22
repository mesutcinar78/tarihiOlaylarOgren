using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class Ulke
    {
        public int UlkeID { get; set; }
        public string UlkeAd { get; set; }
        public string UlkeKod { get; set; }

        public virtual List<TarihiOlayUlke> TarihiOlayUlkeler { get; set; }



    }
}
