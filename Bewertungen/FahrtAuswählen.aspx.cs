using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseWrapper;

namespace Bewertungen
{
    public partial class FahrtAuswählen : System.Web.UI.Page
    {
        DataBase db;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_suchen_Click(object sender, EventArgs e)
        {
            string startZeit = txt_StartZeit.Text;
            string endZeit = txt_EndZeit.Text;
            int raucherAuto = 0; //1 == Raucherauto
            string ort;
            List<CommandParameters> commands = new List<CommandParameters>();
            if (!cb_Raucher.Checked)
            if(cb_Bewertung.Checked && Convert.ToInt32(txtBewertung.Text) >= 1 && Convert.ToInt32(txtBewertung.Text) <= 5)
            {
                int bewertung = Convert.ToInt32(txtBewertung.Text);
                commands.Add(new CommandParameters("Bewertung", bewertung.ToString()));
            }
            if(cb_Sitzplätze.Checked && Convert.ToInt32(txt_Sitzplätze.Text) >1)
            {
                int sitzplätze = Convert.ToInt32(txt_Sitzplätze.Text);
                commands.Add(new CommandParameters("Sitzplatz", sitzplätze.ToString()));

            }
            if(cb_Preis.Checked && Convert.ToDouble(txtMaxPreis.Text) >1)
            {
                double preis = Convert.ToDouble(txtMaxPreis.Text);
                commands.Add(new CommandParameters("Preis", preis.ToString()));
            }
            if(cb_Raucher.Checked)
            {
                raucherAuto = 1;
                commands.Add(new CommandParameters("Raucherauto", raucherAuto.ToString()));
            }
            //commands.Add(new CommandParameters($"{ort}",ort)); 
            //Wohnort hinzufügen


            string connStrg = WebConfigurationManager.ConnectionStrings["AppDbInt"].ConnectionString;
            DataTable dt = new DataTable();
            try
            {
                db = new DataBase(connStrg);
                dt = db.RunQuery(connStrg, commands.ToArray());
            }
            catch(Exception ex)
            { 
            }
            finally
            {
                db.Close();
            }
            gv_Data.DataSource = dt;
            gv_Data.DataBind();
        }
    }
}