using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gridview_calısmam
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Liss();
        }

        private void Liss()
        {
            SilebilirsinContext ctx = new SilebilirsinContext();

            gg.DataSource = ctx.Bu.ToList();
            gg.DataBind();
        }

        protected void gg_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SilebilirsinContext ctx = new SilebilirsinContext();

            

            int id = Convert.ToInt32(gg.DataKeys[e.RowIndex].Values["KitapNo"].ToString());

            ctx.Bu.Remove(ctx.Bu.SingleOrDefault(x => x.KitapNo == id));
            ctx.SaveChanges();
            Liss();
        }

        protected void gg_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gg.EditIndex = -1;
            Liss();
        }

        protected void gg_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gg.EditIndex = e.NewEditIndex;
            Liss();
        }

        protected void gg_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SilebilirsinContext ctx = new SilebilirsinContext();

            int id = Convert.ToInt32(gg.DataKeys[e.RowIndex].Values["KitapNo"].ToString());
            Bu temp = ctx.Bu.FirstOrDefault(x => x.KitapNo == id);
            //temp.KitapAd = e.NewValues["KitapAd"].ToString();
            //temp.KitapYazar = e.NewValues["KitapYazar"].ToString();
            //temp.KitapSayfa = Convert.ToInt16(e.NewValues["KitapSayfa"]);
            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            GridViewRow gv = gg.Rows[e.RowIndex];
            //OLAY BUNA @@@@@@@@@@@@@@@@@@@@@@@
            
            TextBox ad =(TextBox) gv.FindControl("txtAd");
            TextBox yazar = gv.FindControl("txtYazar") as TextBox;
            TextBox sayfa = gv.FindControl("txtSayfa") as TextBox;

            temp.KitapAd = ad.Text;
            temp.KitapYazar = yazar.Text;
            temp.KitapSayfa = Convert.ToInt16(sayfa.Text);
            ctx.SaveChanges();
            gg.EditIndex = -1;
            Liss();
        }
    }
}