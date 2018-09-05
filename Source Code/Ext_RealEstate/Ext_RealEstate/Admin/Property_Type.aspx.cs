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

namespace Ext_RealEstate
{
    public partial class Property_Type : System.Web.UI.Page
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
                    
                    PropertyTypeBind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void PropertyTypeBind()
        {
            try
            {
                ds = objInteraction.PropertyTypeSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Active_Property.DataSource = ds.Tables[0];
                        Active_Property.DataBind();
                    }
                    else
                    {
                        Active_Property.DataSource = null;
                        Active_Property.DataBind();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                       Deactive_Property.DataSource = ds.Tables[1];
                      Deactive_Property.DataBind();
                    }
                    else
                    {
                        Deactive_Property.DataSource = null;
                        Deactive_Property.DataBind();
                    }
                }
                else
                {
                    Deactive_Property.DataSource = null;
                    Deactive_Property.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Submit_PropertyType_Click(object sender, EventArgs e)
        {
            objValue.PropertyTitle = Text_PropertyType.Text;
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.PropertyTypeInsert(objValue);
            Text_PropertyType.Text = "";
            PropertyTypeBind();
        }

        protected void Active_Property_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Property_Type", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "D");
                cmd.Parameters.AddWithValue("@PropertyId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_PropertyType.Text = "";
                PropertyTypeBind();
            }
        }


        protected void Deactive_Property_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Property_Type", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "A");
                cmd.Parameters.AddWithValue("@PropertyId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_PropertyType.Text = "";
                //btnAddUpdate.Text = "Add";
                PropertyTypeBind();
            }
        }
    }
}