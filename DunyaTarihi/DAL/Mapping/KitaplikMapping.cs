using DATA;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Mapping
{
    public class KitaplikMapping : EntityTypeConfiguration<Kitaplik>
    {
        public KitaplikMapping()
        {
            ToTable("Kitaplik");

            HasKey(x => x.KitaplikID);


           HasRequired(x => x.ApplicationUser).WithMany(x => x.Kitapliklar).HasForeignKey(x => x.KullaniciID);




        }
    }
}
