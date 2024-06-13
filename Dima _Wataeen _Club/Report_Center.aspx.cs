using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Dima__Wataeen__Club
{
    public partial class Report_Center : System.Web.UI.Page
    {
        Club_DBClass DBCON = new Club_DBClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadYears();
                LoadTeams();
                GenerateReport();
            }
        }

        private void LoadYears()
        {
            for (int year = 2023; year <= 2030; year++)
            {
                DropYear.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

        private void LoadTeams()
        {
            DBCON.Club_DB();
            using (SqlCommand cmd = new SqlCommand("SP_New_Team", DBCON.conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SELECView_Teams1");
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DropDownTeam_ID.DataSource = dt;
                    DropDownTeam_ID.DataValueField = "Team_ID";
                    DropDownTeam_ID.DataTextField = "Team_NAME";
                    DropDownTeam_ID.DataBind();
                }
            }
        }

        protected void ListBoxOtherRep_SelectedIndexChanged(object sender, EventArgs e)
        {
            GenerateReport();
        }

        protected void DropYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            GenerateReport();
        }

        private void GenerateReport()
        {
            if (ListBoxOtherRep.SelectedItem == null || DropYear.SelectedItem == null)
                return;

            int selectedYear = int.Parse(DropYear.SelectedValue);
            string selectedTeam = ListBoxOtherRep.SelectedValue;
            int selectedReportIndex = ListBoxOtherRep.SelectedIndex + 1;

            ReportDocument reportDocument = new ReportDocument();

            if (selectedReportIndex == 1)
            {
                reportDocument.Load(Server.MapPath("MemberReport.rpt"));
            }
            else if (selectedReportIndex == 2)
            {
                reportDocument.Load(Server.MapPath("TeamsReport.rpt"));
            }
            else if (selectedReportIndex == 3)
            {
                reportDocument.Load(Server.MapPath("BookingReport.rpt"));
            }
            else if (selectedReportIndex == 4)
            {
                reportDocument.Load(Server.MapPath("CardsReport1.rpt"));
            }
            else if (selectedReportIndex == 5)
            {
                reportDocument.Load(Server.MapPath("CertificateAppreciation.rpt"));
            }
            else if (selectedReportIndex == 6)
            {
                reportDocument.Load(Server.MapPath("UserNameReport1.rpt"));
            }
            else if (selectedReportIndex == 7)
            {
                reportDocument.Load(Server.MapPath("UserProfileReport.rpt"));
            }
            else
            {
                return;
            }

            reportDocument.SetParameterValue("YearParameter", selectedYear);
            reportDocument.SetParameterValue("TeamIDParameter", selectedTeam);

            CrystalReportViewer1.ReportSource = reportDocument;
            CrystalReportViewer1.DataBind();
        }

        protected void ButtonPreviewReport_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {
            // يمكن إضافة أي كود خاص بتهيئة الـ CrystalReportViewer هنا
        }

        protected void ListBoxOtherRep_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GenerateReport();
        }
    }
}
