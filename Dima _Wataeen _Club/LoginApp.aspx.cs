using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
namespace Dima__Wataeen__Club
{
    public partial class LoginApp : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        string username = "";
        string pass = "";
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void butEnter_Click(object sender, EventArgs e)
        {

            DBCON.Club_DB();

            username = txtUname.Text;
            string pass = txtPass.Text;

            using (SqlCommand cmdActive = new SqlCommand("sp_sign_in"))
            {
                cmdActive.Parameters.AddWithValue("@Action", "SelectInActive");
                cmdActive.Parameters.AddWithValue("@User_Name", username);

                using (SqlDataAdapter adpActive = new SqlDataAdapter())
                {
                    cmdActive.CommandType = CommandType.StoredProcedure;
                    cmdActive.Connection = DBCON.conn;
                    adpActive.SelectCommand = cmdActive;

                    using (DataTable dtActive = new DataTable())
                    {
                        adpActive.Fill(dtActive);

                        if (dtActive.Rows.Count > 0)
                        {
                            Mss_Login0.Text = "Sorry, the user is not registered in the system";
                            Timer2.Enabled = true;
                            Timer3.Enabled = true;

                            Session["User_Pages"] = null;
                        }
                        else
                        { }
                        using (SqlCommand cmd = new SqlCommand("sp_sign_in"))
                        {
                            cmd.Parameters.AddWithValue("@Action", "SELECT");
                            cmd.Parameters.AddWithValue("@User_Name", username);
                            cmd.Parameters.AddWithValue("@User_Pass", pass);

                            using (SqlDataAdapter adp = new SqlDataAdapter())
                            {
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Connection = DBCON.conn;
                                adp.SelectCommand = cmd;

                                using (DataTable dt = new DataTable())
                                {
                                    adp.Fill(dt);

                                    if (dt.Rows.Count < 1)
                                    {
                                        Mss_Login0.Text = "Sorry, the password or username is incorrect";
                                        Timer2.Enabled = true;
                                        Timer3.Enabled = true;
                                        Session["User_Pages"] = null;
                                    }
                                    else
                                    {
                                        if (username == txtPass.Text)
                                        {
                                            Mss_Login0.Text = "Reset the password before entering the system";
                                            Timer2.Enabled = true;
                                            lblPass.Visible = false;
                                            txtPass.Visible = false;
                                            butEnter.Visible = false;
                                            lblPass.Visible = true;
                                            lblPassSecond.Visible = true;
                                            butUpdatePass.Visible = true;
                                            txtPassFirst.Visible = true;
                                            txtPassSecond.Visible = true;

                                            return;
                                        }

                                        using (SqlCommand cmdd = new SqlCommand("sp_sign_in"))
                                        {
                                            cmdd.Parameters.AddWithValue("@Action", "SELECTUser_Pages");
                                            cmdd.Parameters.AddWithValue("@User_Name", username);
                                            using (SqlDataAdapter adpage = new SqlDataAdapter())
                                            {
                                                cmdd.CommandType = CommandType.StoredProcedure;
                                                cmdd.Connection = DBCON.conn;
                                                adpage.SelectCommand = cmdd;

                                                using (DataTable myPages = new DataTable())
                                                {
                                                    adpage.Fill(myPages);
                                                    Session["Pages_User_Name"] = myPages;

                                                    Session.Timeout = 15;
                                                }

                                            }
                                        }

                                        Session["Pages_User_Name"] = txtUname.Text;

                                        Mss_Login.Text = "successfully Login";
                                        Timer4.Enabled = true;

                                    }
                                }
                            }
                        }

                    }
                }
            }
        }
        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            if (Mss_Login.Visible)
            {
                Mss_Login.Visible = false;

            }

            Timer1.Enabled = false;

        }
        protected void Timer2_Tick(object sender, EventArgs e)
        {

            if (Mss_Login0.Visible)
            {
                Mss_Login0.Visible = false;
                Mss_Login0.Text = "";
                Timer2.Enabled = false;
            } 
        }
        protected void Timer3_Tick(object sender, EventArgs e)
        {

            Response.Redirect(Request.Url.AbsoluteUri);

        }
        protected void Timer4_Tick(object sender, EventArgs e)
        {
            Response.Redirect("~/Homepage.aspx");
        }

        protected void butUpdatePass_Click(object sender, EventArgs e)
        {
            {
                DBCON.Club_DB();
                pass = txtPassSecond.Text;

                if (txtUname.Text == txtPassSecond.Text)
                {
                    Mss_Login0.Text = "Username and password are not allowed";
                    Timer2.Enabled = true;
                    return;
                }
                else
                {
                    using (SqlCommand cmdUpdatePass = new SqlCommand("sp_sign_in"))
                    {
                        cmdUpdatePass.CommandType = CommandType.StoredProcedure;
                        cmdUpdatePass.Parameters.AddWithValue("@Action", "UpdatePass");
                        if (txtPassFirst.Text == txtPassSecond.Text)
                        {
                            cmdUpdatePass.Parameters.AddWithValue("@User_Name", txtUname.Text);
                            cmdUpdatePass.Parameters.AddWithValue("@User_Pass", pass);
                            cmdUpdatePass.Connection = DBCON.conn;
                            cmdUpdatePass.ExecuteNonQuery();
                            Mss_Login.Text = "The password has been changed successfully";
                            DBCON.Club_DB();
                            lblPass.Visible = true;
                            txtPass.Visible = true;
                            butEnter.Visible = true;
                            lblPassFirst.Visible = false;
                            lblPassSecond.Visible = false;
                            butUpdatePass.Visible = false;
                            txtPassFirst.Visible = false;
                            txtPassSecond.Visible = false;
                            Timer1.Enabled = true;
                            Timer3.Enabled = true;
                        }
                        else
                        {
                            Mss_Login0.Text = "The new password does not match";
                            Timer2.Enabled = true;

                        }
                    }


                }


            }
            
        }


    }
}
