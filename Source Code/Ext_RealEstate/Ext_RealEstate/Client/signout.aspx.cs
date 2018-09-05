using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Client
{
    public partial class signout : System.Web.UI.Page
    {
        
             protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            
            Response.AppendHeader("Refresh", "0;user_login.aspx");
        }
        }
    }
