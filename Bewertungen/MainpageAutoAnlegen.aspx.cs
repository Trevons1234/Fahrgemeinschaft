using DataBaseWrapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bewertungen
{
    public partial class Mainpage1 : System.Web.UI.Page
    {
        int autoId = 0;
        DataBase db;
        static string connStrg = WebConfigurationManager.ConnectionStrings["AppDbInt"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int userId = Convert.ToInt32(Request.QueryString["userId"]);
                ViewState["userId"] = userId;
                string sqlCmd = "SELECT Marke FROM fahrgemeinschaft_marken ";
                try
                {
                    db = new DataBase(connStrg);
                    DataTable dt = db.RunQuery(sqlCmd);

                    foreach (DataRow dr in dt.Rows)
                    {
                        ddlAutomarke.Items.Add(dr[0].ToString());
                    }
                }
                catch (Exception ex) { lblInfo.Text += ex.Message; }
            }
        }

        protected void btnFahrtAnlegen_Click(object sender, EventArgs e)
        {
            OdbcConnection conn = new OdbcConnection(connStrg);
            int userId = Convert.ToInt32(ViewState["userId"]);
            try
            {
                conn.Open();
                string sqlInsCmd = $"INSERT INTO fahrgemeinschaft_auto (Marke,Kennzeichen,Sitzplätze,Raucherauto, UserId) VALUES('{ddlAutomarke.SelectedItem.Text}','{txtKennzeichen.Text}',{txtAnzSitzpläze.Text},{rblRaucherauto.SelectedValue}, {userId})";
                OdbcCommand cmd = new OdbcCommand(sqlInsCmd, conn);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex) { lblInfo.Text += ex.Message; }
            string auto = ddlAutomarke.SelectedItem.Text + " "+ "("+txtKennzeichen.Text+")";
            Response.Redirect("FahrtAnlegen.aspx?auto="+auto+"&userId="+userId);
        }
    }
}