using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using DataBaseWrapper;
using System.Web.Configuration;
using System.Data;

namespace Bewertungen
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


            // Vorname prüfen
            bool firstnameValid;
            if (txtFirstname.Text.Length == 0)
            {
                lblFirstnameInfo.Text = "Vorname ist ein Pflichtfeld!";
                firstnameValid = false;
            }
            else
            {
                lblFirstnameInfo.Text = "";
                firstnameValid = true;
            }


            // Nachname prüfen
            bool lastnameValid;
            if (txtLastname.Text.Length == 0)
            {
                lblLastnameInfo.Text = "Nachname ist ein Pflichtfeld!";
                lastnameValid = false;
            }
            else
            {
                lblLastnameInfo.Text = "";
                lastnameValid = true;
            }


            // E-Mail prüfen 
            bool emailValid;
            if (txtEMail.Text.Length == 0)
            {
                lblEMailInfo.Text = "E-Mail Adresse ist ein Pflichtfeld!";
                emailValid = false;
            }
            else if (!txtEMail.Text.Contains("@"))
            {
                lblEMailInfo.Text = "Ungültige E-Mail Adresse";
                emailValid = false;
            }
            else
            {
                lblEMailInfo.Text = "";
                emailValid = true;
            }


            // Passwort prüfen 
            bool passwordValid = false;
            bool containsDigit = false;
            foreach (char c in txtPassword.Text)
            {
                if (Char.IsDigit(c))
                {
                    lblPasswordInfo.Text = "";
                    containsDigit = true;
                    passwordValid = true;
                }

                if (!containsDigit)
                {
                    lblPasswordInfo.Text = "Passwort muss mindestens eine Ziffer enthalten!";
                    passwordValid = false;
                }
            }

            if (txtPassword.Text.Length == 0)
            {
                lblPasswordInfo.Text = "Passwort ist ein Pflichtfeld!";
                passwordValid = false;
            }
            else if (txtPassword.Text.Length < 8)
            {
                lblPasswordInfo.Text = "Passwort muss mindestens acht Zeichen lang sein!";
                passwordValid = false;
            }
            else if (containsDigit)
            {
                lblPasswordInfo.Text = "";
                passwordValid = true;
            }


            // Telefonnummer prüfen 
            bool phoneValid;
            if (txtPhone.Text.Length == 0)
            {
                lblPhoneInfo.Text = "Tel-Nummer ist ein Pflichtfeld!";
                phoneValid = false;
            }
            else
            {
                if (txtPhone.Text[0] != '+')
                {
                    lblPhoneInfo.Text = "Tel-Nummer muss mit '+' anfangen!";
                    phoneValid = false;
                }
                else
                {
                    lblPhoneInfo.Text = "";
                    phoneValid = true;
                }
            }


            // Geburtsdatum prüfen 
            bool birthdayValid;
            if (txtBirthday.Text.Length == 0)
            {
                lblBirthdayInfo.Text = "Geburtsdatum ist ein Pflichtfeld!";
                birthdayValid = false;
            }
            else
            {
                lblBirthdayInfo.Text = "";
                birthdayValid = true;
            }

            


            OdbcConnection conn = new OdbcConnection(connStrg);
            try
            {
                conn.Open();


                //Prüfen, ob E-Mail bereits existiert
                sqlCmd = "SELECT Email FROM fahrgemeinschaft_user";
                DataTable dt = db.RunQuery(sqlCmd);

                foreach (DataRow row in dt.Rows)
                {
                    if ((row["Email"].ToString() ?? "") == txtEMail.Text)
                    {
                        lblEMailInfo.Text = "E-Mail Adresse wird bereits verwendet!";
                        emailValid = false;
                    }
                }


                //Prüfen, ob Telefonnummer bereits existiert
                sqlCmd = "SELECT TelNr FROM fahrgemeinschaft_user";
                dt = db.RunQuery(sqlCmd);

                foreach (DataRow row in dt.Rows)
                {
                    if ((row["TelNr"].ToString() ?? "") == txtPhone.Text)
                    {
                        lblPhoneInfo.Text = "Telefonnummer wird bereits verwendet!";
                        phoneValid = false;
                    }
                }





                if (firstnameValid && lastnameValid && emailValid && passwordValid && phoneValid && birthdayValid)
                {
                    int userId;

                    sqlCmd = $"SELECT MAX(UserId) FROM fahrgemeinschaft_user";
                    object val = db.RunQueryScalar(sqlCmd);

                    if (val == DBNull.Value)
                    {
                        userId = 1;
                    }
                    else
                    {
                        userId = Convert.ToInt32(val) + 1;
                    }

                    sqlCmd = $"INSERT INTO fahrgemeinschaft_user VALUES('{userId}','{txtFirstname.Text}','{txtLastname.Text}','{txtPhone.Text}','{txtBirthday.Text}',0,0," +
                        $"'{txtFirstname.Text}.{txtLastname.Text}#{userId}','{txtPassword.Text}','{txtEMail.Text}')";

                    db.RunNonQuery(sqlCmd);
                    Response.Redirect("Page.aspx");
                }
            }
            finally
            {
                conn.Close();
            }
            
        }
    }
}
