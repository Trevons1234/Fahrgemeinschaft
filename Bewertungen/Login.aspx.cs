using DataBaseWrapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bewertungen
{
    public partial class Login : System.Web.UI.Page
    {
        string connStrg = "Driver={MySQL ODBC 8.0 Unicode Driver};Server=students-db.htlvb.at;Port=3306;Database=2223_5ahwii_oberndorfer;Uid=2223_5ahwii_oberndorfer;Pwd=06.03.2002;Option=3;";
        string sqlCmd;
        DataBase db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DataBase(connStrg);

            if (!Page.IsPostBack)
            {
                lblEMailInfo.ForeColor = System.Drawing.Color.Red;
                lblEMailInfo.Text = "";

                lblPasswordInfo.ForeColor = System.Drawing.Color.Red;
                lblPasswordInfo.Text = "";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtEMail.Text == "")
            {
                lblEMailInfo.Text = "E-Mail kann nicht leer sein.";
            }
            else
            {
                lblEMailInfo.Text = "";
            }

            if (txtPassword.Text == "")
            {
                lblPasswordInfo.Text = "Passwort kann nicht leer sein.";
            }



            sqlCmd = $"SELECT * FROM fahrgemeinschaft_user WHERE Email = '{txtEMail.Text}'";

            DataTable dt = db.RunQuery(sqlCmd);
            bool emailFound = false;
            string email = "";
            foreach (DataRow row in dt.Rows)
            {
                if ((row["Email"].ToString() ?? "") == txtEMail.Text)
                {
                    emailFound = true;
                    email = txtEMail.Text;
                    break;
                }
            }
            if (!emailFound)
            {
                lblEMailInfo.Text = "Es existiert kein Account mit dieser EMail.";
            }

            bool passwordFound = false;
            foreach (DataRow row in dt.Rows)
            {
                if ((row["Passwort"].ToString() ?? "") == txtPassword.Text)
                {
                    passwordFound = true;
                    break;
                }
            }
            string command;
            if (emailFound && passwordFound)
            {
                command = $"SELECT UserId FROM fahrgemeinschaft_user WHERE Email LIKE '{email}'";
                int userId = Convert.ToInt32(db.RunQueryScalar(command));
                Response.Redirect("Page.aspx?userId=" + userId);
            }
            else
            {
                lblPasswordInfo.Text = "EMail oder Passwort falsch!";
            }

        }
    }
}
