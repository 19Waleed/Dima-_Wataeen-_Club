
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

    public partial class PagePermissions : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCON.Club_DB();
            if (!IsPostBack)
            {
                DBCON.Club_DB();
            }
        }

        public void User_Profile()
        {
            DBCON.Club_DB();


            using (SqlCommand cmdd = new SqlCommand("sp_sign_in"))
            {
                cmdd.Parameters.AddWithValue("@Action", "UserPagesView");
                cmdd.Parameters.AddWithValue("@User_Name", LabelMemberID.Text);
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
                            GridViewUser_Profile.Visible = true;
                            GridViewUser_Profile.DataSource = dt;
                            GridViewUser_Profile.DataBind();
                            LabelMSS.Text = "";
                            LabelMSS.Visible = false;
                        }
                        else
                        {
                            GridViewUser_Profile.Visible = false;
                            LabelMSS.Visible = true;
                            LabelMSS.Text = "No user tried again";
                            Timer2.Enabled = true;
                        }
                    }
                }
            }
        }


        public void PagePermissions_user()
        {
            DBCON.Club_DB();


            using (SqlCommand cmdd = new SqlCommand("sp_User_Profile"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SearchUser");
                cmdd.Parameters.AddWithValue("@Member_ID", TextBoxSearch.Text);
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
                            GridViewPagePermissions.Visible = true;
                            GridViewPagePermissions.DataSource = dt;
                            GridViewPagePermissions.DataBind();
                        }
                        else
                        {
                            GridViewPagePermissions.Visible = false;
                            LabelMSS.Visible = true;
                            LabelMSS.Text = "No user tried again";

                        }
                    }
                }
            }


        }

        protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
        {

            PagePermissions_user();
            
        }
        
        protected void But_Save_Click(object sender, EventArgs e)
        {
       
                    DBCON.Club_DB();

                    using (SqlCommand cmdd = new SqlCommand("sp_sign_in"))
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                        cmdd.Parameters.AddWithValue("@Action","inserAccecsPages");
                       //cmdd.Parameters.AddWithValue("@ID",ID.Text);
                        cmdd.Parameters.AddWithValue("@User_Name", LabelMemberID.Text);
                       cmdd.Parameters.AddWithValue("@Page_ID", DropDownSelect_page.SelectedValue);
                       LabelMSS_Save.Text = "Added successfully User_ID is " + LabelMemberID.Text;
                        cmdd.Connection = DBCON.conn;
                        cmdd.ExecuteNonQuery();
                        Timer3.Enabled = true;
                        Timer1.Enabled = true;
                    }
                    Label_USERID.Text = "";
                    LabelMemberID.Text = "";
                    TextBoxSearch.Text = "";
                    GridViewUser_Profile.Visible = false;
                
           
        }

        protected void But_SaveReset_Click(object sender, EventArgs e)
        {
            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("sp_sign_in"))
            {
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.Parameters.AddWithValue("@Action","DeleteUserPage");
                cmdd.Parameters.AddWithValue("@User_Name", LabelMemberID.Text);
                cmdd.Parameters.AddWithValue("@Page_ID", LabelPage_ID.Text);
                cmdd.Connection = DBCON.conn;
                cmdd.ExecuteNonQuery();
                Timer3.Enabled = true;
                Timer1.Enabled = true;
                LabelMSS_Save.Text = "Delete successfully User_ID is " + LabelMemberID.Text;
            }
            Label_USERID.Text = "";
            LabelMemberID.Text = "";
            TextBoxSearch.Text = "";
            GridViewUser_Profile.Visible = false;
            Timer3.Enabled = true;
             Timer1.Enabled = true;
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (LabelMSS_Save.Visible)
            {
                LabelMSS_Save.Text = "";
                LabelMSS_Save.Visible = false;
            }

            Timer1.Enabled = false;
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {

            if (LabelMSS.Visible)
            {
                LabelMSS.Text = "";

                Timer2.Enabled = false;
            }
        }
        protected void Timer3_Tick(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);


        }

        protected void GridViewPagePermissions_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBCON.Club_DB();
            GITG_DropDownSelectpage();
            Label_USERID.Text = GridViewPagePermissions.Rows[GridViewPagePermissions.SelectedIndex].Cells[0].Text;
            LabelMemberID.Text = GridViewPagePermissions.Rows[GridViewPagePermissions.SelectedIndex].Cells[1].Text;

            using (SqlCommand cmd = new SqlCommand("sp_User_Profile"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELECTUserRetern");
                cmd.Parameters.AddWithValue("@ID", Label_USERID.Text);
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
                            Label_USERID.Text = dt.Rows[0]["ID"].ToString();
                            LabelMemberID.Text = dt.Rows[0]["Member_ID"].ToString();

                        }
                    }
                    User_Profile();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            User_Profile();
            if (GridViewUser_Profile.Visible)
            {

                GridViewUser_Profile.Visible = false;
            }
            else
            {

                PagePermissions_user();
            }
        }

        private void GITG_DropDownSelectpage()
        {

            using (SqlCommand cmdd = new SqlCommand("sp_sign_in"))
            {
                cmdd.Parameters.AddWithValue("@Action", "Selectpage");

                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmdd.CommandType = CommandType.StoredProcedure;
                    cmdd.Connection = DBCON.conn;
                    sda.SelectCommand = cmdd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DropDownSelect_page.Enabled = true;
                        DropDownSelect_page.DataValueField = "MenuId";
                        DropDownSelect_page.DataTextField = "Title";
                        DropDownSelect_page.Items.Insert(0, new ListItem("Select Page", "0"));

                        DropDownSelect_page.DataSource = dt;
                        DropDownSelect_page.DataBind();
                    }
                }
            }
        }

        protected void GridViewUser_Profile_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBCON.Club_DB();
            Labe_ID.Text = GridViewUser_Profile.Rows[GridViewUser_Profile.SelectedIndex].Cells[2].Text;
            LabelTitle.Text = GridViewUser_Profile.Rows[GridViewUser_Profile.SelectedIndex].Cells[1].Text;
            LabelPage_ID.Text = GridViewUser_Profile.Rows[GridViewUser_Profile.SelectedIndex].Cells[0].Text;
        }
    }
    
}








