using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DunyaTarihi.Models.DTOs
{
    public class DetayDTO
    {
        public int ID { get; set; }
        public string Baslik { get; set; }
        public string Icerik { get; set; }
        public DateTime BaslangicTarihi { get; set; }
        public DateTime BitisTarihi { get; set; }
        public string YazarAdı { get; set; }

    }
}