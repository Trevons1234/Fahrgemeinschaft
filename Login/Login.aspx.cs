﻿using DataBaseWrapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fahrgemeinschaft
{
    public partial class Login : System.Web.UI.Page
    {
        string connStrg = "Driver={MySQL ODBC 8.0 Unicode Driver};Server=students-db.htlvb.at;Port=3306;Database=2223_5ahwii_oberndorfer;Uid=2223_5ahwii_oberndorfer;Pwd=06.03.2002;Option=3;";
        string sqlCmd;
        DataBase db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DataBase(connStrg);
        }
    }
}