using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REGSQL.MANUEL
{
    public partial class kayitOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            if(txtKullaniciAdi.Text.Length<6)
            { Response.Write("<script> alert('Kullanici Adi 6 harften kısa olamaz  ') </script> ");
                return;
                
            }

            MembershipCreateStatus statuu;
            Membership.CreateUser(txtKullaniciAdi.Text, txtParola.Text, txtMail.Text, txtGS.Text, txtGC.Text, true, out statuu);
            if(statuu==MembershipCreateStatus.Success)
            {
                Response.Redirect("~/giris.aspx");
            }
            else
            {
                Response.Write("<script> alert('Kayit işlemi başarısız..') </script>");
            }
        }
    }
}