using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharma.UI
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string admin = txtadmin.Text;
            string pwd = txtpwd.Text;
            if(txtadmin.Text == "Shruu" && txtpwd.Text == "Shru123")
            {
                lblmsg.Text = "You are Logged In";
                Response.Redirect("AdminTask.aspx");
            }

          //  lblmsg.Text = "You are Logged In";
           // Response.Redirect("AdminTask.aspx");
        }

        protected void Reset(object sender, EventArgs e)
        {
            txtadmin.Text = "";
            txtpwd.Text = "";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            txtpwd.Text = string.Empty;
            Response.Redirect("SetAdminPassword.aspx");

        }

       

        
    }
}