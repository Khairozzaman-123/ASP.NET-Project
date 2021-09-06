using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Trainning_Center_Management_Project
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["th"] = 0;
            Application["au"] = 0;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Application["th"] = (int)Application["th"] + 1;
            Application["au"] = (int)Application["au"] + 1;
        }
        protected void Session_End(object sender, EventArgs e)
        {
            Application["au"] = (int)Application["au"] - 1;
        }
    }
}