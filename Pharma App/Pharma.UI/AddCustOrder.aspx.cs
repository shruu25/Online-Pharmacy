using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pharmacy.BusinessLayer;
using Pharmacy.Entities;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Pharma.UI
{
    public partial class AddCustOrder : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
        }

        
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
           if(e.CommandName == "AddtoCartDetails")
            {
                DropDownList list=( DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddtoCartDetails.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }

        
    }

}