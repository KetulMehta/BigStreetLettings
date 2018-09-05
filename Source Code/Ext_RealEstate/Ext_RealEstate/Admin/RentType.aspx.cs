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
    public partial class RentType : System.Web.UI.Page
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

                    RentTypeBind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void RentTypeBind()
        {
            try
            {
                ds = objInteraction.RentTypeSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Active_Rent.DataSource = ds.Tables[0];
                        Active_Rent.DataBind();
                    }
                    else
                    {
                        Active_Rent.DataSource = null;
                        Active_Rent.DataBind();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                       Deactive_Rent.DataSource = ds.Tables[1];
                       Deactive_Rent.DataBind();
                    }
                    else
                    {
                        Deactive_Rent.DataSource = null;
                        Deactive_Rent.DataBind();
                    }
                }
                else
                {
                    Deactive_Rent.DataSource = null;
                    Deactive_Rent.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Submit_RentType_Click(object sender, EventArgs e)
        {
            objValue.RentTitle = Text_RentType.Text;
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.RentTypeInsert(objValue);
            Text_RentType.Text = "";
            RentTypeBind();
        }

        protected void Active_Rent_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Rent_Type", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "D");
                cmd.Parameters.AddWithValue("@RentId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_RentType.Text = "";
                RentTypeBind();
            }
        }

        protected void Deactive_Rent_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Rent_Type", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "A");
                cmd.Parameters.AddWithValue("@RentId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_RentType.Text = "";
                //btnAddUpdate.Text = "Add";
                RentTypeBind();
            }
        }
    }
}