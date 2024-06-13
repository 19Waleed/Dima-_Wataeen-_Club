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
    public partial class Enter_subscription : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void But_SendDataAll_Click(object sender, EventArgs e)
        {
            string selectedValue = DropDownLiStservice_type.SelectedValue;
            if (selectedValue == "0")
            {
                Timer1.Enabled = true;
                Mss_Save.Visible = true;
                Mss_Save.Text = "Please Select The Data Type ";


            }
            else if (selectedValue == "1")
                
            {
                DBCON.Club_DB();
                using (SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Table_Subscriptions WHERE Subscriptions_Eyare = @Subscriptions_Eyare AND ID_subscription= @ID_subscription", DBCON.conn))
                {
                    checkCmd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                    checkCmd.Parameters.AddWithValue("@ID_subscription", DropDownLiStservice_type.SelectedValue);

                    int count = (int)checkCmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Timer1.Enabled = true;
                        Mss_Save.Visible = true;
                        Mss_Save.Text = "The data has already been sent in the last session to the subscriptions table for the yea  " + DropYear.SelectedValue;
                        DBCON.conn.Close();
                        return;
                    }
                    else
                    {
                        DBCON.Club_DB();
                        using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                        {
                            cmdd.CommandType = CommandType.StoredProcedure;
                            cmdd.Parameters.AddWithValue("@Action", "SubscriptionsData_Team");
                            cmdd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                            using (SqlDataAdapter sda = new SqlDataAdapter())
                            {
                                cmdd.Connection = DBCON.conn;
                                sda.SelectCommand = cmdd;
                                using (DataTable dt = new DataTable())
                                {
                                    sda.Fill(dt);
                                }
                            }
                        }
                        Timer1.Enabled = true;
                        Mss_Save.Visible = true;
                        Mss_Save.Text = "Data has been successfully sent to subscriptions for the year  " + DropYear.SelectedValue;
                    }
                }

            }
            else if (selectedValue == "2")
            {

            DBCON.Club_DB();

                using (SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Table_Subscriptions WHERE Subscriptions_Eyare = @Subscriptions_Eyare AND ID_subscription= @ID_subscription", DBCON.conn))
                {
                    checkCmd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                    checkCmd.Parameters.AddWithValue("@ID_subscription", DropDownLiStservice_type.SelectedValue);

                    int count = (int)checkCmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Timer1.Enabled = true;
                        Mss_Save.Visible = true;
                        Mss_Save.Text = "The data has already been sent in the last session to the subscriptions table for the yea  " + DropYear.SelectedValue;
                        DBCON.conn.Close();
                        return;
                    }
                    else
                    {
                        DBCON.Club_DB();
                        using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                        {
                            cmdd.CommandType = CommandType.StoredProcedure;
                            cmdd.Parameters.AddWithValue("@Action", "SubscriptionsData");
                            cmdd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                            using (SqlDataAdapter sda = new SqlDataAdapter())
                            {
                                cmdd.Connection = DBCON.conn;
                                sda.SelectCommand = cmdd;
                                using (DataTable dt = new DataTable())
                                {
                                    sda.Fill(dt);
                                }
                            }
                        }
                        Timer1.Enabled = true;
                        Mss_Save.Visible = true;
                        Mss_Save.Text = "Data has been successfully sent to subscriptions for the year  " + DropYear.SelectedValue;
                    }
                }
            }
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            
                if (Mss_Save.Visible)
                {
                    Mss_Save.Visible = false;
                LabelCount.Visible = false;
            }

                Timer1.Enabled = false;
            
        }
        protected void ButcountSubscriptions_Click(object sender, EventArgs e)
        {

            string selectedValue = DropDownLiStservice_type.SelectedValue;
            if (selectedValue == "0")
            {
                Timer1.Enabled = true;
                Mss_Save.Visible = true;
                LabelCount.Text = "Please Select The Data Type ";


            }
            else if (selectedValue == "1")
            {

                DBCON.Club_DB();

                using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                {
                    cmdd.Parameters.AddWithValue("@Action", "countSubscriptionsData_Team");
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                        cmdd.Connection = DBCON.conn;
                        sda.SelectCommand = cmdd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            LabelCount.Text = Convert.ToString(dt.Rows[0]["Mycount"]);
                        }
                    }
                }

            }
            else if (selectedValue == "2")
            {

                DBCON.Club_DB();

                using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                {
                    cmdd.Parameters.AddWithValue("@Action", "countSubscriptions");
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                        cmdd.Connection = DBCON.conn;
                        sda.SelectCommand = cmdd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            LabelCount.Text = Convert.ToString(dt.Rows[0]["Mycount"]);
                        }
                    }
                }



            }
        }

        protected void TextBoxMemberIdOrTeamId_TextChanged(object sender, EventArgs e)
        {



            string selectedValue = DropDownLiStservice_type.SelectedValue;

            if (selectedValue == "0")
            {
                Timer1.Enabled = true;
                Mss_Save.Visible = true;
                Mss_Save.Text = "Please Select The Data Type ";
                TextBoxMember_ID.Text = "";


            }
            else if (selectedValue == "1")
            {
                DBCON.Club_DB();


                using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                {
                    cmdd.Parameters.AddWithValue("@Action", "SELEC_AddTeam");
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                        cmdd.Parameters.AddWithValue("@Team_ID", TextBoxMember_ID.Text);
                        cmdd.Connection = DBCON.conn;
                        sda.SelectCommand = cmdd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);

                            if (dt.Rows.Count > 0)
                            {
                                LabelMember_ID.Text = dt.Rows[0]["Team_NAME"].ToString();
                            }
                            else
                            {
                                LabelMember_ID.Text = "There is no data. Check the ID";
                            }
                        }
                    }
                }


            }
            else if (selectedValue == "2")
            {
                DBCON.Club_DB();

                using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                {
                    cmdd.Parameters.AddWithValue("@Action", "SELEC_AddPlayer");
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                        cmdd.Parameters.AddWithValue("@Member_ID", TextBoxMember_ID.Text);
                        cmdd.Connection = DBCON.conn;
                        sda.SelectCommand = cmdd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            
                            if (dt.Rows.Count > 0)
                            {
                                LabelMember_ID.Text = dt.Rows[0]["Full_Name"].ToString();
                            }
                            else
                            {
                                LabelMember_ID.Text = "There is no data. Check the ID";
                            }

                        }
                    }
                }
            }
        }

        protected void ButtSendSelectedData_Click(object sender, EventArgs e)
        {
            string selectedValue = DropDownLiStservice_type.SelectedValue;
            if (selectedValue == "0")
            {
                Timer1.Enabled = true;
                Mss_Save.Visible = true;
                Mss_Save.Text = "Please Select The Data Type ";


            }
            else if (selectedValue == "1")
            {
                DBCON.Club_DB();

                using (SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Table_Subscriptions WHERE Subscriptions_Eyare = @Subscriptions_Eyare AND MemberIdOrTeamId=@MemberIdOrTeamId", DBCON.conn))
                {
                    checkCmd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                    checkCmd.Parameters.AddWithValue("@MemberIdOrTeamId", TextBoxMember_ID.Text);
                    int count = (int)checkCmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Timer1.Enabled = true;
                        Mss_Save.Visible = true;
                        Mss_Save.Text = LabelMember_ID.Text + "The data has already been sent in the last session to the subscriptions table for the year  " + DropYear.SelectedValue;
                        LabelMember_ID.Text = "";
                        TextBoxMember_ID.Text = "";
                        DBCON.conn.Close();
                        return;
                    }
                    else
                    {
                        DBCON.Club_DB();
                        using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                        {
                            cmdd.CommandType = CommandType.StoredProcedure;
                            cmdd.Parameters.AddWithValue("@Action", "SubscriptionsData_Team_ID");
                            cmdd.Parameters.AddWithValue("Team_ID", TextBoxMember_ID.Text);
                            cmdd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                            using (SqlDataAdapter sda = new SqlDataAdapter())
                            {
                                cmdd.Connection = DBCON.conn;
                                sda.SelectCommand = cmdd;
                                using (DataTable dt = new DataTable())
                                {
                                    sda.Fill(dt);
                                }
                            }
                            Timer1.Enabled = true;
                            Mss_Save.Visible = true;
                            Mss_Save.Text = LabelMember_ID.Text + " Data has been successfully sent to subscriptions for the year  " + DropYear.SelectedValue;
                            LabelMember_ID.Text = "";
                            TextBoxMember_ID.Text = "";
                        }
                    }
                }
            }
            else if (selectedValue == "2")
            {
                DBCON.Club_DB();

                using (SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Table_Subscriptions WHERE Subscriptions_Eyare = @Subscriptions_Eyare AND MemberIdOrTeamId=@MemberIdOrTeamId", DBCON.conn))
                {
                    checkCmd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                    checkCmd.Parameters.AddWithValue("@MemberIdOrTeamId", TextBoxMember_ID.Text);
                    int count = (int)checkCmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Timer1.Enabled = true;
                        Mss_Save.Visible = true;
                        Mss_Save.Text = LabelMember_ID.Text + "The data has already been sent in the last session to the subscriptions table for the year  " + DropYear.SelectedValue;
                        LabelMember_ID.Text = "";
                        TextBoxMember_ID.Text = "";
                        DBCON.conn.Close();
                        return;
                    }
                    else
                    {
                        DBCON.Club_DB();
                        using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
                        {
                            cmdd.CommandType = CommandType.StoredProcedure;
                            cmdd.Parameters.AddWithValue("@Action", "SubscriptionsData_Member_ID");
                            cmdd.Parameters.AddWithValue("@MemberIdOrTeamId", TextBoxMember_ID.Text);
                            cmdd.Parameters.AddWithValue("@Subscriptions_Eyare", DropYear.SelectedValue);
                            using (SqlDataAdapter sda = new SqlDataAdapter())
                            {
                                cmdd.Connection = DBCON.conn;
                                sda.SelectCommand = cmdd;
                                using (DataTable dt = new DataTable())
                                {
                                    sda.Fill(dt);
                                }
                            }
                            Timer1.Enabled = true;
                            Mss_Save.Visible = true;
                            Mss_Save.Text = LabelMember_ID.Text + " Data has been successfully sent to subscriptions for the year  " + DropYear.SelectedValue;
                            LabelMember_ID.Text = "";
                            TextBoxMember_ID.Text = "";
                        }
                    }
                }
            }
        }

        protected void DropDownLiStservice_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBoxMember_ID.Text = "";
            LabelMember_ID.Text = "";
        }
    }
}
   