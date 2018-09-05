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
    public partial class Area : System.Web.UI.Page
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
                    State_DropdownBind();
                    AreaBind();

                }
            }
            catch (Exception)
            {

            }
        }

        private void State_DropdownBind()
        {
            try
            {
                ds = objInteraction.StateSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        State_Dropdown.DataTextField = "StateName";
                        State_Dropdown.DataValueField = "StateId";
                        State_Dropdown.DataSource = ds.Tables[0];
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

        private void AreaBind()
        {
            try
            {
                ds = objInteraction.AreaSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Active_Area.DataSource = ds.Tables[0];
                        Active_Area.DataBind();
                    }
                    else
                    {
                        Active_Area.DataSource = null;
                        Active_Area.DataBind();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        Deactive_Area.DataSource = ds.Tables[1];
                        Deactive_Area.DataBind();
                    }
                    else
                    {
                        Deactive_Area.DataSource = null;
                        Deactive_Area.DataBind();
                    }
                }
                else
                {
                    Deactive_Area.DataSource = null;
                    Deactive_Area.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Area_Submit_Click(object sender, EventArgs e)
        {
            objValue.AreaTitle = Text_Area.Text;
            objValue.CountryId = Convert.ToInt64(Country_Dropdown.SelectedValue);
            objValue.StateId = Convert.ToInt64(State_Dropdown.SelectedValue);
            objValue.CityId = Convert.ToInt64(City_Dropdown.SelectedValue);
            objValue.PinCode = Convert.ToInt64(Text_PinCode.Text);
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.AreaInsert(objValue);
            Text_Area.Text = "";
            State_Dropdown.SelectedIndex = 0;
            Country_Dropdown.SelectedIndex = 0;
            City_Dropdown.SelectedIndex = 0;
            Text_PinCode.Text = "";
            AreaBind();
        }

       

        protected void Active_Area_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Area", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "delete");
                cmd.Parameters.AddWithValue("@Flag", "D");
                cmd.Parameters.AddWithValue("@AreaId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_Area.Text = "";
               
                //btnAddUpdate.Text = "Add";
                AreaBind();
            }
        }

        protected void Deactive_Area_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                Int64 Id = Convert.ToInt64(e.CommandArgument.ToString().Trim() == "" ? "0" : e.CommandArgument.ToString().Trim());
                SqlCommand cmd = new SqlCommand("SP_Area", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "delete");
                cmd.Parameters.AddWithValue("@Flag", "A");
                cmd.Parameters.AddWithValue("@AreaId", Id);
                cmd.Parameters.AddWithValue("@UpdateDate", Convert.ToDateTime(System.DateTime.Now));
                cmd.Parameters.AddWithValue("@UpdateUser", 1);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Text_Area.Text = "";
                Country_Dropdown.SelectedIndex=0;
                State_Dropdown.SelectedIndex=0;
                City_Dropdown.SelectedIndex=0;
                Text_PinCode.Text = "";

                //btnAddUpdate.Text = "Add";
                AreaBind();
            }
        }

        protected void Country_Dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Int64 CountryId = Convert.ToInt64(Country_Dropdown.SelectedValue.ToString() == "" ? "0" : Country_Dropdown.SelectedValue.ToString());
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

        protected void State_Dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Int64 StateId = Convert.ToInt64(State_Dropdown.SelectedValue.ToString() == "" ? "0" : State_Dropdown.SelectedValue.ToString());
                SqlDataAdapter da = new SqlDataAdapter();
                SqlCommand cmd = new SqlCommand("SP_City", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "SelectCityByStateId");
                cmd.Parameters.AddWithValue("@StateId", StateId);
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        City_Dropdown.DataTextField = "CityName";
                        City_Dropdown.DataValueField = "CityId";
                        City_Dropdown.DataSource = ds;
                        City_Dropdown.DataBind();
                        City_Dropdown.Items.Insert(0, new ListItem("---Select City---"));
                    }
                    else
                    {
                        City_Dropdown.DataSource = null;
                        City_Dropdown.DataBind();
                        City_Dropdown.Items.Insert(0, new ListItem("---Select City---"));
                    }
                }
                else
                {
                    City_Dropdown.DataSource = null;
                    City_Dropdown.DataBind();
                    City_Dropdown.Items.Insert(0, new ListItem("---Select City---"));
                }
            }
            catch (Exception e2)
            {
                Response.Write("Error occured : " + e2.Message.ToString());
            }
        }
    }
}