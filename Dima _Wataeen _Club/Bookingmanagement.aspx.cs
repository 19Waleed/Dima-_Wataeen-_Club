
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
    public partial class Bookingmanagement : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DBCON.Club_DB();

                Select_BookMonth();
                Select_BookApproved();

            }


        }
        public void Select_BookMonth()
        {

            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_ Booking_Date"))
            {
                cmdd.Parameters.AddWithValue("@Action", "ApproveBookMonth");
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
                            GridViewBookMonth.Visible = true;
                            GridViewBookMonth.DataSource = dt;
                            GridViewBookMonth.DataBind();
                        }
                        else
                        {
                        }
                    }
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

                using (SqlCommand cmd = new SqlCommand("SP_ Booking_Date"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "Return_Booking_Date");
                    cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                    cmd.Parameters.AddWithValue("@Notes", TextBoxNotes.Text);
                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    DBCON.conn.Close();
                    Mss_Save_.Visible = true;
                    Mss_Save_.Text = "The order was returned with a note";
                    Timer1.Enabled = true;
                    Timer3.Enabled = true;
                }
            }

        }

        protected void But_Save_Click(object sender, EventArgs e)
        {
            DBCON.Club_DB();

            using (SqlCommand cmd = new SqlCommand("SP_ Booking_Date"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Approve_Booking_Date");
                cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                cmd.Connection = DBCON.conn;
                cmd.ExecuteNonQuery();
                DBCON.conn.Close();
                Mss_Save_.Visible = true;
                Mss_Save_.Text = "The request was successfully approved";
                Timer1.Enabled = true;
                Timer3.Enabled = true;
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Mss_Save_.Visible)
            {
                Mss_Save_.Visible = false;
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



        public void Select_BookApproved()
        {
            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_ Booking_Date"))
            {
                cmdd.Parameters.AddWithValue("@Action", "Approve_LAAView_Booking");
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
                            GridViewBookApproved.Visible = true;
                            GridViewBookApproved.DataSource = dt;
                            GridViewBookApproved.DataBind();
                        }
                        else
                        {
                        }
                    }
                }
            }
        }

        protected void GridViewBookMonth_SelectedIndexChanged(object sender, EventArgs e)
        {

            DBCON.Club_DB();



            LabelID.Text = GridViewBookMonth.Rows[GridViewBookMonth.SelectedIndex].Cells[0].Text;

            using (SqlCommand cmd = new SqlCommand("sp_User_Profile"))
             {
                    cmd.Parameters.AddWithValue("@Action", "ApproveBookMonth");
                    cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = DBCON.conn;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())     
                        But_Return.Visible = true;
                        But_Save.Visible = true;
                        Label11.Visible = true;
                        TextBoxNotes.Visible = true;

                        Mss_update.Text = "* Approval or return";

                    }
                
             }
        }
    }
  
}