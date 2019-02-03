using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace son
{
    public partial class asaxAktifZiyaretciGor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lptAktif.Text
            =Application["aktif"].ToString();
        }
    }
}