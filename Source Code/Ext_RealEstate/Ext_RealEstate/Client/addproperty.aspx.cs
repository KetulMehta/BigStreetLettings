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

namespace Ext_RealEstate.Client
{
    public partial class addproperty : System.Web.UI.Page
    {
        prop objValue = new prop();
        static String ConnString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
        SqlConnection cn = new SqlConnection(ConnString);
        DataTable dt = new DataTable();
        InteractionMethods objInteraction = new InteractionMethods();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Property_Click(object sender, EventArgs e)
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
            objValue.Price = Convert.ToInt64(price.Text);
            objValue.PropertyName = Property_Name.Text;
            objValue.Address = address.Text;
            objValue.Details = details.Text;
            objValue.PropertyArea = Convert.ToInt64(Area.Text);
            objValue.Bedroom =Convert.ToInt64(bed.Text);
            objValue.Bathroom = Convert.ToInt64(Bath.Text);
            objValue.Flag = "A";
            objValue.CreateDate = System.DateTime.Now;
            objInteraction.PropertyDetailInsert(objValue);
            Response.Redirect("list.aspx");
        }
    }
}