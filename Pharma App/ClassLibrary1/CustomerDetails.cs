using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pharmacy.Entities
{
    public class CustomerDetails
    {
        public int Cust_Id { get; set; }
        public string Customer_Name { get; set; }
        public int Customer_Age { get; set; }
        public string Email_id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
    }
}
