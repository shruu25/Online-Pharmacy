using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pharmacy.Entities;
using Pharmacy.BusinessLayer;

namespace Pharma.UI
{
    public partial class Customer_UI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void AddUser(object sender, EventArgs e)
        {
            try
            {
                CustomerDetails customerDetails = new CustomerDetails();
                customerDetails.Cust_Id = int.Parse(txtcid.Text);
                customerDetails.Customer_Name = txtname.Text;
                customerDetails.Customer_Age = int.Parse(txtcage.Text);
                customerDetails.Email_id = txtemail.Text;
                customerDetails.Username = txtuser.Text;
                customerDetails.Password = txtpass.Text;
                CustomerDetailsService custservice = new CustomerDetailsService();
                custservice.AddUser(customerDetails);
                lblmsg.Text = "Customer Added";
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;
            }
        }

        
    
    protected void Button1_Click(object sender, EventArgs e)
        {
            txtcid.Text = string.Empty;
            txtname.Text = string.Empty;
            txtcage.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtuser.Text = string.Empty;
            txtpass.Text = string.Empty;
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerLogin.aspx");
        }
    }
}