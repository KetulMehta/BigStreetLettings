using BAL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Admin
{
    public partial class signin : System.Web.UI.Page
    {
        prop objValue = new prop();
        InteractionMethods objInteraction = new InteractionMethods();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                }
            }
            catch (Exception)
            {

            }
        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {

            objValue.Email = Email_text.Text;
            objValue.Password = password_text.Text;
            ds = objInteraction.Login(objValue);
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {

                    //Response.Cookies["Login"]["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    Response.Cookies["Login"]["EmailId"] = ds.Tables[0].Rows[0]["EmailId"].ToString();
                    Response.Cookies["Login"]["Password"] = ds.Tables[0].Rows[0]["Password"].ToString();
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