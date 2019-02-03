using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BU_SON
{
    public partial class repeater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Listele();
        }

        private void Listele()
        {
            Model1 ctx = new Model1();
            rpt1.DataSource = ctx.Products.ToList();
            rpt1.DataBind();
        }

        protected void rpt1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            //ONEMLIIII KOD @@
            HtmlTableRow str =(HtmlTableRow) e.Item.FindControl("satir");
            if(e.Item.ItemType==ListItemType.Item||e.Item.ItemType==ListItemType.AlternatingItem)
            {

                Products p =(Products)e.Item.DataItem;
                if (p.UnitPrice > 50)
                {
                    str.Style.Add("color", "Red");
                }
                else
                {
                    str.Style.Add("color", "Green");
                }
            }
        }

        protected void rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //LinkButton atııgım da sil e tıklarsak buraya gelıyor...

            //BU OLMADI
            //if(e.Item.ItemType==ListItemType.AlternatingItem||e.Item.ItemType==ListItemType.Item)
            //{
            //    Products p = (Products)e.Item.DataItem;
            //}

            int id = Convert.ToInt32(e.CommandArgument);
            Model1 ctx = new Model1();
            Products p = ctx.Products.FirstOrDefault(x => x.ProductID == id);
            if (e.CommandName=="sil")
            {
                ctx.Products.Remove(p);
                ctx.SaveChanges();
                Listele(); 
            }
            if(e.CommandName=="duzenle")
            {
//..
            }
          
        }
    }
}