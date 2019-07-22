using DATA;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Mapping
{
    public class TarihiOlayUlkeMapping : EntityTypeConfiguration<TarihiOlayUlke>
    {
        public TarihiOlayUlkeMapping()
        {
            ToTable("TarihiOlayUlke");


            HasRequired(x => x.Ulke).WithMany(x => x.TarihiOlayUlkeler).HasForeignKey(x => x.UlkeID);
            HasRequired(x => x.TarihiOlay).WithMany(x => x.TarihiOlayUlkeler).HasForeignKey(x => x.TarihiOlayID);

        }
    }
}
