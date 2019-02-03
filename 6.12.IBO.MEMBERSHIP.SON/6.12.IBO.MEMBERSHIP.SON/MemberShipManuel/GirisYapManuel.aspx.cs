using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _6._12.IBO.MEMBERSHIP.SON
{
    public partial class GirisYapManuel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if(Membership.ValidateUser(txtKullaniciAdi.Text,txtParola.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtKullaniciAdi.Text, true);
            }
        }
    }
}