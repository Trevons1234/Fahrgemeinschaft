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
            int userId = Convert.ToInt32(Request.QueryString["userId"]);
            ViewState["userId"] = userId;
            btnLogIn.Visible = false;
            btnSignUp.Visible = false;
        }

        protected void ibnFahrtAnlegen_Click(object sender, ImageClickEventArgs e)
        {
            int userId = Convert.ToInt32(ViewState["userId"]);
            Response.Redirect("AutoHinzufügen.aspx?userId="+userId);
        }
        protected void ibnFahrtBuchen_Click(object sender, ImageClickEventArgs e)
        {
            int userId = Convert.ToInt32(ViewState["userId"]);
            Response.Redirect("FahrtAuswählen.aspx?userId="+userId);
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