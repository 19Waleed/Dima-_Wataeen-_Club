using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.IO;

namespace Dima__Wataeen__Club
{
    public partial class View_Member : System.Web.UI.Page
    {

        Club_DBClass DBCON = new Club_DBClass();
        string Pages_Team_ID = "";
        string User_ID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            DBCON.Club_DB();        
            Select_Return();
            Select_Pages();

            if (!IsPostBack)
            {
                DBCON.Club_DB();
                Select_Return();
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


        public void Select_Return()
        {

            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_Master_Member"))
            {
                cmdd.Parameters.AddWithValue("@Action", "Master_MembeByApp2");
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
                            GridViewSelect_Return.Visible = true;
                            GridViewSelect_Return.DataSource = dt;
                            GridViewSelect_Return.DataBind();
                        }
                        else
                        {
                        }
                    }
                }

            }
        }

        protected void GridViewSelect_Return_SelectedIndexChanged1(object sender, EventArgs e)
        {

            DBCON.Club_DB();
            LabelID.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[0].Text;
            LabelMember_ID.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[1].Text;
            TextBoxFull_Name.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[2].Text;
            TextBoxPhone.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[3].Text;
            DropDownTeam_ID.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[4].Text;
            MemberType.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[5].Text;
            TextBoxsubscription.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[6].Text;
            DropDownMarital_Status.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[7].Text;
            TextBoxAddress.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[8].Text;
            TextBoxCard_ID_ON.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[9].Text;
            LabelJoiningDate.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[10].Text;
            LabelDateBirth.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[11].Text;
            LabelSubscription.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[12].Text;

            using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
            {
                cmd.Parameters.AddWithValue("@Action", "Master_MembeByApp3");
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
                            Label18.Text= row["PicUrl"].ToString();
                            if (!string.IsNullOrEmpty(receiptPath))
                            {
                                Image1.ImageUrl = receiptPath;

                                Image1.Visible = true;
                            }
                        }
                    }
                }
            }



            LabelMember_ID.Visible = true;
            TextBoxFull_Name.Visible = true;
            TextBoxPhone.Visible = true;
            DropDownTeam_ID.Visible = true;
            MemberType.Visible = true;
            DropDownMarital_Status.Visible = true;
            TextBoxAddress.Visible = true;
            TextBoxCard_ID_ON.Visible = true;
            LabelJoiningDate.Visible = true;
            LabelDateBirth.Visible = true;
            LabelSubscription.Visible = true;
            Label_Name.Visible = true;
            Label8.Visible = true;
            Label6.Visible = true;
            Label10.Visible = true;
            Label7.Visible = true;
            Label4.Visible = true;
            Label12.Visible = true;
            Label11.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            LabelIDSubscription.Visible = true;
            TextBoxsubscription.Visible = true;
            ID__id.Visible = true;
        }
        protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
        {
            Select_Return();
        }
    }

}







