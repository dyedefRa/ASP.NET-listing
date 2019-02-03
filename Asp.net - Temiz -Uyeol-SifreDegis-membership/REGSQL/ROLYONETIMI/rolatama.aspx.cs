using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REGSQL.ROLYONETIMI
{
    public partial class rolatama : System.Web.UI.Page
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

        protected void btnATA_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(drpKullanicilar.Text, drpRoller.Text);


        }
    }
}