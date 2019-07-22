using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class TarihiOlay
    {
        public int TarihiOlayID { get; set; }
        public string Baslik { get; set; }
        public int KategoriID { get; set; }
        public string Icerik { get; set; }
        public DateTime BaslangicTarihi { get; set; }
        public DateTime BitisTarihi { get; set; }
        public string YazarID { get; set; }
        public int DurumID { get; set; }

        public virtual List<TarihiOlayUlke> TarihiOlayUlkeler { get; set; }
        public virtual Kategori Kategori { get; set; }
        public virtual List<KitaplikTarihiOlay> KitaplikTarihiOlaylar { get; set; }
        public virtual ApplicationUser ApplicationUser { get; set; }
        public virtual Durum Durum { get; set; }





    }
}
