using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pharmacy.Entities
{
    public class Medicine
    {
        public string Med_code{ get; set; }
        public string Med_name { get; set; }
        public string Manufacturer { get; set; }
        public int Quantity { get; set; }
       
        public int Price { get; set; }
    }
}
