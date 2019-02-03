using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DENEME_REGSQL
{
    public partial class rolAta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            drpKullanicilar.DataSource = Membership.GetAllUsers();
            drpKullanicilar.DataTextField = "UserName";
            drpKullanicilar.DataBind();

            drpRoller.DataSource = Roles.GetAllRoles();
            drpRoller.DataBind();
        }

        protected void btnAta_Click(object sender, EventArgs e)
        {
            try
            {
                Roles.AddUserToRole(drpKullanicilar.Text, drpRoller.Text);
                lblSonuc.Text = "Atama Başarıyla tamamlandı";
            }
            catch 
            {

                lblSonuc.Text = "Bir sorun olustu";
            }
        }
    }
}