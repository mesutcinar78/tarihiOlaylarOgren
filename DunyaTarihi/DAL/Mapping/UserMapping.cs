
using DATA;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserMapping : EntityTypeConfiguration<ApplicationUser>
    {

        public UserMapping()
        {
           // HasRequired(x => x.Kitaplik).WithRequiredPrincipal(x => x.ApplicationUser);

        }
    }
}
