using BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class InteractionMethods
    {
        DBInteraction di = new DBInteraction();
        DataSet ds = new DataSet();
        String Count;

        public String CountryInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@CountryName", objValue.CountryName);
            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            Para[3] = new SqlParameter("@CreateDate", objValue.CreateDate);
            Count=di.ExecQryPara("SP_Country", Para);
            return Count;
        }
        public void CountryUpdate(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "update");
            Para[1] = new SqlParameter("@CountryName", objValue.CountryName);
            Para[2] = new SqlParameter("@CountryId", objValue.CountryId);
            Para[3] = new SqlParameter("@UpdateDate", objValue.UpdateDate);
            di.ExecQryPara("SP_Country", Para);
        }

        public DataSet CountrySelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "SelectAll");
            ds = di.GetDataPara("SP_Country", Para);
            return ds;
        }

        public DataSet CountrySelectById(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[2];
            Para[0] = new SqlParameter("@Mode", "selectById");
            Para[1] = new SqlParameter("@CountryId", objValue.CountryId);
            ds = di.GetDataPara("SP_Country", Para);
            return ds;
        }

        public void CountryDelete(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "delete");
            Para[1] = new SqlParameter("@CountryId", objValue.CountryId);
           
            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            Para[3] = new SqlParameter("@UpdateDate", objValue.UpdateDate);
            di.ExecQryPara("SP_Country", Para);
        }




        public void StateInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[5];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@CountryId", objValue.CountryId);
            Para[2] = new SqlParameter("@StateName", objValue.StateName);
            Para[3] = new SqlParameter("@Flag", objValue.Flag);
            Para[4] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_State", Para);
        }
        public void StateUpdate(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "update");
            Para[1] = new SqlParameter("@StateName", objValue.StateName);
            Para[2] = new SqlParameter("@StateId", objValue.StateId);
            Para[3] = new SqlParameter("@UpdateDate", objValue.UpdateDate);
            di.ExecQryPara("SP_State", Para);
        }

        public DataSet StateSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_State", Para);
            return ds;
        }

        public DataSet StateSelectById(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[2];
            Para[0] = new SqlParameter("@Mode", "selectById");
            Para[1] = new SqlParameter("@StateId", objValue.StateId);
            ds = di.GetDataPara("SP_State", Para);
            return ds;
        }

        public void StateDelete(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "Delete");
            Para[1] = new SqlParameter("@StateId", objValue.StateId);

            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            Para[3] = new SqlParameter("@UpdateDate", objValue.UpdateDate);
            di.ExecQryPara("SP_State", Para);
        }



        public void CityInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[6];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@CountryId", objValue.CountryId);
            Para[2] = new SqlParameter("@StateId", objValue.StateId);
            Para[3] = new SqlParameter("@CityName", objValue.CityName);
            Para[4] = new SqlParameter("@Flag", objValue.Flag);
            Para[5] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_City", Para);
        }
        public void CityUpdate(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "update");
            Para[1] = new SqlParameter("@CityName", objValue.CityName);
            Para[2] = new SqlParameter("@CityId", objValue.CityId);
            Para[3] = new SqlParameter("@UpdateDate", objValue.UpdateDate);
            di.ExecQryPara("SP_City", Para);
        }

        public DataSet CitySelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_City", Para);
            return ds;
        }

        public DataSet CitySelectById(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[2];
            Para[0] = new SqlParameter("@Mode", "selectById");
            Para[1] = new SqlParameter("@CityId", objValue.CityId);
            ds = di.GetDataPara("SP_City", Para);
            return ds;
        }

        public void CityDelete(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "Delete");
            Para[1] = new SqlParameter("@CityId", objValue.CityId);
            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            Para[3] = new SqlParameter("@UpdateDate", objValue.UpdateDate);
            di.ExecQryPara("SP_City", Para);
        }

        public void SliderInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[6];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@Title", objValue.Title);
            Para[2] = new SqlParameter("@SliderImage", objValue.SliderImage);
            Para[3] = new SqlParameter("@Description", objValue.Description);
            Para[4] = new SqlParameter("@Flag", objValue.Flag);
            Para[5] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Slider", Para);
            
        }

        public void TestimonialInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[7];
            Para[0] = new SqlParameter("@mode", "insert");
            Para[1] = new SqlParameter("@Name", objValue.Name);
            Para[2] = new SqlParameter("@Image", objValue.Image);
            Para[3] = new SqlParameter("@Comment", objValue.Comment);
            Para[4] = new SqlParameter("@Flag", objValue.Flag);
            Para[5] = new SqlParameter("@CreateDate", objValue.CreateDate);
            Para[6] = new SqlParameter("@CreateUser", objValue.CreateUser);
            di.ExecQryPara("SP_Testimonial", Para);
          
        }

        public void ContactInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[9];
            Para[0] = new SqlParameter("@mode", "insert");
            Para[1] = new SqlParameter("@Name", objValue.Name);
            Para[2] = new SqlParameter("@Phone_Number", objValue.PhoneNumber);
            Para[3] = new SqlParameter("@Mobile_Number", objValue.MobileNumber);
            Para[4] = new SqlParameter("@Fax", objValue.Fax);
            Para[5] = new SqlParameter("@Email", objValue.Email);
            Para[6] = new SqlParameter("@Flag", objValue.Flag);
            Para[7] = new SqlParameter("@CreateDate", objValue.CreateDate);
            Para[8] = new SqlParameter("@CreateUser", objValue.CreateUser);
            di.ExecQryPara("SP_Contact", Para);

        }

        public void CompanyProfileInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[15];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@CompanyName", objValue.CompanyName);
            Para[2] = new SqlParameter("@CompanyLogo", objValue.CompanyLogo);
            Para[3] = new SqlParameter("@AddressLine1", objValue.AddressLine1);
            Para[4] = new SqlParameter("@AddressLine2", objValue.AddressLine2);
            Para[5] = new SqlParameter("@City", objValue.City);
            Para[6] = new SqlParameter("@State", objValue.State);
            Para[7] = new SqlParameter("@Country", objValue.Country);
            Para[8] = new SqlParameter("@EmailId", objValue.EmailId);
            Para[9] = new SqlParameter("@MobileNumber", objValue.MobileNumber);
            Para[10] = new SqlParameter("@PhoneNumber", objValue.PhoneNumber);
            Para[11] = new SqlParameter("@Website", objValue.Website);
            Para[12] = new SqlParameter("@MapLink", objValue.MapLink);
            Para[13] = new SqlParameter("@Flag", objValue.Flag);
            Para[14] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Company_Profile", Para);
            
        }
        public void AreaInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[6];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@AreaTitle", objValue.AreaTitle);
            Para[2] = new SqlParameter("@CityId", objValue.CityId);
            Para[3] = new SqlParameter("@PinCode", objValue.PinCode);
            Para[4] = new SqlParameter("@Flag", objValue.Flag);
            Para[5] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Area", Para);
        }
        public DataSet AreaSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Area", Para);
            return ds;
        }

        public void PropertyTypeInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@PropertyTitle", objValue.PropertyTitle);
            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            Para[3] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Property_Type", Para);
        }

        public DataSet PropertyTypeSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Property_Type", Para);
            return ds;
        }

        public void RentTypeInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@RentTitle", objValue.RentTitle);
            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            Para[3] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Rent_Type", Para);
        }

        public DataSet RentTypeSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Rent_Type", Para);
            return ds;
        }

        public DataSet loginSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Admin_Login", Para);
            return ds;
        }

        public void PropMasterInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[10];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@PropertyId", objValue.PropertyId);
            Para[2] = new SqlParameter("@AddressLine1", objValue.AddressLine1);
            Para[3] = new SqlParameter("@AddressLine2", objValue.AddressLine2);
            Para[4] = new SqlParameter("@Area", objValue.Area);
            Para[5] = new SqlParameter("@City", objValue.City);
            Para[6] = new SqlParameter("@State", objValue.State);
            Para[7] = new SqlParameter("@Country", objValue.Country);
            Para[8] = new SqlParameter("@Flag", objValue.Flag);
            Para[9] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Prop_Mst", Para);
        }

        public void PropDetailInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[6];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@Rate_sqft", objValue.rtsqft);
            Para[2] = new SqlParameter("@Total_sqft", objValue.totsqft);
            Para[3] = new SqlParameter("@Total_Rate", objValue.totrate);
            Para[4] = new SqlParameter("@Flag", objValue.Flag);
            Para[5] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Prop_Detail", Para);
        }

        public void PropSpecificationInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[4];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@Specification", objValue.PropSpecification);
            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            Para[3] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Prop_Specification", Para);
        }

        public void LoginInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[5];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@Email", objValue.Email);
            Para[2] = new SqlParameter("@Password", objValue.Password);
            Para[3] = new SqlParameter("@Flag", objValue.Flag);
            Para[4] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Admin_Login", Para);
        }

        public DataSet Login(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[3];
            Para[0] = new SqlParameter("@Mode", "Login");
            Para[1] = new SqlParameter("@EmailId", objValue.Email);
            Para[2] = new SqlParameter("@Password", objValue.Password);
            ds = di.GetDataPara("SP_Admin_Login", Para);
            return ds;
        }

        public DataSet UserLogin(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[3];
            Para[0] = new SqlParameter("@Mode", "Login");
            Para[1] = new SqlParameter("@Email", objValue.Email);
            Para[2] = new SqlParameter("@Password", objValue.Password);
            ds = di.GetDataPara("SP_Client_Registration", Para);
            return ds;
        }

        public DataSet Compare(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "Compare");
            ds = di.GetDataPara("SP_Admin_Login", Para);
            return ds;
        }

        public DataSet SliderSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Slider", Para);
            return ds;
        }

        public DataSet TestimonialSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Testimonial", Para);
            return ds;
        }

        public DataSet ContactSelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Contact", Para);
            return ds;
        }

        public void ChangePassword(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[3];
            Para[0] = new SqlParameter("@Mode", "ChangePassword");
            Para[1] = new SqlParameter("@Password", objValue.NewPassword);
            Para[2] = new SqlParameter("@Flag", objValue.Flag);
            //Para[3] = new SqlParameter("@UpdateDate", objValue.UpdateDate);
            di.ExecQryPara("SP_Admin_Login", Para);
        }

        public void userregisterInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[7];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@Name", objValue.Name);
            Para[2] = new SqlParameter("@Mobile_Number", objValue.MobileNumber);
            Para[3] = new SqlParameter("@Email", objValue.EmailId);
            Para[4] = new SqlParameter("@Password", objValue.Password);
            Para[5] = new SqlParameter("@Flag", objValue.Flag);
            Para[6] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Client_Registration", Para);
        }

        public void agentregisterInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[7];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@Name", objValue.Name);
            Para[2] = new SqlParameter("@Mobile_Number", objValue.MobileNumber);
            Para[3] = new SqlParameter("@Email", objValue.EmailId);
            Para[4] = new SqlParameter("@Password", objValue.Password);
            Para[5] = new SqlParameter("@Flag", objValue.Flag);
            Para[6] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Agent_Registration", Para);
        }

        public DataSet AgentLogin(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[3];
            Para[0] = new SqlParameter("@Mode", "Login");
            Para[1] = new SqlParameter("@Email", objValue.Email);
            Para[2] = new SqlParameter("@Password", objValue.Password);
            ds = di.GetDataPara("SP_Agent_Registration", Para);
            return ds;
        }

        public void PropertyDetailInsert(prop objValue)
        {
            SqlParameter[] Para = new SqlParameter[11];
            Para[0] = new SqlParameter("@Mode", "insert");
            Para[1] = new SqlParameter("@Price", objValue.Price);
            Para[2] = new SqlParameter("@PropertyName", objValue.PropertyName);
            Para[3] = new SqlParameter("@Address", objValue.Address);
            Para[4] = new SqlParameter("@Details", objValue.Details);
            Para[5] = new SqlParameter("@PropertyArea", objValue.PropertyArea);
            Para[6] = new SqlParameter("@Bedroom", objValue.Bedroom);
            Para[7] = new SqlParameter("@Bathroom", objValue.Bathroom);
            Para[8] = new SqlParameter("@Image", objValue.Image);
            Para[9] = new SqlParameter("@Flag", objValue.Flag);
            Para[10] = new SqlParameter("@CreateDate", objValue.CreateDate);
            di.ExecQryPara("SP_Add_Property", Para);
        }

        public DataSet PropertySelectAll()
        {
            SqlParameter[] Para = new SqlParameter[1];
            Para[0] = new SqlParameter("@Mode", "selectAll");
            ds = di.GetDataPara("SP_Add_Property", Para);
            return ds;
        }

    }
}
