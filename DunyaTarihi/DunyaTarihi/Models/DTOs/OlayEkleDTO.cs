using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DunyaTarihi.Models.DTOs
{
    public class OlayEkleDTO
    {
        public string Baslik { get; set; }
        public string Icerik { get; set; }
        public int KategoriID { get; set; }
        public string YazarID { get; set; }
        public int UlkeID { get; set; }
        public DateTime BaslangicTarihi { get; set; }
        public DateTime BitisTarihi { get; set; }
    }
}