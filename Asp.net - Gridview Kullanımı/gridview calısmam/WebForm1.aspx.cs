using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gridview_calısmam
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Liss();
        }

        private void Liss()
        {
            SilebilirsinContext ctx = new SilebilirsinContext();
            ggg.DataSource = ctx.Bu.ToList();
            ggg.DataBind();
        }

        protected void ggg_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SilebilirsinContext ctx = new SilebilirsinContext();

            int id = Convert.ToInt32(ggg.DataKeys[e.RowIndex].Values["KitapNo"].ToString());
            ctx.Bu.Remove(ctx.Bu.FirstOrDefault(x => x.KitapNo == id));
            ctx.SaveChanges();
            Liss();
        }

        protected void ggg_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            ggg.EditIndex = -1;
            Liss();
        }

        protected void ggg_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ggg.EditIndex = e.NewEditIndex;
            Liss();
        }

        protected void ggg_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SilebilirsinContext ctx = new SilebilirsinContext();

            int id = Convert.ToInt32(ggg.DataKeys[e.RowIndex].Values["KitapNo"].ToString());
            Bu temp = ctx.Bu.SingleOrDefault(x => x.KitapNo == id);
            temp.KitapAd = e.NewValues["KitapAd"].ToString();
            temp.KitapYazar = e.NewValues["KitapYazar"].ToString();
            temp.KitapSayfa = Convert.ToInt16(e.NewValues["KitapSayfa"]);
           
            temp.KitapFiyat = Convert.ToDouble(e.NewValues["KitapFiyat"]);

            ctx.SaveChanges();
            ggg.EditIndex = -1;
            Liss();


        }
    }
}