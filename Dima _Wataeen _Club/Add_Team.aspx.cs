using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

namespace Dima__Wataeen__Club
{
    public partial class Add_Team : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        string Pages_Team_ID = "";
        string User_ID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateTeamID();
            DBCON.Club_DB();
            MSS_Team_NAME.Text = "";
            MSS_Joining_Date.Text = "";
         
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
        protected void ButSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Team_NAME.Text))
            {
                MSS_Team_NAME.Text = "Enter the team name";
            }
            else if (string.IsNullOrWhiteSpace(Joining_Date.Text))
            {
                MSS_Joining_Date.Text = " Select the Joining Date";
            }
            else
            {
                DBCON.Club_DB();
                string teamID = GenerateTeamID();
                using (SqlCommand cmd = new SqlCommand("SP_New_Team"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action","insertTeam");
                    cmd.Parameters.AddWithValue("@Team_ID", teamID);
                    cmd.Parameters.AddWithValue("@Team_NAME", Team_NAME.Text);
                    DateTime joiningDate = DateTime.Parse(Joining_Date.Text);
                    string formattedJoiningDate = joiningDate.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Joining_Date", formattedJoiningDate);
                    cmd.Parameters.AddWithValue("@Note", Note.Text);
                    cmd.Parameters.AddWithValue("@WhoInsert", LabelUser_Name.Text); 


                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    Team_ID.Text = "ID Auto" + "         " + GenerateTeamID();
                    DBCON.conn.Close();
                    MSS.Visible = true;
                    MSS.Text = "Saved successfully";
                    Timer1.Enabled = true;
                }

            }
        }
        public string GenerateTeamID()
        {
            DBCON.Club_DB();
            string teamID = "";
            using (SqlCommand cmd = new SqlCommand("SP_New_Team"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELECTeamsTop");
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = DBCON.conn;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            int highestID = Convert.ToInt32(dt.Rows[0]["ID"]) + 1;
                            teamID = GenerateTeamIDFromNumber(highestID);
                        }
                        else
                        {
                            teamID = GenerateTeamIDFromNumber(1);
                        }
                    }
                }
            }

            return teamID;
        }
        public string GenerateTeamIDFromNumber(int number)
        {
            string year = DateTime.Now.ToString("yy");
            string idPart = number.ToString("D5");
            return year + "T" + idPart;
        }
        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            if (MSS.Visible)
            {
                MSS.Visible = false;
                Team_ID.Text = "ID Auto";
                Team_NAME.Text = "";
                Joining_Date.Text = "";
                Note.Text = "";
                LastTeam();
            }
            Timer1.Enabled = false;
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            Joining_Date.Text = Calendar1.SelectedDate.ToShortDateString();


        }
        protected void Team_NAME_TextChanged(object sender, EventArgs e)
        {
            MSS_Team_NAME.BackColor = System.Drawing.Color.White;

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (SearchResults.Visible)
            {

                SearchResults.Visible = false;
            }
            else
            {

             LastTeam();
            }

        }
        public void LastTeam()
        {
            DBCON.Club_DB();


            using (SqlCommand cmdd = new SqlCommand("SP_New_Team"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECTeamsTop");
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            if (Calendar1.Visible)
            {

                Calendar1.Visible = false;

            }
            else
            {

                Calendar1.Visible = true;
            }
        }

    }
}