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
    public partial class ViewPaymentSubscriptions : System.Web.UI.Page
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
                    cmdd.Parameters.AddWithValue("@Action", "SELEC_Payment3");
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
     
         
            protected void Timer3_Tick(object sender, EventArgs e)
            {
                Response.Redirect(Request.Url.AbsoluteUri);


            }

            protected void GridViewSelect_Payment_SelectedIndexChanged(object sender, EventArgs e)
            {
                DBCON.Club_DB();
                LabelID.Text = GridViewSelect_Payment.Rows[GridViewSelect_Payment.SelectedIndex].Cells[0].Text;
                Label15.Text = GridViewSelect_Payment.Rows[GridViewSelect_Payment.SelectedIndex].Cells[1].Text;
                LabelFull_Name.Text = GridViewSelect_Payment.Rows[GridViewSelect_Payment.SelectedIndex].Cells[2].Text;
                LabelPayment_Date.Text=GridViewSelect_Payment.Rows[GridViewSelect_Payment.SelectedIndex].Cells[7].Text;
                Image1.Visible = true;


            using (SqlCommand cmd = new SqlCommand("SP_Subscriptions"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELEC_Payment4");
                cmd.Parameters.AddWithValue("@Subscriptions_ID", LabelID.Text);
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
                            string receiptPath = row["PaymentReceiptPath"].ToString();
                            Label16.Text = row["PaymentReceiptPath"].ToString();
                            if (!string.IsNullOrEmpty(receiptPath))
                            {
                                Image1.ImageUrl = receiptPath;

                                Image1.Visible = true;
                            }
                        }
                    }
                }
            }







        }

        protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
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

    }
}


