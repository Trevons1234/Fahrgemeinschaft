using DataBaseWrapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bewertungen
{

    public partial class Bewertung : System.Web.UI.Page
    {
        static string connStrg = WebConfigurationManager.ConnectionStrings["AppDbExt"].ConnectionString;
        public int reviewCount = 0;
        DataBase db = new DataBase(connStrg);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public double AverageRating()
        {
            double sumRating = 0;
            List<double> Rating = new List<double>();
            if (rblPünktlichkeit.SelectedIndex != -1) { Rating.Add(Convert.ToDouble(rblPünktlichkeit.SelectedIndex+1)); }
            if (rblSauberkeit.SelectedIndex != -1) { Rating.Add(Convert.ToDouble(rblSauberkeit.SelectedIndex+1)); }
            if (rblPreis.SelectedIndex != -1) { Rating.Add(Convert.ToDouble(rblPreis.SelectedIndex+1)); }
            if (rblFreundlichkeit.SelectedIndex != -1) { Rating.Add(Convert.ToDouble(rblFreundlichkeit.SelectedIndex+1)); }
            if (rblFahrstil.SelectedIndex != -1) { Rating.Add(Convert.ToDouble(rblFahrstil.SelectedIndex+1)); }
            foreach (double item in Rating)
            {
                sumRating += item;
            }
            double erg = sumRating / Rating.Count;
            lblErg.Text = erg.ToString();
            return erg;
        }

        protected void btnBewertungAbschicken_Click(object sender, EventArgs e)
        {

            double rating = AverageRating();
            DataTable dt = new DataTable();
            try
            {
                OdbcConnection conn = new OdbcConnection(connStrg);
                conn.Open();
                string sqlCmdGetAvgAndSumBewertungen = $"SELECT SumBewertungen, AvgBewertungen from fahrgemeinschaft_user WHERE UserId = 200";
                dt = db.RunQuery(sqlCmdGetAvgAndSumBewertungen);
                double sumBewertung = Convert.ToDouble(dt.Rows[0][0]);
                double avgBewertung = Convert.ToDouble(dt.Rows[0][1]);
                sumBewertung++;
                double newAvgBewertung = (sumBewertung * avgBewertung + rating) / sumBewertung;
                double avgBewertung1 = Math.Round(newAvgBewertung, 2);
                string updateBewertung = $"UPDATE fahrgemeinschaft_user SET SumBewertungen = {sumBewertung}, AvgBewertungen = '{avgBewertung1}' WHERE UserId = 200";
                db.RunQuery(updateBewertung);
                conn.Close();
            }
            catch (Exception)
            {
                lblErg.Text = "You can't rate this user, I'm sorry";
            }

        }
    }
}