using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Dima__Wataeen__Club
{
    public class Club_DBClass
    {
        public SqlConnection conn { get; set; }

        public void Club_DB()
        {
            if (conn != null && conn.State == ConnectionState.Open)
            {
                conn.Close();
                conn.Dispose();
            }

            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Club_DatabaseEntities1"].ConnectionString); 
            conn.Open();
        }
    }
}


