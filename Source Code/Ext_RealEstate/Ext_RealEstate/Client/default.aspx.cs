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
    public partial class _default : System.Web.UI.Page
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
                    SliderBind();
                    TestimonialBind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void TestimonialBind()
        {
            try
            {
                ds = objInteraction.TestimonialSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Testimonial.DataSource = ds.Tables[0];
                        Testimonial.DataBind();
                    }
                    else
                    {
                        Testimonial.DataSource = null;
                        Testimonial.DataBind();
                    }

                }
                else
                {
                    Testimonial.DataSource = null;
                    Testimonial.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }

        private void SliderBind()
        {
            try
            {
                ds = objInteraction.SliderSelectAll();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Slider.DataSource = ds.Tables[0];
                        Slider.DataBind();
                    }
                    else
                    {
                        Slider.DataSource = null;
                        Slider.DataBind();
                    }
                   
                }
                else
                {
                    Slider.DataSource = null;
                    Slider.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}