using DATA;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UlkeMapping : EntityTypeConfiguration<Ulke>
    {
        public UlkeMapping()
        {
            ToTable("Ulkeler");

            HasKey(x => x.UlkeID);


            Property(x => x.UlkeAd).IsRequired().HasMaxLength(50);

        }
    }
}
