using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Admin
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            
            Response.AppendHeader("Refresh", "0;signin.aspx");
        }

        //protected void Timer1_Tick(object sender, EventArgs e)
        //{
        //    Session.Clear();
        //    Session.Abandon();
        //    Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    Response.Cache.SetNoStore();

        //    try
        //    {
        //        Session.Abandon();
        //        FormsAuthentication.SignOut();
        //        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //        Response.Buffer = true;
        //        Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
        //        Response.Expires = -1000;
        //        Response.CacheControl = "no-cache";
        //        //Response.Redirect("signin.aspx", true);
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write(ex.Message);
        //    }
        //    Response.Redirect("~/signin.aspx");
        //}
    }
}