using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class Kitaplik
    {
        public int KitaplikID { get; set; }
        public int TarihiOlayID { get; set; }
        public int KullaniciID { get; set; }

        public virtual ICollection<KitaplikTarihiOlay> KitaplikTarihiOlaylar { get; set; }
        public virtual ApplicationUser ApplicationUser { get; set; }


    }
}
