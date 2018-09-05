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

namespace Ext_RealEstate.Admin
{
    public partial class Contact : System.Web.UI.Page
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
                if (!Page.IsPostBack)
                {
                    Contact_Bind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void Contact_Bind()
        {
           
        }

        protected void Submit_Contact_Click(object sender, EventArgs e)
        {
            try
            {
                objValue.Name = Text_Name.Text;
                objValue.PhoneNumber =Convert.ToInt64(contact_PN.Text);
                objValue.MobileNumber = Convert.ToInt64(contact_MN.Text);
                objValue.Fax = Convert.ToInt64(contact_Fax.Text);
                objValue.Email = contact_email.Text;
                objValue.Flag = "A";
                objValue.CreateDate = System.DateTime.Now;
                objValue.CreateUser = 1;
                objInteraction.ContactInsert(objValue);
                Text_Name.Text = "";
                contact_PN.Text = "";
                contact_MN.Text = "";
                contact_Fax.Text = "";
                contact_email.Text = "";
                Contact_Bind();
            }
            catch (Exception ex)
            {


            }
        }
    }
}