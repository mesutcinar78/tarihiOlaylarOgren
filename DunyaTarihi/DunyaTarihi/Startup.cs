using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DunyaTarihi.Startup))]
namespace DunyaTarihi
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
