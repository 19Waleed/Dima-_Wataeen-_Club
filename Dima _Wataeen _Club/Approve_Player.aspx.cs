
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

    public partial class Approve_Player : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        string Pages_Team_ID = "";
        string User_ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Select_Pages();

            if (!IsPostBack)
            {
                DBCON.Club_DB();
                Select_Approve();
                Select_Pages();

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
        public void Select_Approve()
        {

            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_Master_Member"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECw_Master_MembeByApp");
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
                            GridViewSelect_Approve.Visible = true;
                            GridViewSelect_Approve.DataSource = dt;
                            GridViewSelect_Approve.DataBind();
                        }
                        else
                        {
                        }
                    }
                }

            }


        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Mss_Save.Visible)
            {
                Mss_Save.Visible = false;
            }

            Timer1.Enabled = false;
        }
        protected void Timer2_Tick(object sender, EventArgs e)
        {
            if (Mss_Notes.Visible)
            {
                Mss_Notes.Text = "";

                Timer2.Enabled = false;
            }

        }
        protected void Timer3_Tick(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);


        }

        protected void But_Save_Click(object sender, EventArgs e)
        {
                DBCON.Club_DB();
                using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "Approve_Master_Member");
                    cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                    cmd.Parameters.AddWithValue("@ApproveBy", LabelUser_Name.Text);
                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    DBCON.conn.Close();
                    Mss_Save.Visible = true;
                    Mss_Save.Text = "The request was successfully approved";
                    Timer1.Enabled = true;
                    Timer3.Enabled = true;
                }
            
        }

        protected void GridViewSelect_Approve_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBCON.Club_DB();
            LabelID.Text = GridViewSelect_Approve.Rows[GridViewSelect_Approve.SelectedIndex].Cells[0].Text;

            using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELECw_Master_MembeByApp1");
                cmd.Parameters.AddWithValue("@ID", LabelID.Text);
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
                            DataRow row = dt.Rows[0];
                            string receiptPath = row["PicUrl"].ToString();
                            Label18.Text = row["PicUrl"].ToString();
                            if (!string.IsNullOrEmpty(receiptPath))
                            {
                                Image1.ImageUrl = receiptPath;

                            }
                        }
                    }

                    Image1.Visible = true;
                    But_Return.Visible = true;
                    But_Save.Visible = true;
                    Label11.Visible = true;
                    TextBoxNotes.Visible = true;
                    Mss_update.Text = "* Approval or return";
                   
                }

            }
        }

        protected void But_Return_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBoxNotes.Text))
            {
                Mss_Notes.Text = "Enter return note";
                Timer2.Enabled = true;
            }

            else
            {

                DBCON.Club_DB();

                using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "Return_Master_Member");
                    cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                    cmd.Parameters.AddWithValue("@Note", TextBoxNotes.Text);
                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    DBCON.conn.Close();
                    Mss_Save.Visible = true;
                    Mss_Save.Text = "The order was returned with a note";
                    Timer1.Enabled = true;
                    Timer3.Enabled = true;
                }
            }
        }

    }

}