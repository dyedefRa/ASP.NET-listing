using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _6._12.IBO.MEMBERSHIP.SON
{
    public partial class RolAtama1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {if (IsPostBack) return;
            Liss();
        }

        private void Liss()
        {
            drpKullanicilar.DataSource = Membership.GetAllUsers();
            drpKullanicilar.DataTextField = "UserName";
            drpKullanicilar.DataBind();

            drpRoller.DataSource = Roles.GetAllRoles();

            drpRoller.DataBind();
        }

        protected void btnAta_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(drpKullanicilar.Text, drpRoller.Text);
        }
    }
}