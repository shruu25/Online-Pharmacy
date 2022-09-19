using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pharmacy.Entities;
using Pharmacy.BusinessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Pharma.UI
{
    public partial class AddMedicine : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Add_Medicine(object sender,EventArgs e)
        {
            try
            {
                Medicine medicine = new Medicine();
                medicine.Med_code = txtcode.Text;
                medicine.Med_name = txtmedname.Text;
                medicine.Manufacturer = txtmanf.Text;
                medicine.Quantity = int.Parse(txtamt.Text);             
                medicine.Price = int.Parse(txtprice.Text);
                Medicineservice medicineservice = new Medicineservice();
                medicineservice.AddMedicine(medicine);
                lblmsg.Text = "Medicine Added";
            }
            catch(Exception ex)
            {
                lblmsg.Text = ex.Message;
            }
        }

        public void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetMedicines.aspx");
        }
    }
}