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
    public partial class Client : System.Web.UI.MasterPage
    {
        prop objValue = new prop();
        static String ConnString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
        SqlConnection cn = new SqlConnection(ConnString);
        DataTable dt = new DataTable();
        InteractionMethods objInteraction = new InteractionMethods();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loginname"] != null)
            {
                lbl_user.Text = " " + Session["Loginname"].ToString();
            }
            else
            {
            }
            ContactBind();
            }

        private void ContactBind()
        {
            try
            {
                ds = objInteraction.ContactSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Contact.DataSource = ds.Tables[0];
                        Contact.DataBind();
                    }
                    else
                    {
                        Contact.DataSource = null;
                        Contact.DataBind();
                    }

                }
                else
                {
                    Contact.DataSource = null;
                    Contact.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}