using System.Data.Entity;
using System.Security.Claims;
using System.Threading.Tasks;
using DAL.Mapping;
using DATA;
using DATAA;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace DAL
{
    /*
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit https://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
    }*/

    public class Context : IdentityDbContext<ApplicationUser>
    {
        public Context()  
        {
            Database.Connection.ConnectionString = "server = (localdb)\\mssqllocaldb; database = DunyaTarihiDb; uid=sa; pwd=123;";

        }

        public DbSet<Ulke> Ulkeler { get; set; }
        public DbSet<TarihiOlayUlke> TarihiOlayUlkeler { get; set; }
        public DbSet<TarihiOlay> TarihiOlaylar { get; set; }
        public DbSet<Kategori> Kategoriler { get; set; }
        public DbSet<KitaplikTarihiOlay> KitaplikTarihiOlaylar { get; set; }
        public DbSet<Kitaplik> Kitapliklar { get; set; }
        public DbSet<Durum> Durumlar { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new UlkeMapping());
           modelBuilder.Configurations.Add(new TarihiOlayUlkeMapping());
            modelBuilder.Configurations.Add(new TarihiOlayMapping());
            modelBuilder.Configurations.Add(new KategoriMapping());
            modelBuilder.Configurations.Add(new KitaplikTarihiOlayMapping());
            modelBuilder.Configurations.Add(new KitaplikMapping());
            modelBuilder.Configurations.Add(new DurumMapping());
            modelBuilder.Configurations.Add(new UserMapping());

            base.OnModelCreating(modelBuilder);
        }





        public static Context Create()
        {
            return new Context();
        }

        

    }
}