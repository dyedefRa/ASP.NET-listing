using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace _6._12.IBO.MEMBERSHIP.SON
{
    public partial class KayitOlManuel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text.Length<7)

            {
                Response.Write("<script> alert('En az 8 olacak'); </script");
                return;

            }
            MembershipCreateStatus status;
            Membership.CreateUser(txtKullaniciAdi.Text,
                txtParola.Text,
                txtEmail.Text,
                txtGC.Text,
                txtGS.Text, true, out status);

            if (status==MembershipCreateStatus.Success)
            {
                Response.Redirect("~/GirisYapManuel.aspx");
            }
            else
            {
                Response.Write("<script> alert('Kullanici ekleme işlemi başarısız'); </script>");
            }
                
        }
    }
}