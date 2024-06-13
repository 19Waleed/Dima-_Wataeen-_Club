using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Dima__Wataeen__Club
{

    public partial class Approve_New_Team : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            DBCON.Club_DB();

             if (!IsPostBack)
             {
                 using (SqlCommand cmdd = new SqlCommand("SP_New_Team"))
                 {
                     cmdd.Parameters.AddWithValue("@Action", "SELECTeams");
                     using (SqlDataAdapter sda = new SqlDataAdapter())
                     {
                         cmdd.CommandType = CommandType.StoredProcedure;
                         cmdd.Connection = DBCON.conn;
                        sda.SelectCommand = cmdd;
                         using (DataTable dt = new DataTable())
                         {
                             sda.Fill(dt);
                             if (dt.Rows.Count > 0)
                             {
                                 SearchResults.Visible = true;
                                 SearchResults.DataSource = dt;
                                 SearchResults.DataBind();
                             }
                             else
                             {
                                 SearchResults.Visible = false;
                             }
                         }
                     }
                 }




             }
        }
    }
}

