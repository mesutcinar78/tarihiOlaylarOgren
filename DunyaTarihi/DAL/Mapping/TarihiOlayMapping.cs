using DATA;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class TarihiOlayMapping : EntityTypeConfiguration<TarihiOlay>
    {
        public TarihiOlayMapping()
        {
            ToTable("TarihiOlaylar");

            HasKey(x => x.TarihiOlayID);

            HasRequired(x => x.Kategori).WithMany(x => x.TarihiOlaylar).HasForeignKey(x => x.KategoriID);
            HasRequired(x => x.ApplicationUser).WithMany(x => x.TarihiOlaylar).HasForeignKey(x => x.YazarID);
            HasRequired(x => x.Durum).WithMany(x => x.TarihiOlaylar).HasForeignKey(x => x.DurumID);

            Property(x => x.Baslik).IsRequired().HasMaxLength(50);
            Property(x => x.Icerik).IsRequired().HasMaxLength(2000);
            Property(x => x.BaslangicTarihi).IsRequired().HasColumnType("datetime2");
            Property(x => x.BitisTarihi).IsOptional().HasColumnType("datetime2");

        }
    }
}
