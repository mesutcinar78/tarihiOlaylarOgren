using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DunyaTarihi.Models.DTOs
{
    public class TarihiOlayDTO
    {
        public int ID { get; set; }
        public string Baslik { get; set; }
        public string Icerik { get; set; }
        public DateTime OlayBaslangicTarihi { get; set; }
        public DateTime OlayBitisTarihi { get; set; }
    }
}