using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FirstApplication.DataBaseOperations
{
    public class DataBaseCall
    {

        private static SqlConnection establishConnection()
        {
            try
            {
                return new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Connection Unsuccessfull" + ex.Message);
                return null;
            }
        }
        public static DataTable getUserData()
        {

            //SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
            SqlDataAdapter cmd = new SqlDataAdapter("user_info", establishConnection());
            DataTable dt = new DataTable();
            // DataRow dr = null;
            cmd.Fill(dt);
          
            return dt;



        }
        public static SqlDataAdapter getStateList(int input)
        {
            SqlDataAdapter sda = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand("state_list", establishConnection());
            cmd.Parameters.Add(new SqlParameter("@country", input));
            cmd.CommandType = CommandType.StoredProcedure;
            sda.SelectCommand = cmd;
            return sda;

        }
        public static SqlDataAdapter getCountryList()
        {
            return (new SqlDataAdapter("country_list", establishConnection()));
            
        }

        public static int authenticateAdmin(string admin,string password)
        {
            SqlConnection con = establishConnection();
            SqlCommand cmd = new SqlCommand("getAuthorisedAdmin", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@admin_id", admin));
            cmd.Parameters.Add(new SqlParameter("@admin_password", password));
            SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
            parm.Direction = ParameterDirection.ReturnValue;
            
            cmd.Parameters.Add(parm);
            
            cmd.ExecuteNonQuery();
            con.Close();
            return Convert.ToInt32(parm.Value);

        }
        public static int authenticateUser(string user, string user_password)
        {
            SqlConnection con = establishConnection();
            SqlCommand cmd = new SqlCommand("getAuthorisedUser", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@user_id", user));
            cmd.Parameters.Add(new SqlParameter("@user_password", user_password));
            SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
            parm.Direction = ParameterDirection.ReturnValue;

            cmd.Parameters.Add(parm);

            cmd.ExecuteNonQuery();
            con.Close();
            return Convert.ToInt32(parm.Value);

        }

        public static int regiterNewUser(string fname, string lname, string contact,string userid, string country, string user_state, string user_password)
        {
            //SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
            SqlConnection con = establishConnection();
            SqlCommand cmd = new SqlCommand("add_user", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@fname", fname));
            cmd.Parameters.Add(new SqlParameter("@lname", lname));
            cmd.Parameters.Add(new SqlParameter("@userid", userid));
            cmd.Parameters.Add(new SqlParameter("@mobile_number", contact));
            cmd.Parameters.Add(new SqlParameter("@country", country));
            cmd.Parameters.Add(new SqlParameter("@state", user_state));
            cmd.Parameters.Add(new SqlParameter("@password", user_password));
            SqlParameter parm = new SqlParameter("@return", SqlDbType.Int);
            parm.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(parm);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            int x= Convert.ToInt32(parm.Value);
            return x;

        }
        public static DataTable fetchFlight(string source, string destination, string date)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            DateTime x = Convert.ToDateTime(date);
            //conn.Open();
            cmd = new SqlCommand("search_flight", establishConnection());
            cmd.Parameters.Add(new SqlParameter("@source", source));
            cmd.Parameters.Add(new SqlParameter("@destination", destination));
            cmd.Parameters.Add(new SqlParameter("@date_of_journey", Convert.ToDateTime(date)));
            cmd.CommandType = CommandType.StoredProcedure;
            sda.SelectCommand = cmd;

            sda.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                return null;
            }
            else
            {
                return dt;
            }

        }

    }
}