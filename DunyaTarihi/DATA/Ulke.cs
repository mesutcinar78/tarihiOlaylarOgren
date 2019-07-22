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
        public int KitaID { get; set; }

        public virtual Kita Kita { get; set; }
        public virtual ICollection<TarihiOlayUlke> TarihiOlayUlkeler { get; set; }



    }
}
