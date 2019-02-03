using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace son
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Listele();
        }

        private void Listele()
        {
            NorthwindContext ctx = new NorthwindContext();
            dataa.DataSource = ctx.Products.ToList();
            dataa.DataBind();
        }

        protected void dataa_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            NorthwindContext ctx = new NorthwindContext();
            int id = Convert.ToInt32(e.CommandArgument);
            ctx.Products.Remove(ctx.Products.FirstOrDefault(x => x.ProductId == id));
            ctx.SaveChanges();
            Listele();

        }

        protected void dataa_CancelCommand(object source, DataListCommandEventArgs e)
        {
            dataa.EditItemIndex = -1;
            Listele();
        }

        protected void dataa_EditCommand(object source, DataListCommandEventArgs e)
        {
            dataa.EditItemIndex = e.Item.ItemIndex;
            Listele();

        }

        protected void dataa_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            NorthwindContext ctx = new NorthwindContext();

            //LinkButton sa = (LinkButton)e.Item.FindControl("LinkButton2");
            int id = Convert.ToInt32(e.CommandArgument);

            Products temp = ctx.Products.FirstOrDefault(x => x.ProductId == id);

            TextBox pro = (TextBox)e.Item.FindControl("txtPro");
            TextBox fiyat = (TextBox)e.Item.FindControl("txtFiyat");
            TextBox stok = (TextBox)e.Item.FindControl("txtStok");

            temp.ProductName = pro.Text;
            temp.UnitPrice = Convert.ToDecimal(fiyat.Text);
            temp.UnitsInStock = Convert.ToInt16(stok.Text);

            ctx.SaveChanges();
            dataa.EditItemIndex = -1;
            Listele();

        }

        protected void dataa_ItemCommand(object source, DataListCommandEventArgs e)
        {
            NorthwindContext ctx = new NorthwindContext();

            if (e.CommandName == "SepeteAt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Products p = ctx.Products.SingleOrDefault(x => x.ProductId == id);
                if (Session["sepet"] == null)
                    Session["sepet"] = new Sepet();

                Sepet aktif = (Sepet)Session["sepet"];
                    aktif.Urunler.Add(p);
                //Aynı Sessiona attıgımız urunlerı kaybetmemek ıcın yaptık bunu
                Session["sepet"] = aktif;

                
            }
        }
    }
}