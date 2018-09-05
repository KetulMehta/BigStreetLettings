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
    public partial class State : System.Web.UI.Page
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
                    Country_DropdownBind();
                    StateBind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void Country_DropdownBind()
        {

            try
            {
                ds = objInteraction.CountrySelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Country_Dropdown.DataTextField = "CountryName";
                        Country_Dropdown.DataValueField = "CountryId";
                        Country_Dropdown.DataSource = ds.Tables[0];
                        Country_Dropdown.DataBind();
                        Country_Dropdown.Items.Insert(0, new ListItem("---Select Country---"));



                    }
                    else
                    {
                        Country_Dropdown.DataSource = null;
                        Country_Dropdown.DataBind();
                        Country_Dropdown.Items.Insert(0, new ListItem("---Select Country---"));
                    }


                }

                else
                {
                    Country_Dropdown.DataSource = null;
                    Country_Dropdown.DataBind();
                    Country_Dropdown.Items.Insert(0, new ListItem("---Select Country---"));
                }

            }


            catch (Exception ex)
            {

            }
        }
        

        private void StateBind()
        {
            try
            {
                ds = objInteraction.StateSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Active_State.DataSource = ds.Tables[0];
                        Active_State.DataBind();
                    }
                    else
                    {
                        Active_State.DataSource = null;
                        Active_State.DataBind();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        Deactive_State.DataSource = ds.Tables[1];
                        Deactive_State.DataBind();
                    }
                    else
                    {
                        Deactive_State.DataSource = null;
                        Deactive_State.DataBind();
                    }
                }
                else
                {
                    Deactive_State.DataSource = null;
                    Deactive_State.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Active_State_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_State", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "D");
                cmd.Parameters.AddWithValue("@StateId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_State.Text = "";
                Country_Dropdown.SelectedIndex = 0;
                
                //btnAddUpdate.Text = "Add";
                StateBind();
            }
        }

        protected void Deactive_State_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_State", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "Delete");
                cmd.Parameters.AddWithValue("@Flag", "A");
                cmd.Parameters.AddWithValue("@StateId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_State.Text = "";
                //btnAddUpdate.Text = "Add";
                StateBind();
            }
        }

        protected void Submit_State_Click(object sender, EventArgs e)
        {
            objValue.StateName = Text_State.Text;
            objValue.CountryId = Convert.ToInt64(Country_Dropdown.SelectedValue);
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.StateInsert(objValue);
            Text_State.Text = "";
            Country_Dropdown.SelectedIndex = 0;
            StateBind();

        }
    }
}
