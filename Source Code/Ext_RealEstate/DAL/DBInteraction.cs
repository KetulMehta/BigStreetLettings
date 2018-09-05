using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DBInteraction
    {
        public String ExecQryPara(String s, SqlParameter[] ParaColl)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            conn.ConnectionString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
            cmd.Connection = conn;
            cmd.CommandText = s;
            cmd.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < ParaColl.Length; i++)
            {
                cmd.Parameters.Add(ParaColl[i]);
            }
            conn.Open();
            cmd.ExecuteNonQuery();
            int rowsAffected = cmd.ExecuteNonQuery();
            conn.Close();
            return rowsAffected.ToString();
        }

        public DataSet GetData(String s)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adpt = new SqlDataAdapter();
            DataSet ds = new DataSet();
            conn.ConnectionString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
            cmd.Connection = conn;
            cmd.CommandText = s;
            cmd.CommandType = CommandType.StoredProcedure;
            adpt.SelectCommand = cmd;
            adpt.Fill(ds);
            return ds;
        }

        public DataSet GetDataPara(String s, SqlParameter[] ParaColl)
        {
            SqlConnection conn = new SqlConnection();
            SqlDataAdapter adpt = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            DataSet ds = new DataSet();
            conn.ConnectionString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
            cmd.Connection = conn;
            cmd.CommandText = s;
            cmd.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < ParaColl.Length; i++)
            {
                cmd.Parameters.Add(ParaColl[i]);
            }
            adpt.SelectCommand = cmd;
            adpt.Fill(ds);
            return ds;
        }

        public void ExecQry(String s)
        {
            try
            {
                SqlConnection conn = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                conn.ConnectionString = System.Configuration.ConfigurationSettings.AppSettings["Conn"].ToString();
                cmd.Connection = conn;
                cmd.CommandText = s;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
               
            }
        }
    }
}
