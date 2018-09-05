using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Client
{
    public partial class Userupdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loginname"] != null)
            {
                username.Text = Session["Loginname"].ToString();
                mobile_no.Text = Session["Mobile_Number"].ToString();
                email.Text = Session["Email"].ToString();
            }
        }
    }
}