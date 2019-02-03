using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _6._12.IBO.MEMBERSHIP.SON
{
    public partial class RolAtama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnRolekle_Click(object sender, EventArgs e)
        {
            Roles.CreateRole(txtRol.Text);
        }
    }
}