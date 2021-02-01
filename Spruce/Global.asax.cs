using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

namespace Spruce
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

       //     CustomRoutes(RouteTable.Routes);
        }
        void CustomRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("Admin", "~/Admin", "~/Admin/Admin");
        }
    }
}