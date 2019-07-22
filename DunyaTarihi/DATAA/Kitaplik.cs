using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Security.Claims;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace DATA
{
    public class Kitaplik
    {
        public int KitaplikID { get; set; }
        public string KullaniciID { get; set; }

        public virtual List<KitaplikTarihiOlay> KitaplikTarihiOlaylar { get; set; }
        public virtual  ApplicationUser ApplicationUser { get; set; }
    }
}
