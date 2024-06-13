using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dima__Wataeen__Club
{
    public partial class AAA : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    protected void butEnter_Click(object sender, EventArgs e)
    {
            DBCON.Club_DB();
            string uasername = txtUname.Text;
          string pass = Encrypt(txtPass.Text); 

        using (SqlCommand cmdActive = new SqlCommand("sp_sign_in"))
        {
            cmdActive.Parameters.AddWithValue("@Action", "SelectInActive");
            cmdActive.Parameters.AddWithValue("@User_Name", uasername);

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
                        lblMSG.Text = "تم إيقاف النظام بصفة مؤقتة";
                        lblMSG.BackColor = System.Drawing.Color.Red;
                        lblMSG.ForeColor = System.Drawing.Color.White;

                        Session["UID"] = null;
                    }
                    else
                    {
                        using (SqlCommand cmd = new SqlCommand("sp_sign_in"))
                        {
                            cmd.Parameters.AddWithValue("@Action", "SELECT");
                            cmd.Parameters.AddWithValue("@User_Name", uasername);
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
                                        lblMSG.Text = "عذراً كلمة المرور او اسم المستخدم غير صحيح";
                                        lblMSG.BackColor = System.Drawing.Color.Red;
                                        lblMSG.ForeColor = System.Drawing.Color.White;

                                        Session["UID"] = null;
                                    }
                                    else
                                    {
                                        if (uasername == txtPass.Text)
                                        {
                                            lblMSG.Text = "يجب تغير كلمة المرور قبل الدخول الى النظام";
                                            lblMSG.BackColor = System.Drawing.Color.Red;
                                            lblMSG.ForeColor = System.Drawing.Color.White;
                                            lblPass.Visible = false;
                                            txtPass.Visible = false;
                                            butEnter.Visible = false;
                                            PanelPass.Visible = false;
                                            lblPassFirst.Visible = true;
                                            lblPassSecond.Visible = true;
                                            butUpdatePass.Visible = true;
                                            txtPassFirst.Visible = true;
                                            txtPassSecond.Visible = true;

                                            return;
                                        }

                                        using (SqlCommand cmdd = new SqlCommand("VewUserRoles"))
                                        {
                                            cmdd.Parameters.AddWithValue("@Action", "SELECT");
                                            cmdd.Parameters.AddWithValue("@User_Name", uasername);

                                            using (SqlDataAdapter adpage = new SqlDataAdapter())
                                            {
                                                cmdd.CommandType = CommandType.StoredProcedure;
                                                cmdd.Connection = DBCON.conn;
                                                    adpage.SelectCommand = cmdd;

                                                using (DataTable myPages = new DataTable())
                                                {
                                                    adpage.Fill(myPages);
                                                    Session["pages"] = myPages;
                                                    Session.Timeout = 15;
                                                }
                                            }
                                        }

                                        Session["UID"] = txtUname.Text;
                                        Response.Redirect("~/MainPage.aspx");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

        private string Encrypt(string text)
        {
            throw new NotImplementedException();
        }

        protected void butUpdatePass_Click(object sender, EventArgs e)
    {
            DBCON.Club_DB();
            if (txtUname.Text == txtPassSecond.Text)
        {
            lblMSG.Text = "لا يسمح بوضع اسم المستخدم نفس كلمة المرور";
            lblMSG.BackColor = System.Drawing.Color.Red;
            lblMSG.ForeColor = System.Drawing.Color.White;
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
                    string pass = Encrypt(txtPassSecond.Text);
                    cmdUpdatePass.Parameters.AddWithValue("@User_Name", txtUname.Text);
                    cmdUpdatePass.Parameters.AddWithValue("@User_Pass", pass);
                    cmdUpdatePass.Connection = DBCON.conn;
                        cmdUpdatePass.ExecuteNonQuery();

                    lblMSG.Text = "تم تغير كلمة المرور بنجاح يمكنك الدخول الى النظام الآن";
                    lblMSG.BackColor = System.Drawing.Color.Green;
                    lblMSG.ForeColor = System.Drawing.Color.White;

                    DBCON.conn.Close();
                    lblPass.Visible = true;
                    txtPass.Visible = true;
                    butEnter.Visible = true;
                    PanelPass.Visible = true;
                    lblPassFirst.Visible = false;
                    lblPassSecond.Visible = false;
                    butUpdatePass.Visible = false;
                    txtPassFirst.Visible = false;
                    txtPassSecond.Visible = false;
                }
                else
                {
                    lblMSG.Text = "كلمة المرور الجديدة غير متطابقة ";
                    lblMSG.BackColor = System.Drawing.Color.Red;
                    lblMSG.ForeColor = System.Drawing.Color.White;
                }
            }
        }
    }

    protected void txtUname_TextChanged(object sender, EventArgs e)
     {
        // Your code here
     }
    }
}
