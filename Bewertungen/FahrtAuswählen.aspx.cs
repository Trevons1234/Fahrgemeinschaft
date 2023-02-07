using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseWrapper;

namespace Bewertungen
{
    public partial class FahrtAuswählen : System.Web.UI.Page
    {
        DataBase db;
        string connStrg = WebConfigurationManager.ConnectionStrings["AppDbInt"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_suchen_Click(object sender, EventArgs e)
        {
            string startZeit = txt_StartZeit.Text;
            string endZeit = txt_EndZeit.Text;
            int raucherAuto = 0; //1 == Raucherauto
            string ort = txt_Ort.Text;
            string command = $"SELECT Strecke, Startzeit, Ankunft,Preis, fahrgemeinschaft_auto.Kennzeichen, fahrgemeinschaft_auto.Sitzplätze, fahrgemeinschaft_auto.Raucherauto, fahrgemeinschaft_user.AvgBewertungen FROM fahrgemeinschaft_fahrt JOIN fahrgemeinschaft_auto ON fahrgemeinschaft_fahrt.AutoId = fahrgemeinschaft_auto.AutoId JOIN fahrgemeinschaft_user ON fahrgemeinschaft_user.UserId = fahrgemeinschaft_fahrt.UserId Where ";
            if (cb_Bewertung.Checked && Convert.ToInt32(txtBewertung.Text) >= 1 && Convert.ToInt32(txtBewertung.Text) <= 5)
            {
                int bewertung = Convert.ToInt32(txtBewertung.Text);
                string cmdBewertung = $"Bewertung like '{bewertung}' AND ";
                command += cmdBewertung;
            }
            if (cb_Sitzplätze.Checked && Convert.ToInt32(txt_Sitzplätze.Text) > 1)
            {
                int sitzplätze = Convert.ToInt32(txt_Sitzplätze.Text);
                string cmdSitzplatz = $"Sitzplätze <= '{sitzplätze}' AND ";
                command += cmdSitzplatz;

            }
            if (cb_Preis.Checked && Convert.ToDouble(txtMaxPreis.Text) > 1)
            {
                double preis = Convert.ToDouble(txtMaxPreis.Text);
                string cmdPreis = $"Preis <= {preis} AND  ";
                command += cmdPreis;
            }
            if (cb_Raucher.Checked)
            {
                raucherAuto = 1;
                string cmdRaucherauto = $"Raucherauto like '{raucherAuto}' AND  ";
                command += cmdRaucherauto;
            }
            string temp = ort;
            ort = $"Strecke like '%{temp}%'";
            command += ort;

            DataTable dt = new DataTable();
            try
            {
                db = new DataBase(connStrg);
                dt = db.RunQuery(command);
            }
            catch (Exception ex)
            {
            }
            finally
            {
                db.Close();
            }
            gv_Data.DataSource = dt;
            gv_Data.DataBind();
        }
        protected void btn_Buchen_Click(object sender, EventArgs e)
        {

        }
    }
}