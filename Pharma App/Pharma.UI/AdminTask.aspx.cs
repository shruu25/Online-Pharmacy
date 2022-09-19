using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharma.UI
{
    public partial class AdminTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddMedicine(object sender, EventArgs e)
        {
            Response.Redirect("AddMedicine.aspx");
        }

        protected void AddUser(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDetails.aspx");
        }

        protected void Log_out(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        
    }
}