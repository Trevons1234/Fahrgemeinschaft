using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bewertungen
{
    public partial class Mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibnFahrtAnlegen_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AutoHinzufügen.aspx");
        }
        protected void ibnFahrtBuchen_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("FahrtAuswählen.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}