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
    public partial class City : System.Web.UI.Page
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
                    CityBind();

                }
            }
            catch (Exception)
            {

            }
        }

        private void CityBind()
        {
            try
            {
               

                ds = objInteraction.CitySelectAll();
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


        private void Country_DropdownBind()
        {
            try
            {
                ds = objInteraction.CountrySelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Country_Dropdown1.DataTextField = "CountryName";
                        Country_Dropdown1.DataValueField = "CountryId";
                        Country_Dropdown1.DataSource = ds.Tables[0];
                        Country_Dropdown1.DataBind();
                        Country_Dropdown1.Items.Insert(0, new ListItem("---Select Country---"));



                    }
                    else
                    {
                        Country_Dropdown1.DataSource = null;
                        Country_Dropdown1.DataBind();
                        Country_Dropdown1.Items.Insert(0, new ListItem("---Select Country---"));
                    }


                }

                else
                {
                    Country_Dropdown1.DataSource = null;
                    Country_Dropdown1.DataBind();
                    Country_Dropdown1.Items.Insert(0, new ListItem("---Select Country---"));
                }

            }


            catch (Exception ex)
            {

            }
        }

        protected void Country_Dropdown1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Int64 CountryId = Convert.ToInt64(Country_Dropdown1.SelectedValue.ToString() == "" ? "0" : Country_Dropdown1.SelectedValue.ToString());
                SqlDataAdapter da = new SqlDataAdapter();
                SqlCommand cmd = new SqlCommand("SP_State", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "SelectStateByCountryId");
                cmd.Parameters.AddWithValue("@CountryId", CountryId);
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        State_Dropdown.DataTextField = "StateName";
                        State_Dropdown.DataValueField = "StateId";
                        State_Dropdown.DataSource = ds;
                        State_Dropdown.DataBind();
                        State_Dropdown.Items.Insert(0, new ListItem("---Select State---"));
                    }
                    else
                    {
                        State_Dropdown.DataSource = null;
                        State_Dropdown.DataBind();
                        State_Dropdown.Items.Insert(0, new ListItem("---Select State---"));
                    }
                }
                else
                {
                    State_Dropdown.DataSource = null;
                    State_Dropdown.DataBind();
                    State_Dropdown.Items.Insert(0, new ListItem("---Select State---"));
                }
            }
            catch (Exception e2)
            {
                Response.Write("Error occured : " + e2.Message.ToString());
            }

        }

        protected void Active_State_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_City", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "delete");
                cmd.Parameters.AddWithValue("@Flag", "D");
                cmd.Parameters.AddWithValue("@CityId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_City.Text = "";
                Country_Dropdown1.SelectedIndex=0;
                State_Dropdown.SelectedIndex = 0;
                //btnAddUpdate.Text = "Add";
                CityBind();
            }
        }

        protected void Inactive_State_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_City", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "delete");
                cmd.Parameters.AddWithValue("@Flag", "A");
                cmd.Parameters.AddWithValue("@CityId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_City.Text = "";
                //btnAddUpdate.Text = "Add";
                CityBind();
            }
        }

        protected void City_Submit_Click(object sender, EventArgs e)
        {
            objValue.CityName = Text_City.Text;
            objValue.CountryId = Convert.ToInt64(Country_Dropdown1.SelectedValue);
            objValue.StateId = Convert.ToInt64(State_Dropdown.SelectedValue);
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.CityInsert(objValue);
            Text_City.Text = "";
            Country_Dropdown1.SelectedIndex = 0;
            State_Dropdown.SelectedIndex = 0; 
            CityBind();
        }

    }
}