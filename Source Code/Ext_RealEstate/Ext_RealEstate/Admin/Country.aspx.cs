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
    public partial class Country : System.Web.UI.Page
    {
        prop objValue = new prop();
        static String ConnString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
        SqlConnection cn = new SqlConnection(ConnString);
        InteractionMethods objInteraction = new InteractionMethods();
        DataSet ds = new DataSet();
        String ReturnCount;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!this.IsPostBack)
                {
                    bindRepeter();
                }
            }
            catch (Exception)
            {

            }


        }

        private void bindRepeter()
        {
            try
            {
                ds = objInteraction.CountrySelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Active_Country1.DataSource = ds.Tables[0];
                        Active_Country1.DataBind();
                    }
                    else
                    {
                        Active_Country1.DataSource = null;
                        Active_Country1.DataBind();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        Deactive_Country1.DataSource = ds.Tables[1];
                        Deactive_Country1.DataBind();
                    }
                    else
                    {
                        Deactive_Country1.DataSource = null;
                        Deactive_Country1.DataBind();
                    }
                }
                else
                {
                    Deactive_Country1.DataSource = null;
                    Deactive_Country1.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }


        protected void Submit_Country_Click1(object sender, EventArgs e)
        {
            objValue.CountryName = Text_Country.Text;
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            ReturnCount=objInteraction.CountryInsert(objValue);
            Text_Country.Text = "";
            bindRepeter();
        }

      

        protected void Deactive_Country_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Country", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "A");
                cmd.Parameters.AddWithValue("@CountryId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_Country.Text = "";
                //btnAddUpdate.Text = "Add";
                bindRepeter();
            }
        }

        protected void Active_Country_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Country", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "D");
              

                cmd.Parameters.AddWithValue("@CountryId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_Country.Text = "";
                //btnAddUpdate.Text = "Add";
                bindRepeter();
            }
        }
    }
}