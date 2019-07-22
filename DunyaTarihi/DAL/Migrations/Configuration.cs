namespace DAL.Migrations
{
    using DATA;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<DAL.Context>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(DAL.Context db)
        {
            var roleStore = new RoleStore<IdentityRole>(db);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            if (!roleManager.RoleExists("admin"))
                roleManager.Create(new IdentityRole() { Name = "admin" });

            if (!roleManager.RoleExists("moderator"))
                roleManager.Create(new IdentityRole() { Name = "moderator" });

            if (!roleManager.RoleExists("kullanýcý"))
                roleManager.Create(new IdentityRole() { Name = "kullanýcý" });

            var userStore = new UserStore<ApplicationUser>(db);
            var userManager = new UserManager<ApplicationUser>(userStore);

            var adminUser = userManager.FindByName("admin@admin.com");
            if (adminUser == null)
            {
                adminUser = new ApplicationUser()
                {
                    UserName = "admin@admin.com",
                    Email = "admin@admin.com"
                };
                userManager.Create(adminUser, "Ankara1.");
            }

            if (!userManager.IsInRole(adminUser.Id, "admin"))
                userManager.AddToRole(adminUser.Id, "admin");
        }
    }
}
