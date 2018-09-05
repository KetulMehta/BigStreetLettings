using System;
using BAL;
using DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ext_RealEstate.Admin
{
    public partial class Password : System.Web.UI.Page
    {
        prop objValue = new prop();
        InteractionMethods objInteraction = new InteractionMethods();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_password_Click(object sender, EventArgs e)
        {
            objValue.OldPassword = Text_password.Text;
            objValue.NewPassword = Text_newpassword.Text;
            ds = objInteraction.Compare(objValue);

            if (ds.Tables.Count > 0)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {

                    //Response.Cookies["Login"]["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    objValue.Password = ds.Tables[0].Rows[0]["Password"].ToString();
                    //Response.Cookies["Login"].Expires = DateTime.Now.AddDays(1);

                    if (objValue.OldPassword == objValue.Password)
                    {
                        objInteraction.ChangePassword(objValue);
                        Response.Redirect("signin.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "Dialouge()", true);

                    }
               }
                else
                {
                   
                }
            }
            else
            {
                
            }
            Text_password.Text = "";
            Text_newpassword.Text = "";
            Text_confirmpassword.Text = "";
          
        }
    }
}