using DotNetNuke.Web.Api;


namespace ZEA.Modul.DNN_Beispiel.Models
{
    public class RouteMapper : IServiceRouteMapper
    {
        public void RegisterRoutes(IMapRoute mapRouteManager)
        {
            mapRouteManager.MapHttpRoute("DNN_Beispiel", "default", "{controller}/{action}", new[] { "ZEA.Modul.DNN_Beispiel.Models" });
        }
    }
}