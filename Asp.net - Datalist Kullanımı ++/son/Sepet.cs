using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace son
{
    public class Sepet
    {
        public Sepet()
        {
            Urunler = new List<Products>();
        }

        public List<Products> Urunler { get; set; }
    }
}