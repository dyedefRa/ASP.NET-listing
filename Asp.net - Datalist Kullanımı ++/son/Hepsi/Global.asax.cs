using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace son
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }
        
        protected void Session_Start(object sender, EventArgs e)
        {// SESSION BASLADIGINDA
            if (Application["aktif"] == null)
                Application["aktif"] = 0;
            int aktif =(int) Application["aktif"];
            aktif++;
            Application["aktif"] = aktif;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {//UYGULAMAYA BIR TALEP GONDERILDIGI ZAMAN

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {//LOGIN OLDUKTAN SONRA

        }

        protected void Application_Error(object sender, EventArgs e)
        {//UYGULAMADA HERHANGI BIR HATA OLDUGUNDA

        }

        protected void Session_End(object sender, EventArgs e)
        {//SESSION SONLANDIGINDA 
            int aktif = (int)Application["aktif"];
            aktif--;
            Application["aktif"] = aktif;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}