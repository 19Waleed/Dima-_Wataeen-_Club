using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;

namespace Dima__Wataeen__Club
{
    public partial class Site_Club : System.Web.UI.MasterPage
    {
        Club_DBClass DBCON = new Club_DBClass();

        string Pages_User_Name = "";
        string Pages_Team_ID = "";
        string Pages_Team_Name = "";
        string User_ID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            DBCON.Club_DB();
            if (!this.IsPostBack)
            {
                Select_Pages();
                if (!string.IsNullOrEmpty(User_ID))
                {
                    DataTable dt = this.GetData(User_ID, 0);
                    PopulateMenu(dt, 0, null);
                }
            }
        }

        private DataTable GetData(string userId, int parentMenuId)
        {
            DBCON.Club_DB();
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                DataTable dt = new DataTable();
                using (SqlCommand cmd = new SqlCommand("sp_sign_in", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "SELECTUserName");
                    cmd.Parameters.AddWithValue("@User_Name", userId);

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                    }
               
                    DataRow[] rows = dt.Select($"ParentID = {parentMenuId}");
                    DataTable filteredDt = dt.Clone(); 
                    foreach (DataRow row in rows)
                    {
                        filteredDt.ImportRow(row); 
                    }

                    return filteredDt;
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
                            LabelFull_Nmae.Text = "Welcome  " + myPages.Rows[0]["Full_Name"].ToString() + "for the Dima Wataeen Club ";
                            Pages_User_Name = myPages.Rows[0]["User_Name"].ToString();
                            Pages_Team_ID = myPages.Rows[0]["Team_ID"].ToString();
                            Pages_Team_Name = myPages.Rows[0]["Team_NAME"].ToString();
                             User_ID = myPages.Rows[0]["User_Name"].ToString();
                            Session.Timeout = 15;
                            LabelUser_Name.Text = Pages_User_Name;
                            LabelTeam_ID.Text = Pages_Team_ID;
                            LabelPagesTeamName.Text = "You are on behalf  " + Pages_Team_Name;
                        }
                    }
                }
            }
        }

        private void PopulateMenu(DataTable dt, int parentMenuId, MenuItem parentMenuItem)
        {
            DBCON.Club_DB();
            string currentPage = Path.GetFileName(Request.Url.AbsolutePath);
            foreach (DataRow row in dt.Rows)
            {
                MenuItem menuItem = new MenuItem
                {
                    Value = row["MenuId"].ToString(),
                    Text = row["Title"].ToString(),
                    NavigateUrl = row["Url"].ToString(),
                    Selected = row["Url"].ToString().EndsWith(currentPage, StringComparison.CurrentCultureIgnoreCase)
                };

                if (parentMenuId == 0)
                {
                    Menu1.Items.Add(menuItem);
                    DataTable dtChild = this.GetData(User_ID, int.Parse(menuItem.Value));
                    PopulateMenu(dtChild, int.Parse(menuItem.Value), menuItem);
                }
                else if (parentMenuItem != null)
                {
                    parentMenuItem.ChildItems.Add(menuItem);
                }
            }
        }
    }
}
