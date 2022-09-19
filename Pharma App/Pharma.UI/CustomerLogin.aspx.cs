using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pharmacy.BusinessLayer;
using Pharmacy.Entities;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Pharma.UI
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["PharmacyDBConn"].ConnectionString);
        SqlCommand command =null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewPassword.aspx");
        }

        protected void Check_SignIn(object sender, EventArgs e)
        {
            try
            {
                // SqlConnection con = new SqlConnection();
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                command = new SqlCommand("Select * from Customer_Details where username='" + txtuser.Text.Trim() + "' AND pass='" + txtpass.Text.Trim() + "'", connection);
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string sv = dr.GetValue(4).ToString();
                        lblmsg.Text = "You are Logged In" + sv;
                        Response.Redirect("AddCustOrder.aspx");
                    }
                }
                else
                {
                    lblmsg.Text = "Invalid user";
                }

            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void Reset(object sender, EventArgs e)
        {
            txtuser.Text = "";
            txtpass.Text = "";
        }

        
    }
}