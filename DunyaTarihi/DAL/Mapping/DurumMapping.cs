using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.ModelConfiguration;
using DATA;

namespace DAL
{
    public class DurumMapping : EntityTypeConfiguration<Durum>
    {

        public DurumMapping()
        {
            ToTable("Durumlar");
            HasKey(x => x.DurumID);

            Property(x => x.Durumu).IsRequired().HasMaxLength(50);

        }

    }
}
