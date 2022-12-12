using System;
using System.Collections.Generic;
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
        static string connStrg = WebConfigurationManager.ConnectionStrings["AppDbInt"].ConnectionString;
        public int reviewCount = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int AverageRating()
        {

            int rating = 0;
            List<int> Rating = new List<int>();
            Rating.Add(Int32.Parse(rblPünktlichkeit.SelectedValue));
            Rating.Add(Int32.Parse(rblFahrstil.SelectedValue));
            Rating.Add(Int32.Parse(rblSauberkeit.SelectedValue));
            Rating.Add(Int32.Parse(rblFreundlichkeit.SelectedValue));
            Rating.Add(Int32.Parse(rblPreis.SelectedValue));
            for (int i = 0; i < Rating.Count; i++)
            {
                rating += Rating[i];
            }
            int erg = rating / Rating.Count;
            lblErg.Text = erg.ToString();
            return erg;
        }

        protected void btnBewertungAbschicken_Click(object sender, EventArgs e)
        {
            reviewCount++;
            int sumReviews = 0;
            if(rblFahrstil.SelectedValue != null && rblSauberkeit.SelectedValue != null && rblFreundlichkeit.SelectedValue != null && rblPünktlichkeit.SelectedValue != null && rblPreis.SelectedValue != null)
            {
                sumReviews = Convert.ToInt32(rblPünktlichkeit.SelectedValue) + Convert.ToInt32(rblFahrstil.SelectedValue) + Convert.ToInt32(rblSauberkeit.SelectedValue) + Convert.ToInt32(rblFreundlichkeit.SelectedValue) + Convert.ToInt32(rblPreis.SelectedValue);

            }
            int rating = AverageRating();
            User user = new User();
            user.ReviewCount = reviewCount;
            user.AverageReview = sumReviews / reviewCount;
            try
            {
                OdbcConnection conn = new OdbcConnection(connStrg);
                conn.Open();
                string sqlCmd = $"INSERT INTO fahrgemeinschaft_user(UserID, Vorname, Nachname, TelNr, GebDat, SumBewertungen, AvgBewertungen, Benutzername, Passwort, Email) VALUES(200, 'Vorname', 'Nachname', 857765, 06.06, {reviewCount}, {rating},'Benutzername', 'Passwort', 'Email')";
                OdbcCommand cmd = new OdbcCommand(sqlCmd, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}