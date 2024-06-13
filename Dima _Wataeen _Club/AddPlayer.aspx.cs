using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace Dima__Wataeen__Club
{
    public partial class AddPlayer : System.Web.UI.Page
    {

        Club_DBClass DBCON = new Club_DBClass();
        string Pages_Team_ID = "";
        string User_ID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            DBCON.Club_DB();

            Select_Return();
            Select_Pages();
            GenerateMember_ID();

            if (!IsPostBack)
            {
                DBCON.Club_DB();
                GITG_DropDownTeam_ID();
              
                GITG_DropDownIsubscription();
                Select_Return();
                if (Session["Pages_User_Name"] == null)
                {
                    Response.Redirect("~/LoginApp.aspx");
                }

            }

        }

        public string GenerateMember_ID()
        {
            DBCON.Club_DB();

            string Member_ID = "";

            using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELEC_IDTop");
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
                            Member_ID = GenerateMember_IDFromNumber(highestID);

                        }
                        else
                        {

                            Member_ID = GenerateMember_IDFromNumber(1);
                        }
                    }
                }
            }

            return Member_ID;
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
                cmdd.Parameters.AddWithValue("@Action", "Return_Master_MembeByApp");
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

        private void GITG_DropDownTeam_ID()
        {

            using (SqlCommand cmdd = new SqlCommand("SP_New_Team"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECView_Teams");
                cmdd.Parameters.AddWithValue("@Team_ID", LabelTeam_ID.Text);
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



        private void GITG_DropDownIsubscription()
        {

            using (SqlCommand cmdd = new SqlCommand("SP_Master_Member"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECView_Job/Subscription");
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmdd.CommandType = CommandType.StoredProcedure;
                    cmdd.Connection = DBCON.conn;
                    sda.SelectCommand = cmdd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DropDownIsubscription.Enabled = true;
                        DropDownIsubscription.DataValueField = "ID";
                        DropDownIsubscription.DataTextField = "JobName";
                        DropDownIsubscription.Items.Insert(0, new ListItem("Select JobN ame", "0"));
                        LabelSubscription.Text = dt.Rows[0]["subscription"].ToString() + ".OR ";
                        DropDownIsubscription.DataSource = dt;
                        DropDownIsubscription.DataBind();
                    }
                }



            }
        }

        protected void CalendarDateBirth_SelectionChanged(object sender, EventArgs e)
        {
            LabelDateBirth.Text = CalendarDateBirth.SelectedDate.ToShortDateString();
        }
        protected void CalendarJoiningDate_SelectionChanged(object sender, EventArgs e)
        {
            LabelJoiningDate.Text = CalendarJoiningDate.SelectedDate.ToShortDateString();
        }
        protected void But_Save_Click(object sender, EventArgs e)
        {

            string filePath = string.Empty;
            string serverPath = string.Empty;
            
            if (FileUpload1.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
                    string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    string newFileName = $"{fileName}_{LabelMember_ID.Text}{fileExtension}";
                    serverPath = Server.MapPath("~/img/PaymentReceipts/") + newFileName;
                    FileUpload1.SaveAs(serverPath);

                    filePath = "~/img/PaymentReceipts/" + newFileName;
                }

                catch (Exception ex)
                {
                    But_UPDATE.Visible = true;
                    lblMessage.Text = "Upload status: The file could not be uploaded. The following error occurred: " + ex.Message;
                    return;
                }

                Label14.Text = filePath;
            }



            else if (string.IsNullOrWhiteSpace(Label14.Text))
            {
                lblMessage.Text = "Photos must be uploaded";
                Timer2.Enabled = true;
            }



            if (string.IsNullOrWhiteSpace(TextBoxFull_Name.Text))
            {
                Mss_Full_Name.Text = "Enter the Full Name";
                Timer2.Enabled = true;
            }

            else if (string.IsNullOrWhiteSpace(TextBoxAddress.Text))
            {
                Mss_Save_Address.Text = "Enter the Address";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrEmpty(DropDownMarital_Status.SelectedValue) || DropDownMarital_Status.SelectedValue == "0" || DropDownMarital_Status.Text == "Select Married")
            {
                Mss_Save_Marital_Status.Text = "Select Marital Status";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(LabelDateBirth.Text))
            {
                Mss_Save_DateBirth.Text = "Select the Date Birth";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBoxPhone.Text))
            {
                Mss_Save_Phone.Text = "Enter the Phone";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrEmpty(DropDownMember_Type.SelectedValue) || DropDownMember_Type.SelectedValue == "0")
            {
                Mss_Save_Member_Type.Text = "Select Type Member";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBoxCard_ID_ON.Text))
            {
                Mss_Save_Card_ID_ON.Text = "Enter the Card ID";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(LabelJoiningDate.Text))
            {
                Mss_JoiningDate.Text = "Enter the Joining Date";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(LabelJoiningDate.Text))
            {
                Mss_JoiningDate.Text = "Enter the Joining Date";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrEmpty(DropDownIsubscription.SelectedValue) || DropDownIsubscription.SelectedValue == "0")
            {
                Mss_Save_subscription.Text = "Select Job/Subscription";
                Timer2.Enabled = true;
            }
            else
            {
                DBCON.Club_DB();
                string Member_ID = GenerateMember_ID();
                using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
                {
                    LabelMember_ID.Text = "ID Auto" + "         " + Member_ID;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "insert_Member");
                    cmd.Parameters.AddWithValue("@Member_ID", Member_ID);
                    cmd.Parameters.AddWithValue("@Full_Name", TextBoxFull_Name.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBoxAddress.Text);
                    cmd.Parameters.AddWithValue("@Marital_Status", DropDownMarital_Status.Text);
                    DateTime DateBirth = DateTime.Parse(LabelDateBirth.Text);
                    string formattedDateBirth = DateBirth.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Date_Birth", formattedDateBirth);
                    cmd.Parameters.AddWithValue("@Phone", TextBoxPhone.Text);
                    cmd.Parameters.AddWithValue("@Team_ID", DropDownTeam_ID.SelectedValue);
                    cmd.Parameters.AddWithValue("@Member_Type", DropDownMember_Type.Text);
                    cmd.Parameters.AddWithValue("@Card_ID_ON", TextBoxCard_ID_ON.Text);
                    DateTime joiningDate = DateTime.Parse(LabelJoiningDate.Text);
                    string formattedJoiningDate = joiningDate.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Joining_Date", formattedJoiningDate);
                    cmd.Parameters.AddWithValue("@ID_subscription", DropDownIsubscription.SelectedValue);
                    string DefaultPath = "~/img/PaymentReceipts/Default.png";
                    if (!string.IsNullOrEmpty(filePath))
                    {
                        cmd.Parameters.AddWithValue("@PicUrl", filePath);
                        FileUpload1.SaveAs(Server.MapPath(filePath));
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@PicUrl", DefaultPath);
                    }
                 
                    cmd.Parameters.AddWithValue("@WhoInsert", LabelUser_Name.Text);
                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    DBCON.conn.Close(); 
                }
                    Mss_Save_.Visible = true;
                       Mss_Save_.Text = "Saved successfully";
                        Timer1.Enabled = true;
                         Timer3.Enabled = true;
            }
        }
        private void ReloadPageAndClearInputs()
        {

            string script = "window.location.href = window.location.href.split('?')[0];";
            ClientScript.RegisterStartupScript(this.GetType(), "reload", script, true);
        }
        public string GenerateMember_IDFromNumber(int number)
        {
            string year = DateTime.Now.ToString("yy");
            string idPart = number.ToString("D5");
            return year + "M" + idPart;
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
        protected void Timer1_Tick2(object sender, EventArgs e)
        {
            if (Mss_Full_Name.Visible)
            {
                Mss_Full_Name.Visible = false;
                Mss_Full_Name.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_Save_Address.Visible)
            {
                Mss_Save_Address.Visible = false;
                Mss_Save_Address.Text = "";
                Timer2.Enabled = false;
            }

            else if (Mss_Save_Marital_Status.Visible)

            {
                Mss_Save_Marital_Status.Visible = false;
                Mss_Save_Marital_Status.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_Save_DateBirth.Visible)
            {
                Mss_Save_DateBirth.Visible = false;
                Mss_Save_DateBirth.Text = "";
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
            else if (Mss_Save_Member_Type.Visible)
            {

                Mss_Save_Member_Type.Visible = false;
                Mss_Save_Member_Type.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_Save_Card_ID_ON.Visible)
            {
                Mss_Save_Card_ID_ON.Visible = false;
                Mss_Save_Card_ID_ON.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_JoiningDate.Visible)
            {
                Mss_JoiningDate.Visible = false;
                Mss_JoiningDate.Text = "";
                Timer2.Enabled = false;
            }
            else if (Mss_Save_subscription.Visible)
            {
                Mss_Save_subscription.Visible = false;
                Mss_Save_subscription.Text = "";
                Timer2.Enabled = false;
            }

        }
        protected void Timer3_Tick(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (CalendarDateBirth.Visible)
            {

                CalendarDateBirth.Visible = false;

            }
            else
            {

                CalendarDateBirth.Visible = true;
            }
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            if (CalendarJoiningDate.Visible)
            {

                CalendarJoiningDate.Visible = false;

            }
            else
            {

                CalendarJoiningDate.Visible = true;
            }
        }

        protected void DropDownIsubscription_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownIsubscription.SelectedValue == "0")
            {
                LabelSubscription.Text = "No subscription available";
                return;
            }

            using (SqlCommand cmdd = new SqlCommand("SP_Master_Member"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELECSubscriptionID");
                cmdd.Parameters.AddWithValue("@ID", DropDownIsubscription.SelectedValue);
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.Connection = DBCON.conn;
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    sda.SelectCommand = cmdd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            LabelSubscription.Text = dt.Rows[0]["subscription"].ToString() + ".OR ";
                        }
                        else
                        {
                            LabelSubscription.Text = "No subscription available";
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
            DropDownMember_Type.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[5].Text;
            DropDownIsubscription.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[6].Text;

            DropDownMarital_Status.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[7].Text;

            TextBoxAddress.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[8].Text;
            TextBoxCard_ID_ON.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[9].Text;
            LabelJoiningDate.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[10].Text;
            LabelDateBirth.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[11].Text;
            LabelSubscription.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[12].Text;
            LabelNote.Text = GridViewSelect_Return.Rows[GridViewSelect_Return.SelectedIndex].Cells[13].Text;

            using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
            {
                cmd.Parameters.AddWithValue("@Action", "Return_Master_MembeByApp1");
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

                }
                Image1.Visible = true;
                But_UPDATE.Visible = true;
                LabelReturnnote.Visible = true;
                LabelNote.Visible = true;
                But_Save.Visible = false;


            }
        }

            protected void But_UPDATE_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBoxFull_Name.Text))
            {
                Mss_Full_Name.Text = "Enter the Full Name";
                Timer2.Enabled = true;
            }

            else if (string.IsNullOrWhiteSpace(TextBoxAddress.Text))
            {
                Mss_Save_Address.Text = "Enter the Address";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrEmpty(DropDownMarital_Status.SelectedValue) || DropDownMarital_Status.SelectedValue == "0" || DropDownMarital_Status.Text == "Select Married")
            {
                Mss_Save_Marital_Status.Text = "Select Marital Status";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(LabelDateBirth.Text))
            {
                Mss_Save_DateBirth.Text = "Select the Date Birth";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBoxPhone.Text))
            {
                Mss_Save_Phone.Text = "Enter the Phone";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrEmpty(DropDownMember_Type.SelectedValue) || DropDownMember_Type.SelectedValue == "0")
            {
                Mss_Save_Member_Type.Text = "Select Type Member";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBoxCard_ID_ON.Text))
            {
                Mss_Save_Card_ID_ON.Text = "Enter the Card ID";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(LabelJoiningDate.Text))
            {
                Mss_JoiningDate.Text = "Enter the Joining Date";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrWhiteSpace(LabelJoiningDate.Text))
            {
                Mss_JoiningDate.Text = "Enter the Joining Date";
                Timer2.Enabled = true;
            }
            else if (string.IsNullOrEmpty(DropDownIsubscription.SelectedValue) || DropDownIsubscription.SelectedValue == "0")
            {
                Mss_Save_subscription.Text = "Select Job/Subscription";
                Timer2.Enabled = true;
            }


            else
            {
                DBCON.Club_DB();
                string Member_ID = GenerateMember_ID();
                using (SqlCommand cmd = new SqlCommand("SP_Master_Member"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UPDATEReturne");
                    cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                    cmd.Parameters.AddWithValue("@Member_ID", LabelMember_ID.Text);
                    cmd.Parameters.AddWithValue("@Full_Name", TextBoxFull_Name.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBoxAddress.Text);
                    cmd.Parameters.AddWithValue("@Marital_Status", DropDownMarital_Status.Text);
                    DateTime DateBirth = DateTime.Parse(LabelDateBirth.Text);
                    string formattedDateBirth = DateBirth.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Date_Birth", formattedDateBirth);
                    cmd.Parameters.AddWithValue("@Phone", TextBoxPhone.Text);
                    cmd.Parameters.AddWithValue("@Team_ID", DropDownTeam_ID.SelectedValue);
                    cmd.Parameters.AddWithValue("@Member_Type", DropDownMember_Type.Text);
                    cmd.Parameters.AddWithValue("@Card_ID_ON", TextBoxCard_ID_ON.Text);
                    DateTime joiningDate = DateTime.Parse(LabelJoiningDate.Text);
                    string formattedJoiningDate = joiningDate.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Joining_Date", formattedJoiningDate);
                    cmd.Parameters.AddWithValue("@ID_subscription", DropDownIsubscription.SelectedValue);
                    cmd.Parameters.AddWithValue("@WhoUpdate", LabelUser_Name.Text);
                    cmd.Connection = DBCON.conn;
                    cmd.ExecuteNonQuery();
                    LabelMember_ID.Text = "ID Auto" + "         " + GenerateMember_ID();
                    DBCON.conn.Close();
                    Mss_Save_.Visible = true;
                    Mss_Save_.Text = "Saved successfully";
                    Timer1.Enabled = true;
                    Timer3.Enabled = true;


                }

            }
        }

    }

}







