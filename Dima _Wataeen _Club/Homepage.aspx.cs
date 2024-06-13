using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;

namespace Dima__Wataeen__Club
{
    
    public partial class Homepage : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        string Pages_Team_ID = "";
        string User_ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Select_Pages();
            if (!this.IsPostBack)
            {
                if (Session["Pages_User_Name"] == null)
                {
                    Response.Redirect("~/LoginApp.aspx");
                }
            }
        }
        public void Select_Pages()
        {
            DBCON.Club_DB();

            if (Session["Pages_User_Name"] == null)
            {
                Response.Redirect("~/LoginApp.aspx");
            }
            else
            {
                string User_Name = (string)Session["Pages_User_Name"];

                using (SqlCommand cmdd = new SqlCommand("sp_sign_in", DBCON.conn))
                {
                    cmdd.CommandType = CommandType.StoredProcedure;
                    cmdd.Parameters.AddWithValue("@Action", "SELECTUser_Pages");
                    cmdd.Parameters.AddWithValue("@User_Name", User_Name);

                    using (SqlDataAdapter adpage = new SqlDataAdapter(cmdd))
                    {
                        DataTable myPages = new DataTable();
                        adpage.Fill(myPages);

                        if (myPages.Rows.Count > 0)
                        {      
                            Pages_Team_ID = myPages.Rows[0]["Team_ID"].ToString();
                            User_ID = myPages.Rows[0]["User_Name"].ToString();
                            Session.Timeout = 15;
                            LabelUser_Name.Text = User_ID;
                            LabelTeam_ID.Text = Pages_Team_ID;
                            
                        }
                    }
                }
            }
        }
    }
}