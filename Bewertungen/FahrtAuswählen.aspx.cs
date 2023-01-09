using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bewertungen
{
    public partial class FahrtAuswählen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_suchen_Click(object sender, EventArgs e)
        {
            string startZeit = txt_StartZeit.Text;
            string endZeit = txt_EndZeit.Text;
            int raucherAuto = 1; //1 == Raucherauto
            List<CommandParameters> commands = new List<CommandParameters>();
            string ort = txt_Ort.Text;
            if(cb_Bewertung.Checked)
            {
                raucherAuto = 0;
            }
            if(cb_Bewertung.Checked && Convert.ToInt32(txtBewertung.Text) >= 1 && Convert.ToInt32(txtBewertung.Text) <= 5)
            {
                 int bewertung = Convert.ToInt32(txtBewertung.Text);
            }
            if(cb_Sitzplätze.Checked && Convert.ToInt32(txt_Sitzplätze.Text) >1)
            {
                int sitzplätze = Convert.ToInt32(txt_Sitzplätze.Text);
            }
            if(cb_Preis.Checked && Convert.ToDouble(txtMaxPreis.Text) >1)
            {
                double preis = Convert.ToDouble(txtMaxPreis.Text);
            }
        }
    }
}