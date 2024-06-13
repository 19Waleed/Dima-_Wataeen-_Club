     
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

    public partial class UserAdd : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {


            DBCON.Club_DB();
            if (!IsPostBack)
            {
                DBCON.Club_DB();
                Notchosen();

            }

        }

        private void Notchosen()
        {

            GridViewAddnewuser.Visible = false;
            LabelMemberID.Visible = false;
            GridViewEdit_user.Visible = false;
            Label2.Visible = false;
            TextBoxUserName.Visible = false;
            Label3.Visible = false;
            TextBoxUser_Pass.Visible = false;
            CheckBoxInActive.Visible = false;
            CheckBoxLock_Account.Visible = false;
            But_SaveReset.Visible = false;
            But_Save.Visible = false;
            TextBoxUser_PassConfirm.Visible = false;
            Label3.Visible = false;
            Label13.Visible = false;
            ID__id.Text = "";
            LabelMemberID.Text = "";
            CheckBoxLock_Account.Checked = false;
            CheckBoxInActive.Checked = false;
            TextBoxUserName.Text = "";
            TextBoxUser_Pass.Text = "";
            LabelMSS_Save.Text = "";
            TextBoxUser_PassConfirm.Text = "";
            TextBoxSearch.Text = "";

        }
        public void Edit_user()
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
                            GridViewEdit_user.Visible = true;
                            GridViewEdit_user.DataSource = dt;
                            GridViewEdit_user.DataBind();                    
                        }
                        else
                        {
                            GridViewEdit_user.Visible = false;
                            LabelMSS.Visible = true;
                            LabelMSS.Text = "No user tried again";

                        }
                    }
                }
            }


        }
        public void Addnewuser()
        {
            DBCON.Club_DB();


            using (SqlCommand cmdd = new SqlCommand("sp_User_Profile"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECMember");
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
                            GridViewAddnewuser.Visible = true;
                            GridViewAddnewuser.DataSource = dt;
                            GridViewAddnewuser.DataBind();
                            LabelMSS.Text = "";
                            LabelMSS.Visible = false;
                        }
                        else
                        {
                            GridViewAddnewuser.Visible = false;
                            LabelMSS.Visible = true;
                            LabelMSS.Text = "No user tried again";
                            Timer2.Enabled = true;


                        }
                    }


                }
            }
        }
        protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
        {
            LabelMSS_Save.Text = "";
            DBCON.Club_DB();
            string selectedValue1 = DropDownLiStservice_type.SelectedValue;
            if (selectedValue1 == "1")
            {
                Addnewuser();
                GridViewEdit_user.Visible = false;


            }
            else if (selectedValue1 == "2")
            {
                Edit_user();
                GridViewAddnewuser.Visible = false;
            }
            else if (selectedValue1 == "3")
            {
                Edit_user();
                GridViewAddnewuser.Visible = false;
            }
            else
            {
                Notchosen();
                LabelMSS.Text = "Select Service Type";
                Timer2.Enabled = true;

            }

        }
        protected void DropDownLiStservice_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownLiStservice_type.SelectedValue;

            if (selectedValue == "0")
            {
                Notchosen();


            }
            else if (selectedValue == "1")
            {

                ID__id.Text = "";
                LabelMemberID.Text = "";
                CheckBoxLock_Account.Checked = false;
                CheckBoxInActive.Checked = false;
                TextBoxUserName.Text = "";
                TextBoxUser_Pass.Text = "";
                LabelMSS_Save.Text = "";
                TextBoxUser_PassConfirm.Text = "";
                TextBoxSearch.Text = "";
                TextBoxSearch.Text = "";
                But_SaveReset.Visible = false;
                GridViewEdit_user.Visible = false;
                Label3.Visible = false;
                Label13.Visible = false;
                But_Save.Visible = false;

            }
            else if (selectedValue == "2")
            {


                ID__id.Text = "";
                LabelMemberID.Text = "";
                CheckBoxLock_Account.Checked = false;
                CheckBoxInActive.Checked = false;
                TextBoxUserName.Text = "";
                TextBoxUser_Pass.Text = "";
                LabelMSS_Save.Text = "";
                TextBoxUser_PassConfirm.Text = "";
                TextBoxSearch.Text = "";

                GridViewAddnewuser.Visible = false;
                TextBoxSearch.Text = "";
                LabelMemberID.Visible = true;
                Label2.Visible = true;
                TextBoxUserName.Visible = true;
                LabelMemberID.Visible = true;
                But_SaveReset.Visible = false;
                CheckBoxInActive.Visible = true;
                CheckBoxLock_Account.Visible = true;
                LabelMSS_Save.Text = "";
                TextBoxUser_Pass.Visible = false;
                Label3.Visible = false;
                Label13.Visible = false;
                But_Save.Visible = false;
                TextBoxUser_PassConfirm.Visible = false;
                TextBoxUserName.Enabled = false;
            }
            else if (selectedValue == "3")
            {
                TextBoxUser_Pass.Enabled = true;
                TextBoxUserName.Enabled = false;
                ID__id.Text = "";
                LabelMemberID.Text = "";
                CheckBoxLock_Account.Visible = false;
                CheckBoxInActive.Visible = false;
                TextBoxUserName.Text = "";
                TextBoxUser_Pass.Text = "";
                LabelMSS_Save.Text = "";
                TextBoxUser_PassConfirm.Text = "";
                TextBoxSearch.Text = "";
                GridViewAddnewuser.Visible = false;
                TextBoxSearch.Text = "";
                But_SaveReset.Visible = true;
                LabelMemberID.Visible = true;
                Label13.Visible = true;
                TextBoxUser_PassConfirm.Visible = true;
                Label3.Visible = true;
                TextBoxUser_Pass.Visible = true;
                But_Save.Text = "Save the entered password";
                LabelMSS_Save.Text = "";
                But_Save.Visible = false;
            }
        }
        protected void GridViewEdit_user_SelectedIndexChanged(object sender, EventArgs e)
        {
            But_Save.Visible = true;
            DBCON.Club_DB();
            ID__id.Text = GridViewEdit_user.Rows[GridViewEdit_user.SelectedIndex].Cells[0].Text;
            LabelMemberID.Text = GridViewEdit_user.Rows[GridViewEdit_user.SelectedIndex].Cells[1].Text;

            using (SqlCommand cmd = new SqlCommand("sp_User_Profile"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELECTUserRetern");
                cmd.Parameters.AddWithValue("@ID", ID__id.Text);
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
                            ID__id.Text = dt.Rows[0]["ID"].ToString();

                            LabelMemberID.Text = dt.Rows[0]["Member_ID"].ToString();

                            string lockAccountValue = dt.Rows[0]["Lock_Account"].ToString();

                            bool lockAccountStatus = bool.Parse(lockAccountValue);

                            CheckBoxLock_Account.Checked = lockAccountStatus;
                            string InActiveValue = dt.Rows[0]["InActive"].ToString();
                            bool lInActiveStatus = bool.Parse(InActiveValue);
                            CheckBoxInActive.Checked = lInActiveStatus;
                            TextBoxUserName.Text = dt.Rows[0]["User_Name"].ToString();
                            string selectedValue1 = DropDownLiStservice_type.SelectedValue;
                            if (selectedValue1 == "3")
                                TextBoxUser_Pass.Text = dt.Rows[0]["User_Pass"].ToString();
                            else
                            {

                            }

                        }
                    }

                }
            }
        }
        protected void GridViewAddnewuser_SelectedIndexChanged(object sender, EventArgs e)
        {

            DBCON.Club_DB();
            LabelMemberID.Text = GridViewAddnewuser.Rows[GridViewAddnewuser.SelectedIndex].Cells[0].Text;

            using (SqlCommand cmd = new SqlCommand("sp_User_Profile"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELECMemberSELERetern");
                cmd.Parameters.AddWithValue("@ID", LabelMemberID.Text);
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
                            LabelMemberID.Text = dt.Rows[0]["Member_ID"].ToString();
                            TextBoxUserName.Text = dt.Rows[0]["Member_ID"].ToString();
                            TextBoxUser_Pass.Text = dt.Rows[0]["Member_ID"].ToString();
                        }
                    }

                    But_Save.Visible = true;
                    TextBoxUser_Pass.Visible = true;
                    Label3.Visible = true;
                    LabelMSS.Visible = true;
                    LabelMemberID.Visible = true;
                    CheckBoxInActive.Visible = true;
                    CheckBoxLock_Account.Visible = true;
                    TextBoxUserName.Visible = true;
                    Label2.Visible = true;
                    LabelMSS.Text = "**The new user must use the username in the password after that to reset the password";
                }
            }
        }

        protected void But_Save_Click(object sender, EventArgs e)
        {
            string selectedValue = DropDownLiStservice_type.SelectedValue;

            //______________ NO Select Service Typer____/

            if (selectedValue == "0")
            {
                LabelMSS_Save.Text = "Select the save type (add new, edit, or reset)";
                Timer2.Enabled = true;

            }
            //______________Add a new user_____________/
            else if (selectedValue == "1")
            {
                string User_ID_is = TextBoxUserName.Text;
                if (TextBoxUserName.Text == "")
                {
                    LabelMSS.Text = "User Name is null";
                    Timer2.Enabled = true;

                }
                else
                {
                    DBCON.Club_DB();

                    using (SqlCommand cmdd = new SqlCommand("sp_User_Profile"))
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                        cmdd.Parameters.AddWithValue("@Action", "insertUser_NewUser");
                        cmdd.Parameters.AddWithValue("@Member_ID", LabelMemberID.Text);
                        cmdd.Parameters.AddWithValue("@User_Name", TextBoxUserName.Text);
                        cmdd.Parameters.AddWithValue("@Lock_Account", CheckBoxLock_Account.Checked ? 1 : 0);
                        cmdd.Parameters.AddWithValue("@InActive", CheckBoxInActive.Checked ? 1 : 0);
                        LabelMSS_Save.Text = "A new user has been added successfully User_ID is " + User_ID_is;
                        cmdd.Connection = DBCON.conn;
                        cmdd.ExecuteNonQuery();
                        Timer3.Enabled = true;
                        Timer1.Enabled = true;
                    }
                    ID__id.Text = "";
                    LabelMemberID.Text = "";
                    CheckBoxLock_Account.Checked = false;
                    CheckBoxInActive.Checked = false;
                    TextBoxUserName.Text = "";
                    TextBoxUser_Pass.Text = "";
                    TextBoxUser_PassConfirm.Text = "";
                    TextBoxSearch.Text = "";
                    GridViewAddnewuser.Visible = false;
                }
            }
            //______________Edit user Profile__________/
            else if (selectedValue == "2")
            {
                string Edit_User_ID_Of = TextBoxUserName.Text;

                DBCON.Club_DB();
                using (SqlCommand cmdd = new SqlCommand("sp_User_Profile"))
                {
                    cmdd.CommandType = CommandType.StoredProcedure;
                    cmdd.Parameters.AddWithValue("@Action", "updateUser_User_Profile");
                    cmdd.Parameters.AddWithValue("@Member_ID", LabelMemberID.Text);
                    cmdd.Parameters.AddWithValue("@User_Name", TextBoxUserName.Text);
                    cmdd.Parameters.AddWithValue("@Lock_Account", CheckBoxLock_Account.Checked ? 1 : 0);
                    cmdd.Parameters.AddWithValue("@InActive", CheckBoxInActive.Checked ? 1 : 0);
                    LabelMSS_Save.Text = " Added successfully Edit User ID Of " + Edit_User_ID_Of;

                    cmdd.Connection = DBCON.conn;
                    cmdd.ExecuteNonQuery();
                    Timer3.Enabled = true;
                    Timer1.Enabled = true;
                }
                ID__id.Text = "";
                LabelMemberID.Text = "";
                CheckBoxLock_Account.Checked = false;
                CheckBoxInActive.Checked = false;
                TextBoxUserName.Text = "";
                TextBoxUser_Pass.Text = "";
                TextBoxUser_PassConfirm.Text = "";
                TextBoxSearch.Text = "";
                GridViewAddnewuser.Visible = false;
            }
            //______________Password Reset_____________/
            else if (selectedValue == "3")
            {
                string Password_Reset_ID_Of = TextBoxUserName.Text;

                if (TextBoxUser_PassConfirm.Text != TextBoxUser_Pass.Text)
                {
                    LabelMSS.Text = "Passwords do not match. Please try again";
                    TextBoxUser_PassConfirm.Text = "";
                    Timer2.Enabled = true;

                }
                else if (TextBoxUser_PassConfirm.Text == TextBoxUser_Pass.Text)
                {
                    DBCON.Club_DB();
                    using (SqlCommand cmdd = new SqlCommand("sp_User_Profile"))
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                        cmdd.Parameters.AddWithValue("@Action", "updateUser_User_Pass");
                        cmdd.Parameters.AddWithValue("@Member_ID", LabelMemberID.Text);
                        cmdd.Parameters.AddWithValue("@User_Pass", TextBoxUser_PassConfirm.Text);
                        cmdd.Connection = DBCON.conn;
                        cmdd.ExecuteNonQuery();
                    }

                    Timer3.Enabled = true;
                    Timer1.Enabled = true;
                    LabelMSS_Save.Text = " successfully Password Reset ID Of " + Password_Reset_ID_Of;
                }
            }
        }


        protected void But_SaveReset_Click(object sender, EventArgs e)
        {
            string selectedValue = DropDownLiStservice_type.SelectedValue;
            if (selectedValue == "3")
            {
                DBCON.Club_DB();
                using (SqlCommand cmdd = new SqlCommand("sp_User_Profile"))
                {
                    cmdd.CommandType = CommandType.StoredProcedure;
                    cmdd.Parameters.AddWithValue("@Action", "updateUser_User_Pass");
                    cmdd.Parameters.AddWithValue("@Member_ID", LabelMemberID.Text);
                    cmdd.Parameters.AddWithValue("@User_Pass", LabelMemberID.Text);
                    LabelMSS_Save.Text = " successfully Password Reset ";
                    cmdd.Connection = DBCON.conn;
                    cmdd.ExecuteNonQuery();

                }
                Timer3.Enabled = true;
                Timer1.Enabled = true;

            }


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


    }
} 