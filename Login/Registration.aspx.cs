using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using DataBaseWrapper;
using System.Web.Configuration;

namespace Fahrgemeinschaft
{
    public partial class Registration : System.Web.UI.Page
    {
        string connStrg = "Driver={MySQL ODBC 8.0 Unicode Driver};Server=students-db.htlvb.at;Port=3306;Database=2223_5ahwii_oberndorfer;Uid=2223_5ahwii_oberndorfer;Pwd=06.03.2002;Option=3;";
        string sqlCmd;
        DataBase db;


        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DataBase(connStrg);
            

            if (!Page.IsPostBack)
            {
                lblFirstnameInfo.ForeColor = System.Drawing.Color.Red;
                lblFirstnameInfo.Text = "";

                lblLastnameInfo.ForeColor = System.Drawing.Color.Red;
                lblLastnameInfo.Text = "";

                lblEMailInfo.ForeColor = System.Drawing.Color.Red;
                lblEMailInfo.Text = "";

                lblPasswordInfo.ForeColor = System.Drawing.Color.Red;
                lblPasswordInfo.Text = "";

                lblPhoneInfo.ForeColor = System.Drawing.Color.Red;
                lblPhoneInfo.Text = "";

                lblBirthdayInfo.ForeColor = System.Drawing.Color.Red;
                lblBirthdayInfo.Text = "";
            }
        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            bool noErrors = false;

            // Vorname prüfen
            if (txtFirstname.Text.Length == 0)
            {
                lblFirstnameInfo.Text = "Vorname ist ein Pflichtfeld!";
                noErrors = false;
            }
            else
            {
                lblFirstnameInfo.Text = "";
                noErrors = true;
            }


            // Nachname prüfen
            if (txtLastname.Text.Length == 0)
            {
                lblLastnameInfo.Text = "Nachname ist ein Pflichtfeld!";
                noErrors = false;
            }
            else
            {
                lblLastnameInfo.Text = "";
                noErrors = true;
            }


            // E-Mail prüfen 
            if (txtEMail.Text.Length == 0)
            {
                lblEMailInfo.Text = "E-Mail ist ein Pflichtfeld!";
                noErrors = false;
            }
            else if (!txtEMail.Text.Contains("@"))
            {
                lblEMailInfo.Text = "Ungültige E-Mail";
                noErrors = false;
            }
            else
            {
                lblEMailInfo.Text = "";
                noErrors = true;
            }


            // Passwort prüfen 
            bool containsDigit = false;
            foreach (char c in txtPassword.Text)
            {
                if (Char.IsDigit(c))
                {
                    lblPasswordInfo.Text = "";
                    containsDigit = true;
                }

                if (!containsDigit)
                {
                    lblPasswordInfo.Text = "Passwort muss mindestens eine Ziffer enthalten!";
                    noErrors = false;
                }
            }

            if (txtPassword.Text.Length == 0)
            {
                lblPasswordInfo.Text = "Passwort ist ein Pflichtfeld!";
                noErrors = false;
            }
            else if (txtPassword.Text.Length < 8)
            {
                lblPasswordInfo.Text = "Passwort muss mindestens acht Zeichen lang sein!";
                noErrors = false;
            }
            else
            {
                lblPasswordInfo.Text = "";
                noErrors = true;
            }


            // Telefonnummer prüfen 
            if (txtPhone.Text.Length == 0)
            {
                lblPhoneInfo.Text = "Tel-Nummer ist ein Pflichtfeld!";
                noErrors = false;
            }
            else
            {
                if (txtPhone.Text[0] != '+')
                {
                    lblPhoneInfo.Text = "Tel-Nummer muss mit '+' anfangen!";
                    noErrors = false;
                }
                else
                {
                    lblPhoneInfo.Text = "";
                    noErrors = true;
                }
            }
            

            // Geburtsdatum prüfen 
            if (txtBirthday.Text.Length == 0)
            {
                lblBirthdayInfo.Text = "Geburtsdatum ist ein Pflichtfeld!";
                noErrors = false;
            }
            else
            {
                lblBirthdayInfo.Text = "";
                noErrors = true;
            }


            OdbcConnection conn = new OdbcConnection(connStrg);
            try
            {
                conn.Open();

                if (noErrors)
                {
                    sqlCmd = $"SELECT MAX(UserId) FROM fahrgemeinschaft_user";

                    int userId = (int)db.RunQueryScalar(sqlCmd) + 1;

                    sqlCmd = $"INSERT INTO fahrgemeinschaft_user VALUES('{txtFirstname.Text}','{txtLastname.Text}','{txtPhone.Text}','{txtBirthday.Text}',0,0," +
                        $"'{txtFirstname.Text}.{txtLastname.Text}#{userId}','{txtPassword.Text}','{txtEMail.Text}')";

                    db.RunNonQuery(sqlCmd);
                    Response.Redirect("MainpageAutoAnlegen.aspx");
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }
            
        }
    }
}
