using BAL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Admin
{
    public partial class Company_Profile : System.Web.UI.Page
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
                if (!this.IsPostBack)
                {
                    CompanyProfile_Bind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void CompanyProfile_Bind()
        {
            
        }

        protected void Button_Image_Click(object sender, EventArgs e)
        {

        }

        

        protected void Submit_Company_Detail_Click(object sender, EventArgs e)
        {
            try
            {
                #region ImageCompanyProfile

                string folderPath = Server.MapPath("~/Upload/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists. Create it.
                    Directory.CreateDirectory(folderPath);
                }

                //Save the File to the Directory (Folder).
                Company_Logo_Uplaod_Image.SaveAs(folderPath + Path.GetFileName(Company_Logo_Uplaod_Image.FileName));
                String FullPath = "../Upload/" + Company_Logo_Uplaod_Image.FileName;

                #endregion


                objValue.CompanyLogo = FullPath.ToString();
                objValue.CompanyName = Text_Company_Name.Text;
                objValue.AddressLine1 = Company_addressline1.Text;
                objValue.AddressLine2 = Company_addressline2.Text;
                objValue.City = Company_City.Text;
                objValue.State = Company_state.Text;
                objValue.Country = Company_Country.Text;
                objValue.EmailId = Company_Emailid.Text;
                objValue.MobileNumber = Convert.ToInt64(Company_Mobile_Number.Text);
                objValue.PhoneNumber = Convert.ToInt64(Company_Phone_Number.Text);
                objValue.Website = Company_Website.Text;
                objValue.MapLink = Company_Map_Link.Text;
                objValue.Flag = "A";
                objValue.CreateDate = System.DateTime.Now;
                objInteraction.CompanyProfileInsert(objValue);
                Text_Company_Name.Text = "";
                Company_addressline1.Text = "";
                Company_addressline2.Text = "";
                Company_City.Text = "";
                Company_state.Text = "";
                Company_Country.Text = "";
                Company_Emailid.Text = "";
                Company_Mobile_Number.Text = "";
                Company_Phone_Number.Text = "";
                Company_Website.Text = "";
                Company_Map_Link.Text = "";
                CompanyProfile_Bind();
            }
            catch (Exception ex)
            {


            }
        }
    }
}