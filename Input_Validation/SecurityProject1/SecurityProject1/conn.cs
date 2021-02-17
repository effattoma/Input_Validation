using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SecurityProject1
{
    public class conn
    {
        string connectstr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        public int executequery(string query)
        {
            SqlConnection con = new SqlConnection(connectstr);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch
            {
                return 0;
            }

        }
        public DataTable getData(string query)
        {
            SqlConnection con = new SqlConnection(connectstr);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public string Login(string query)
        {
            SqlConnection conn = new SqlConnection(connectstr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand(query, conn);

            try
            {
                string str = cmd.ExecuteScalar().ToString();
                return str;
            }
            catch
            {
                return "0";
            }
        }
    }
}