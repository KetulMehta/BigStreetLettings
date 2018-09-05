using BAL;
using DAL;
using System;
using System.IO;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ext_RealEstate.Admin
{
    public partial class Testimonial : System.Web.UI.Page
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
                if (!Page.IsPostBack)
                {
                    Testimonial_Bind();
                }
            }
            catch (Exception)
            {

            }
        }

        private void Testimonial_Bind()
        {
            
        }

        

        protected void Button_Testimony_Image_Click(object sender, EventArgs e)
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
           
        }

        protected void Submit_Testimony_Click(object sender, EventArgs e)
        {
            try
            {
                #region Imge

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
                objValue.Image = FullPath.ToString();
                objValue.Name = Text_Name.Text;
                objValue.Comment = Testimonial_Comment.Text;

                objValue.Flag = "A";
                objValue.CreateDate = System.DateTime.Now;
                objValue.CreateUser = 1;
                objInteraction.TestimonialInsert(objValue);
                Text_Name.Text = "";
                Testimonial_Comment.Text = "";
                Testimonial_Bind();
            }
            catch (Exception ex)
            {
                
               
            }
        }
    }
}