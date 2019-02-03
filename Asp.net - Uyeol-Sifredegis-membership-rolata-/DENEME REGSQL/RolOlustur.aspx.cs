using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DENEME_REGSQL
{
    public partial class RolOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRolEkle_Click(object sender, EventArgs e)
        {
            Roles.CreateRole(txtRolEkle.Text);
        }
    }
}