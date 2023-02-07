using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseWrapper;

namespace Bewertungen
{
    public partial class Fahrt_anlegen : System.Web.UI.Page
    {
        static string connStrg = WebConfigurationManager.ConnectionStrings["AppDbInt"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string auto = Request.QueryString["auto"].ToString();
            ViewState["Auto"] = auto;
            int userId = Convert.ToInt32(Request.QueryString["userId"]);
            ViewState["userId"] = userId;
            lbl_info.Text = "";
            if (Page.IsPostBack)
            {

            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string[] input;
            if(string.IsNullOrEmpty(txt_Strecke.Text))
            {
                args.IsValid = false;
            }
            else
            {
                if(txt_Strecke.Text.Contains(","))
                {
                    input = txt_Strecke.Text.Split(',');
                    if(input.Length > 1)
                    {
                        args.IsValid = true;
                    }
                    else
                    {
                        lbl_info.Text = "Bitte mehr als eine ortschaft angeben!";
                        args.IsValid = false;
                    }
                }
                else
                {
                    lbl_info.Text = "Strecke beistrichgetrennt eingeben";
                    args.IsValid=false;
                }
            }
        }

        protected void btn_FahrtAnlegen_Click(object sender, EventArgs e)
        {
            int carid = GetCarId();
            int userId = Convert.ToInt32(ViewState["userId"]);
            string preis = txt_Preis.Text;
            if(string.IsNullOrEmpty(preis))
            {
                preis = "0";
            }
            OdbcConnection conn = new OdbcConnection(connStrg);
            try
            {
                conn.Open();
                string sqlInsCmd = $"INSERT INTO fahrgemeinschaft_fahrt (Strecke,Startzeit,Ankunft,Preis,AutoId,UserId) VALUES('{txt_Strecke.Text}','{txt_Startzeit.Text}','{txt_Ankunft.Text}','{preis}', '{carid}', '{userId}')";
                OdbcCommand cmd = new OdbcCommand(sqlInsCmd, conn);
                cmd.ExecuteNonQuery();
                lbl_info.Text = "Fahrt wurde angelegt!";
                Response.Redirect("Page.aspx?userId="+userId);
            }
            catch (Exception ex) 
            {
                Console.WriteLine(ex.Message);
                lbl_info.Text = "Fahrt konnte nich angelegt werden";
            }
        }

        private int GetCarId()
        {
            string a = ViewState["Auto"].ToString();
            char[] c = a.ToCharArray();
            int whiteSpace = 0;
            char[] trimChars = new char[] {'(',')', ' '};
            for (int i = 0; i < c.Length; i++)
            {
                if(c[i] == ' ')
                {
                    whiteSpace = i;
                    break;
                }
            }
            string marke = a.Substring(0, whiteSpace);
            string kennzeichen = a.Substring(whiteSpace).Trim(trimChars);
            OdbcConnection conn = new OdbcConnection(connStrg);
            string command = $"Select AutoId from fahrgemeinschaft_auto where Marke = '{marke}' AND Kennzeichen = '{kennzeichen}'";
            int id = 0;
            try
            {
                conn.Open();
                OdbcCommand cmd = new OdbcCommand(command,conn);
                id = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch(Exception ex)
            { 
                throw new ApplicationException(ex.Message);
            }
            return id;
        }

        protected void cv_Startzeit_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string input = txt_Startzeit.Text;
            if(input.Contains(':'))
            {
                args.IsValid = true ;
            }
            else args.IsValid = false ;

        }

        protected void cv_Ankunftszeit_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string input = txt_Ankunft.Text;
            if(input.Contains(':'))
            {
                args.IsValid = true;
            }
            else args.IsValid = false;
        }
    }
}