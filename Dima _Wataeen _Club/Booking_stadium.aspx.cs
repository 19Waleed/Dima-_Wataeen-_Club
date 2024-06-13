
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
    public partial class Booking_stadium : System.Web.UI.Page
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
                GITG_DropDownTeam_ID();
                Select_BookMonth();
                Select_Book_old();
                Select_BookApproved();
                Select_Pages();
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

        public void Select_BookMonth()
        {
            DBCON.Club_DB();


            using (SqlCommand cmdd = new SqlCommand("SP_ Booking_Date"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECTable_BookMonthTop");
                cmdd.Parameters.AddWithValue("@Team_ID", Pages_Team_ID);
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

                            ///////_________///////
                            DropDownTeam_ID.Visible = false;
                            LinkButton2.Visible = false;
                            LabelDateBooking.Visible = false;
                            TextBoxPhone.Visible = false;
                            Label7.Visible = false;
                            LabelDateBooking.Visible = false;
                            Label10.Visible = false;
                            DropDownTeam_ID.Visible = false;
                            Label8.Visible = false;
                            But_Save.Visible = false;

                        }
                        else
                        {


                        }
                    }


                }
            }
        }


        private void GITG_DropDownTeam_ID()
        {

            using (SqlCommand cmdd = new SqlCommand("SP_New_Team"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECView_Teams");
                cmdd.Parameters.AddWithValue("@Team_ID", Pages_Team_ID);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmdd.CommandType = CommandType.StoredProcedure;
                    cmdd.Connection = DBCON.conn;
                    sda.SelectCommand = cmdd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DropDownTeam_ID.Enabled = true;
                        DropDownTeam_ID.DataValueField = "Team_ID";
                        DropDownTeam_ID.DataTextField = "Team_NAME";
                        DropDownTeam_ID.Items.Insert(0, new ListItem("Select Team", "0"));
                        DropDownTeam_ID.DataSource = dt;
                        DropDownTeam_ID.DataBind();
                    }
                }
            }
        }
        protected void CalendarDateBirth_SelectionChanged(object sender, EventArgs e)
        {

            DBCON.Club_DB();


            using (SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Table_Booking_Details WHERE Booking_Date = @Booking_Date", DBCON.conn))
            {
                Mss_Save_DateBooking.Text = "";
                LabelDateBooking.Text = CalendarDateBooking.SelectedDate.ToShortDateString();

                DateTime DateBooking = DateTime.Parse(LabelDateBooking.Text);
                string formattedDateBooking = DateBooking.ToString("yyyy-MM-dd");
                checkCmd.Parameters.AddWithValue("@Booking_Date", formattedDateBooking);

                int count = (int)checkCmd.ExecuteScalar();
                if (count > 0)
                {
                    Mss_Save_DateBooking.Text = "Please select another booking date. This date is already booked.";
                    DBCON.conn.Close();
                    LabelDateBooking.Text = "";
                    return;
                }
            }


        }

        protected void But_Save_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(LabelDateBooking.Text))
            {
                Mss_Save_DateBooking.Text = "Select the Booking Date";
                Timer2.Enabled = true;
            }

            else if (string.IsNullOrEmpty(DropDownTeam_ID.SelectedValue) || DropDownTeam_ID.SelectedValue == "0" || DropDownTeam_ID.Text == "Select Team")
            {
                Mss_Save_Team_ID.Text = "Select Team";
                Timer2.Enabled = true;
            }



            else if (string.IsNullOrWhiteSpace(TextBoxPhone.Text))
            {
                Mss_Save_Phone.Text = "Enter the Phone";
                Timer2.Enabled = true;
            }


            else
            {

                DBCON.Club_DB();


                using (SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Table_Booking_Details WHERE Booking_Date = @Booking_Date", DBCON.conn))
                {
                    DateTime DateBooking = DateTime.Parse(LabelDateBooking.Text);
                    string formattedDateBooking = DateBooking.ToString("yyyy-MM-dd");
                    checkCmd.Parameters.AddWithValue("@Booking_Date", formattedDateBooking);

                    int count = (int)checkCmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Mss_Save_DateBooking.Text = "Please select another booking date. This date is already booked.";
                        Timer2.Enabled = true;
                        DBCON.conn.Close();
                        return;
                    }
                }

                DBCON.Club_DB();

                using (SqlCommand cmd = new SqlCommand("SP_ Booking_Date"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "insertBooking");
                    cmd.Parameters.AddWithValue("@Team_ID", DropDownTeam_ID.SelectedValue);
                    cmd.Parameters.AddWithValue("@Phonen", TextBoxPhone.Text);
                    DateTime DateBooking = DateTime.Parse(LabelDateBooking.Text);
                    string formattedDateBooking = DateBooking.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Booking_Date", formattedDateBooking);
                    
                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    DBCON.conn.Close();
                    Mss_Save_.Visible = true;
                    Mss_Save_.Text = "The football field has been booked successfully. Wait for the club to confirm the reservation";
                    Timer1.Enabled = true;
                    Timer3.Enabled = true;



                }


            }
        }
        private void ReloadPageAndClearInputs()
        {

            string script = "window.location.href = window.location.href.split('?')[0];";
            ClientScript.RegisterStartupScript(this.GetType(), "reload", script, true);
        }


        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            if (Mss_Save_.Visible)
            {
                Mss_Save_.Visible = false;


                ReloadPageAndClearInputs();

            }

            Timer1.Enabled = false;

        }
        protected void Timer2_Tick(object sender, EventArgs e)
        {

            if (Mss_Save_DateBooking.Visible)
            {
                Mss_Save_DateBooking.Visible = false;
                Mss_Save_DateBooking.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_Save_Phone.Visible)
            {
                Mss_Save_Phone.Visible = false;
                Mss_Save_Phone.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_Save_Team_ID.Visible)
            {
                Mss_Save_Team_ID.Visible = false;
                Mss_Save_Team_ID.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_Booking_old.Visible)
            {
                Mss_Booking_old.Visible = false;
                Mss_Booking_old.Text = "";
                Timer2.Enabled = false;
            }

        }
        protected void Timer3_Tick(object sender, EventArgs e)
        {

            Response.Redirect(Request.Url.AbsoluteUri);

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (CalendarDateBooking.Visible)
            {

                CalendarDateBooking.Visible = false;

            }
            else
            {

                CalendarDateBooking.Visible = true;
            }
        }


        protected void GridViewBookMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBCON.Club_DB();

            if (GridViewBookApproved.Rows.Count > 0)
            {
                Mss_approved.Text = "You have a confirmed reservation. It is not possible to book again. You must wait until next month";
            }
            else
            {
                LabelID.Text = GridViewBookMonth.Rows[GridViewBookMonth.SelectedIndex].Cells[0].Text;
                using (SqlCommand cmd = new SqlCommand("sp_User_Profile"))
                {
                    cmd.Parameters.AddWithValue("@Action", "update_Booking_Date");
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
                                LabelDateBooking.Text = dt.Rows[0]["Booking_Date"].ToString();

                            }
                        }

                        But_Update.Visible = true;
                        LabelDateBooking.Visible = true;
                        CalendarDateBooking.Visible = true;

                        Mss_update.Text = "* You can only modify the reservation date. If you wish to delete the reservation, you must contact the reservations manager";

                    }
                }
                }

        }
        protected void But_Update_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(LabelDateBooking.Text))
            {
                Mss_Save_DateBooking.Text = "Select the Booking Date";
                Timer2.Enabled = true;
            }

            else
            {
                DBCON.Club_DB();

                using (SqlCommand cmd = new SqlCommand("SP_ Booking_Date"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "update_Booking_Date");
                    cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                    DateTime DateBooking = DateTime.Parse(LabelDateBooking.Text);
                    string formattedDateBooking = DateBooking.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Booking_Date", formattedDateBooking);
                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    DBCON.conn.Close();
                    Mss_Save_.Visible = true;
                    Mss_Save_.Text = "The football field has been booked successfully. Wait for the club to confirm the reservation";
                    Timer1.Enabled = true;
                }

            }
        }

        public void Select_Book_old()
        {
            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_ Booking_Date"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECView_Booking");
                cmdd.Parameters.AddWithValue("@Team_ID", LabelTeam_ID.Text);
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
                            GridViewBookMonth_old.DataSource = dt;
                            GridViewBookMonth_old.DataBind();
                        }
                        else
                        {
                            Mss_Booking_old.Text = "No previous records (note approved records)";
                            Timer2.Enabled = true;
                        }
                    }
                }
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {


            if (GridViewBookMonth_old.Visible)
            {
                GridViewBookMonth_old.Visible = false;
                Mss_Booking_old.Visible = true;
            }
            else
            {
                GridViewBookMonth_old.Visible = true;
                Mss_Booking_old.Visible = true;
            }

        }

   

        public void Select_BookApproved()
        {

            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_ Booking_Date"))
            {
                cmdd.Parameters.AddWithValue("@Action", "Select_BookApproved");
                cmdd.Parameters.AddWithValue("@Team_ID", LabelTeam_ID.Text);
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
    

    protected void CalendarDateBooking_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            DateTime currentDate = DateTime.Now;
            if (e.NewDate.Month != currentDate.Month || e.NewDate.Year != currentDate.Year)
            {
              
                CalendarDateBooking.VisibleDate = currentDate;
            }
        }

      
    }
    
}







