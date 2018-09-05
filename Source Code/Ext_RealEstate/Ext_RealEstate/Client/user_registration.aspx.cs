using BAL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Client
{
    public partial class user_registration : System.Web.UI.Page
    {
        prop objValue = new prop();
        static String ConnString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
        SqlConnection cn = new SqlConnection(ConnString);
        DataTable dt = new DataTable();
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

        protected void Register_Click(object sender, EventArgs e)
        {
            objValue.Name = username.Text;
            objValue.MobileNumber = Convert.ToInt64(mobile_no.Text);
            objValue.EmailId = email.Text;
            objValue.Password = password.Text;
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.userregisterInsert(objValue);
            username.Text = "";
            mobile_no.Text = "";
            email.Text = "";
            password.Text = "";
            Response.Redirect("user_login.aspx");
        }
    }
}