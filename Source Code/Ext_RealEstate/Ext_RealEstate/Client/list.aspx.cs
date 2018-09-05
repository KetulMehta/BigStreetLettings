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
    public partial class list : System.Web.UI.Page
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
                    PropertyBind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void PropertyBind()
        {
            try
            {
                ds = objInteraction.PropertySelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Property.DataSource = ds.Tables[0];
                        Property.DataBind();
                    }
                    else
                    {
                        Property.DataSource = null;
                        Property.DataBind();
                    }

                }
                else
                {
                    Property.DataSource = null;
                    Property.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}