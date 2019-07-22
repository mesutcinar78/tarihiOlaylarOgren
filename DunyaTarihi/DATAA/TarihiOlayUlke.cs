using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class TarihiOlayUlke
    {
        public int ID { get; set; }
        public int UlkeID { get; set; }
        public int TarihiOlayID { get; set; }



        public virtual Ulke Ulke { get; set; }
        public virtual TarihiOlay TarihiOlay { get; set; }


    }
}
