using DataBaseWrapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bewertungen
{
    public partial class AutoHinzufügen : System.Web.UI.Page
    {
        DataBase db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int userId = Convert.ToInt32(Request.QueryString["userId"]);
                ViewState["userId"] = userId;
                string connStrg = WebConfigurationManager.ConnectionStrings["AppDbAzure"].ConnectionString;
                db = new DataBase(connStrg);
                string sqlCmd = $"SELECT AutoId, CONCAT(Marke,' (',Kennzeichen,')') AS newBez FROM fahrgemeinschaft_auto where UserId like '{userId}'";
                DataTable dt = db.RunQuery(sqlCmd);
                foreach (DataRow dr in dt.Rows)
                {
                    ddlHinzugefügteAutos.Items.Add(dr[1].ToString());
                }
            }
        }

        protected void btnNeuesAutoHinzufügen_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Request.QueryString["userId"]);
            Response.Redirect("/MainpageAutoAnlegen.aspx?userId="+userId);
        }

        protected void btn_FahrtAnlegen_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Request.QueryString["userId"]);
            string auto = ddlHinzugefügteAutos.SelectedValue;
            Response.Redirect("FahrtAnlegen.aspx?auto=" + auto + "&userId=" + userId);
        }
    }
}