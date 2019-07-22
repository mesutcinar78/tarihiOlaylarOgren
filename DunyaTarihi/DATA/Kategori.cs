using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class Kategori
    {
        public int KategoriID { get; set; }
        public string KategoriAd { get; set; }

        public virtual ICollection<TarihiOlay> TarihiOlaylar { get; set; }



    }
}
