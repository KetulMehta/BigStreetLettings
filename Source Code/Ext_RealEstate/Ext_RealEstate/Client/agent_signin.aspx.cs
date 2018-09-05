using BAL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Client
{
    public partial class agent_signin : System.Web.UI.Page
    {
        prop objValue = new prop();
        InteractionMethods objInteraction = new InteractionMethods();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void user_log_Click(object sender, EventArgs e)
        {
            objValue.Email = email.Text;
            objValue.Password = password.Text;
            ds = objInteraction.AgentLogin(objValue);
            if (ds.Tables.Count > 0)
                 {
                if (ds.Tables[0].Rows.Count > 0)
                {

                    //Response.Cookies["Login"]["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    Response.Cookies["Login"]["Email"] = ds.Tables[0].Rows[0]["Email"].ToString();
                    Response.Cookies["Login"]["Password"] = ds.Tables[0].Rows[0]["Password"].ToString();
                    Session["Loginname"] = ds.Tables[0].Rows[0]["Name"].ToString();
                    Response.Cookies["Login"].Expires = DateTime.Now.AddDays(1);
                    Response.Redirect("default.aspx");
                    String Id = ds.Tables[0].Rows[0]["Id"].ToString();
                    Response.Redirect("default.aspx?Id=" + Id);
                }
                else
                {
                    //Response.Redirect("signin.aspx");
                    ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "Dialouge()", true);
                }
                 }
            else
            {
                //Response.Redirect("signin.aspx");
                ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "Dialouge()", true);

            }

        }
    }
}