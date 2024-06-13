using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace Dima__Wataeen__Club
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        Club_DBClass DBCON = new Club_DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if (Session["UID"] == null)
                //{
                //    MainMenu.Visible = false;
                //    if (Request.Url.AbsoluteUri.ToString().Substring(Request.Url.AbsoluteUri.ToString().Length - 12).ToUpper() != "/DEFAULT.ASPX")
                //    {
                //        Response.Redirect("~/default.aspx");
                //    }
                //}
                //else
                //{
                //    string Username = Session.Contents["UID"].ToString();
                //    LbLUserName.Text = Username;
                //    MainMenu.Visible = true;
                //    CreateCustomMenu(Username);
                //}
                CurrentPageName();
                GetPageInfo();
            }
        }

        private void CurrentPageName()
        {
            string PageName = Path.GetFileName(Request.Url.AbsolutePath);
            txtFileName.Text = PageName;
        }

        private void GetPageInfo()
        {
            DBCON.Club_DB();
            using (SqlCommand cmd = new SqlCommand("SP_PageInfo"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELECT");
                //cmd.Parameters.AddWithValue("@FileName", txtFileName.Text);
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
                            txtInfo.Text = dt.Rows[0]["Info"].ToString();
                        }
                        else
                        {
                            txtInfo.Text = "لا توجد تعليمات";
                        }
                    }
                }
            }
        }

        private void CreateCustomMenu(string username)
        {
            if (!IsPostBack)
            {
                DBCON.Club_DB();
                DataTable dt = (DataTable)Session["pages"];
                DataRow[] DRS = dt.Select("ParentID=0", "MenuOrder ASC");
                string parentId;
                MainMenu.Items.Clear();
                for (int i = 0; i < DRS.Length; i++)
                {
                    parentId = DRS[i]["ID"].ToString();
                    MenuItem ParnetItem = new MenuItem(DRS[i]["MenuText"].ToString(), DRS[i]["ID"].ToString(), null, DRS[i]["MenuNavigate"].ToString());
                    MainMenu.Items.Add(ParnetItem);
                    BuiltChild(dt, ParnetItem);
                }
                Session["pages"] = dt;
                Session.Timeout = 30;
            }
        }

        private void BuiltChild(DataTable dt, MenuItem P)
        {
            if (!IsPostBack)
            {
                DataRow[] ch = dt.Select("ParentID=" + P.Value, "MenuOrder ASC");
                for (int j = 0; j < ch.Length; j++)
                {
                    MenuItem chM = new MenuItem(ch[j]["MenuText"].ToString(), ch[j]["ID"].ToString(), null, ch[j]["MenuNavigate"].ToString());
                    P.ChildItems.Add(chM);
                    DataRow[] HasChild = dt.Select("ParentID=" + chM.Value, "MenuOrder ASC");
                    if (HasChild.Length > 0)
                    {
                        BuiltChild(dt, chM);
                    }
                }
            }
        }
    }
}
