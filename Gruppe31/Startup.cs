using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Gruppe31.Startup))]
namespace Gruppe31
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
