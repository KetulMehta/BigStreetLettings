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
    public partial class PropertyMain : System.Web.UI.Page
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
                    PropertyType_DropdownBind();
                    PropertyCountryBind();
                    

                }
            }
            catch (Exception)
            {

            }
        }

        

        private void PropertyAreaBind()
        {
            try
            {
                ds = objInteraction.AreaSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        PropertyArea.DataTextField = "AreaTitle";
                        PropertyArea.DataValueField = "AreaId";
                        PropertyArea.DataSource = ds.Tables[0];
                        PropertyArea.DataBind();
                        PropertyArea.Items.Insert(0, new ListItem("---Select Area---"));



                    }
                    else
                    {
                        PropertyArea.DataSource = null;
                        PropertyArea.DataBind();
                        PropertyArea.Items.Insert(0, new ListItem("---Select Area---"));
                    }


                }

                else
                {
                    PropertyArea.DataSource = null;
                    PropertyArea.DataBind();
                    PropertyArea.Items.Insert(0, new ListItem("---Select Area---"));
                }

            }


            catch (Exception ex)
            {

            }
        }

        private void PropertyCityBind()
        {
            try
            {
                ds = objInteraction.CitySelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        PropertyCity.DataTextField = "CityName";
                        PropertyCity.DataValueField = "CityId";
                        PropertyCity.DataSource = ds.Tables[0];
                        PropertyCity.DataBind();
                        PropertyCity.Items.Insert(0, new ListItem("---Select City---"));



                    }
                    else
                    {
                        PropertyCity.DataSource = null;
                        PropertyCity.DataBind();
                        PropertyCity.Items.Insert(0, new ListItem("---Select City---"));
                    }


                }

                else
                {
                    PropertyCity.DataSource = null;
                    PropertyCity.DataBind();
                    PropertyCity.Items.Insert(0, new ListItem("---Select City---"));
                }

            }


            catch (Exception ex)
            {

            }
        }

        private void PropertyStateBind()
        {
            try
            {
                ds = objInteraction.StateSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        PropertyState.DataTextField = "StateName";
                        PropertyState.DataValueField = "StateId";
                        PropertyState.DataSource = ds.Tables[0];
                        PropertyState.DataBind();
                        PropertyState.Items.Insert(0, new ListItem("---Select State---"));



                    }
                    else
                    {
                        PropertyState.DataSource = null;
                        PropertyState.DataBind();
                        PropertyState.Items.Insert(0, new ListItem("---Select State---"));
                    }


                }

                else
                {
                    PropertyState.DataSource = null;
                    PropertyState.DataBind();
                    PropertyState.Items.Insert(0, new ListItem("---Select State---"));
                }

            }


            catch (Exception ex)
            {

            }
        }

        private void PropertyCountryBind()
        {

            try
            {
                ds = objInteraction.CountrySelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        PropertyCountry.DataTextField = "CountryName";
                        PropertyCountry.DataValueField = "CountryId";
                        PropertyCountry.DataSource = ds.Tables[0];
                        PropertyCountry.DataBind();
                        PropertyCountry.Items.Insert(0, new ListItem("---Select Country---"));




                    }
                    else
                    {
                        PropertyCountry.DataSource = null;
                        PropertyCountry.DataBind();
                        PropertyCountry.Items.Insert(0, new ListItem("---Select Country---"));
                    }


                }

                else
                {
                    PropertyCountry.DataSource = null;
                    PropertyCountry.DataBind();
                    PropertyCountry.Items.Insert(0, new ListItem("---Select Country---"));
                }

            }


            catch (Exception ex)
            {

            }
        }

        private void PropertyType_DropdownBind()
        {

            try
            {
                ds = objInteraction.PropertyTypeSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        PropertyType_Dropdown.DataTextField = "PropertyTitle";
                        PropertyType_Dropdown.DataValueField = "PropertyId";
                        PropertyType_Dropdown.DataSource = ds.Tables[0];
                        PropertyType_Dropdown.DataBind();
                        PropertyType_Dropdown.Items.Insert(0, new ListItem("---Select Property---"));




                    }
                    else
                    {
                        PropertyType_Dropdown.DataSource = null;
                        PropertyType_Dropdown.DataBind();
                        PropertyType_Dropdown.Items.Insert(0, new ListItem("---Select Property---"));
                    }


                }

                else
                {
                    PropertyType_Dropdown.DataSource = null;
                    PropertyType_Dropdown.DataBind();
                    PropertyType_Dropdown.Items.Insert(0, new ListItem("---Select Property---"));
                }

            }


            catch (Exception ex)
            {

            }
        }




        //protected void Textbox1_TextChanged(object sender, EventArgs e)
        //{
        //    Int32 val1 = Convert.ToInt32(Textbox_rtsqft.Text);
        //    Int32 val2 = Convert.ToInt32(Textbox_totsqft.Text);
        //    Int32 val3 = val1 * val2;
        //    Textbox_totrate.Text = val3.ToString();
        //}




        //protected void PropertyState_SelectedIndexChanged(object sender, EventArgs e)
        //{
           
        //}

        protected void PropertyCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Int64 CityId = Convert.ToInt64(PropertyCity.SelectedValue.ToString() == "" ? "0" : PropertyCity.SelectedValue.ToString());
                SqlDataAdapter da = new SqlDataAdapter();
                SqlCommand cmd = new SqlCommand("SP_Area", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Mode", "SelectAreaByCityId");
                cmd.Parameters.AddWithValue("@CityId", CityId);
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        PropertyArea.DataTextField = "AreaTitle";
                        PropertyArea.DataValueField = "AreaId";
                        PropertyArea.DataSource = ds;
                        PropertyArea.DataBind();
                        PropertyArea.Items.Insert(0, new ListItem("---Select Area---"));
                    }
                    else
                    {
                        PropertyArea.DataSource = null;
                        PropertyArea.DataBind();
                        PropertyArea.Items.Insert(0, new ListItem("---Select Area---"));
                    }
                }
                else
                {
                    PropertyArea.DataSource = null;
                    PropertyArea.DataBind();
                    PropertyArea.Items.Insert(0, new ListItem("---Select Area---"));
                }
            }
            catch (Exception e2)
            {
                Response.Write("Error occured : " + e2.Message.ToString());
            }
        }

        protected void PropertyArea_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void PropertyDetails_Submit_Click1(object sender, EventArgs e)
        {
            //objValue.PropertyId = Convert.ToInt64(PropertyType_Dropdown.SelectedValue);
            objValue.PropertyType = PropertyType_Dropdown.SelectedValue;
            objValue.Country= PropertyCountry.SelectedValue;
            objValue.State= PropertyState.SelectedValue;
            objValue.City = PropertyCity.SelectedValue;
            objValue.Area = PropertyArea.Text;
            objValue.AddressLine1 = Property_addressline1.Text;
            objValue.AddressLine2 = Property_addressline2.Text;
            objValue.rtsqft = Convert.ToInt64(Textbox_rtsqft.Text);
            objValue.totsqft = Convert.ToInt64(Textbox_totsqft.Text);
            objValue.totrate = Convert.ToInt64(Textbox_totrate.Text);
            objValue.PropSpecification = Textbox_PropSpec.Text;
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.PropMasterInsert(objValue);
            objInteraction.PropDetailInsert(objValue);
            objInteraction.PropSpecificationInsert(objValue);
            Property_addressline1.Text = "";
            Property_addressline2.Text = "";
            Textbox_rtsqft.Text = "";
            Textbox_totsqft.Text = "";
            Textbox_totrate.Text = "";
            Textbox_PropSpec.Text = "";
            PropertyCountry.SelectedIndex = 0;
            PropertyState.SelectedIndex = 0;
            PropertyCity.SelectedIndex = 0;
            PropertyType_Dropdown.SelectedIndex = 0;
            PropertyArea.SelectedIndex = 0;
            PropertyCountry.SelectedIndex = 0;


            
        }

        protected void PropertyCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Int64 CountryId = Convert.ToInt64(PropertyCountry.SelectedValue.ToString() == "" ? "0" : PropertyCountry.SelectedValue.ToString());
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
                        PropertyState.DataTextField = "StateName";
                        PropertyState.DataValueField = "StateId";
                        PropertyState.DataSource = ds;
                        PropertyState.DataBind();
                        PropertyState.Items.Insert(0, new ListItem("---Select State---"));
                    }
                    else
                    {
                        PropertyState.DataSource = null;
                        PropertyState.DataBind();
                        PropertyState.Items.Insert(0, new ListItem("---Select State---"));
                    }
                }
                else
                {
                    PropertyState.DataSource = null;
                    PropertyState.DataBind();
                    PropertyState.Items.Insert(0, new ListItem("---Select State---"));
                }
            }
            catch (Exception e2)
            {
                Response.Write("Error occured : " + e2.Message.ToString());
            }
        }

     

        protected void PropertyState_SelectedIndexChanged1(object sender, EventArgs e)
        {
            try
            {
                Int64 StateId = Convert.ToInt64(PropertyState.SelectedValue.ToString() == "" ? "0" : PropertyState.SelectedValue.ToString());
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
                        PropertyCity.DataTextField = "CityName";
                        PropertyCity.DataValueField = "CityId";
                        PropertyCity.DataSource = ds;
                        PropertyCity.DataBind();
                        PropertyCity.Items.Insert(0, new ListItem("---Select City---"));
                    }
                    else
                    {
                        PropertyCity.DataSource = null;
                        PropertyCity.DataBind();
                        PropertyCity.Items.Insert(0, new ListItem("---Select City---"));
                    }
                }
                else
                {
                    PropertyCity.DataSource = null;
                    PropertyCity.DataBind();
                    PropertyCity.Items.Insert(0, new ListItem("---Select City---"));
                }
            }
            catch (Exception e2)
            {
                Response.Write("Error occured : " + e2.Message.ToString());
            }
        }

        

        protected void Textbox_totsqft_TextChanged(object sender, EventArgs e)
        {
            Int32 val1 = Convert.ToInt32(Textbox_rtsqft.Text);
            Int32 val2 = Convert.ToInt32(Textbox_totsqft.Text);
            Int32 val3 = val1 * val2;
            Textbox_totrate.Text = val3.ToString();
        }
    }
}