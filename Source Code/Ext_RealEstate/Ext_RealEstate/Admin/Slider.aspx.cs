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
    public partial class Slider : System.Web.UI.Page
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
                    Slider_Bind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void Slider_Bind()
        {

        }

        protected void Submit_Slider_Click(object sender, EventArgs e)
        {
            try
            {
                #region Imageregion

                string folderPath = Server.MapPath("~/Upload/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists. Create it.
                    Directory.CreateDirectory(folderPath);
                }

                //Save the File to the Directory (Folder).
                FileUpload_Image.SaveAs(folderPath + Path.GetFileName(FileUpload_Image.FileName));
                String FullPath = "../Upload/" + FileUpload_Image.FileName;

                #endregion


                objValue.SliderImage = FullPath.ToString();
                objValue.Title = TextBox_Title.Text;
                objValue.Description = TextBox_Description.Text;
                objValue.Flag = "A";
                objValue.CreateDate = System.DateTime.Now;
                objInteraction.SliderInsert(objValue);
                TextBox_Title.Text = "";
                TextBox_Description.Text = "";
                Slider_Bind();
            }
            catch (Exception ex)
            {


            }

        
        }

        protected void Button_Image_Click(object sender, EventArgs e)
        {
            //string folderPath = Server.MapPath("~/Upload/");

            ////Check whether Directory (Folder) exists.
            //if (!Directory.Exists(folderPath))
            //{
            //    //If Directory (Folder) does not exists. Create it.
            //    Directory.CreateDirectory(folderPath);
            //}

            ////Save the File to the Directory (Folder).
            //FileUpload_Image.SaveAs(folderPath + Path.GetFileName(FileUpload_Image.FileName));
            //String FullPath = "../Upload/" + FileUpload_Image.FileName;
            ////Display the success message.
            ////objValue.Category = FullPath.Text;
            //Label_Image.Text = Path.GetFileName(FileUpload_Image.FileName) + " has been uploaded.";
        }
    }
}