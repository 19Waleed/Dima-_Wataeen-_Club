
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
    public partial class PaymentSubscriptions : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DBCON.Club_DB();
                Select_Payment();

            }
        }
        public void Select_Payment()
        {

            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
            {
                cmdd.Parameters.AddWithValue("@Action", "SELEC_Payment2");
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
                            GridViewSelect_Payment.Visible = true;
                            GridViewSelect_Payment.DataSource = dt;
                            GridViewSelect_Payment.DataBind();
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
            if (Mss_Payment_Date.Visible)
            {
                Mss_Payment_Date.Text = "";

                Timer2.Enabled = false;
            }

        }
        protected void Timer3_Tick(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);


        }
     
        protected void GridViewSelect_Payment_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBCON.Club_DB();
            LabelID.Text = GridViewSelect_Payment.Rows[GridViewSelect_Payment.SelectedIndex].Cells[0].Text;
            LabelFull_Name.Text = GridViewSelect_Payment.Rows[GridViewSelect_Payment.SelectedIndex].Cells[2].Text;
            using (SqlCommand cmd = new SqlCommand("SP_Subscriptions"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELEC_Payment");
                cmd.Parameters.AddWithValue("@ID", LabelID.Text);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = DBCON.conn;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    But_Save.Visible = true;
                    Label12.Visible = true;
                    CalendarPayment_Date. Visible = true;

                }


            }
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            if (CalendarPayment_Date.Visible)
            {

                CalendarPayment_Date.Visible = false;

            }
            else
            {

                CalendarPayment_Date.Visible = true;
            }
        }

        protected void CalendarJoiningDate_SelectionChanged(object sender, EventArgs e)
        {
            LabelPayment_Date.Text = CalendarPayment_Date.SelectedDate.ToShortDateString();
            Image1.Visible = true;
            FileUpload1.Visible = true;
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
                        string newFileName = $"{fileName}_{LabelID.Text}{fileExtension}";
                        serverPath = Server.MapPath("~/img/PaymentReceipts/") + newFileName;
                        FileUpload1.SaveAs(serverPath);

                        filePath = "~/img/PaymentReceipts/"+ newFileName;
                    }

                   
                    


                    catch (Exception ex)
                    {
                        Mss_Save.Visible = true;
                        Mss_Save.Text = "Upload status: The file could not be uploaded. The following error occurred: " + ex.Message;
                        return;
                    }
                }

            Label14.Text = filePath;
           
             if (string.IsNullOrWhiteSpace(Label14.Text))
            {
                Mss_Payment_Date.Text = "Photos must be uploaded";
                Timer2.Enabled = true;
            }

            else if (string.IsNullOrWhiteSpace(LabelPayment_Date.Text))
            {
                Mss_Payment_Date.Text = "Select the Date Birth";
                Timer2.Enabled = true;
            }

            else { 
            DBCON.Club_DB();
                using (SqlCommand cmd = new SqlCommand("SP_Subscriptions"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UPDATE_Payment");
                    cmd.Parameters.AddWithValue("@Subscriptions_ID", LabelID.Text);
                    DateTime PaymentDate = DateTime.Parse(LabelPayment_Date.Text);
                    string formattedPayment_Date = PaymentDate.ToString("yyyy-MM-dd");
                    cmd.Parameters.AddWithValue("@Payment_Date", formattedPayment_Date);

                    if (!string.IsNullOrEmpty(filePath))
                    {
                        cmd.Parameters.AddWithValue("@PaymentReceiptPath", filePath);
                        FileUpload1.SaveAs(Server.MapPath(filePath));
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@PaymentReceiptPath", DBNull.Value);
                    }
                    cmd.Connection = DBCON.conn;
                    try
                    {
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Mss_Save.Visible = true;
                        Mss_Save.Text = "Database save status: The data could not be saved. The following error occurred: " + ex.Message;
                        DBCON.conn.Close();
                        return;
                    }

                    DBCON.conn.Close();
                    Mss_Save.Visible = true;
                    Mss_Save.Text = "The request was successfully approved";
                    Timer1.Enabled = true;
                    Timer3.Enabled = true;
                    string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
                    string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    string newFileName = $"{fileName}_{LabelID.Text}{fileExtension}";
                    serverPath = Server.MapPath("~/img/PaymentReceipts/") + newFileName;
                    FileUpload1.SaveAs(serverPath);

                    filePath = "~/img/PaymentReceipts/" + newFileName;
                }

                if (!string.IsNullOrEmpty(filePath))
                {
                    try
                    {
                        Image1.ImageUrl = filePath;
                        Image1.Visible = true;
                    }
                    catch (Exception ex)
                    {
                        Mss_Save.Visible = true;
                        Mss_Save.Text = "Image display status: The image could not be displayed. The following error occurred: " + ex.Message;
                    }
                }
            }

        }

        protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
        {
            DBCON.Club_DB();

            using (SqlCommand cmdd = new SqlCommand("SP_Subscriptions"))
            {
                cmdd.Parameters.AddWithValue("@Action","SELEC_Payment2");
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
                            GridViewSelect_Payment.Visible = true;
                            GridViewSelect_Payment.DataSource = dt;
                            GridViewSelect_Payment.DataBind();
                        }
                        else
                        {
                        }
                    }
                }

            }
        }
    }

}