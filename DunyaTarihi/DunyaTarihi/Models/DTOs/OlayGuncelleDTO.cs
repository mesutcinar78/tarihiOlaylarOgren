using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DunyaTarihi.Models.DTOs
{
    public class OlayGuncelleDTO
    {
        public int ID { get; set; }
        public string Baslik { get; set; }
        public string Icerik { get; set; }
        public int KategoriID { get; set; }
        public int DurumID { get; set; }
    }
}