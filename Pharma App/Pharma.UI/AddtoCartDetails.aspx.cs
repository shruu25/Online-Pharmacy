using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Pharma.UI
{
    public partial class AddtoCartDetails : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["PharmacyDBConn"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataSet = null;
        SqlDataAdapter adapter = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                

                //adding product to gridview

                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("mid");
                dt.Columns.Add("mname");
                dt.Columns.Add("mmanuf");
                dt.Columns.Add("mprice");
                dt.Columns.Add("mquantity");
                dt.Columns.Add("mtotalprice");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();

                        SqlDataAdapter da = new SqlDataAdapter("select * from Med where Med_code=" + Request.QueryString["id"], connection);
                        DataSet ds = new DataSet();
                        da.Fill(ds);


                        dr["sno"] = 1;
                        dr["mid"] = ds.Tables[0].Rows[0]["Med_code"].ToString();
                        dr["mname"] = ds.Tables[0].Rows[0]["Med_name"].ToString();
                        dr["mmanuf"] = ds.Tables[0].Rows[0]["Manufacturer"].ToString();
                        dr["mprice"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["mquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["mtotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddtoCartDetails.aspx");
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();


                        SqlDataAdapter da = new SqlDataAdapter("select * from Med where Med_code=" + Request.QueryString["id"], connection);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["mid"] = ds.Tables[0].Rows[0]["Med_code"].ToString();
                        dr["mname"] = ds.Tables[0].Rows[0]["Med_name"].ToString();
                        dr["mmanuf"] = ds.Tables[0].Rows[0]["Manufacturer"].ToString();
                        dr["mprice"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["mquantity"] = Request.QueryString["quantity"];


                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["mtotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddtoCartDetails.aspx");

                    }
                }

                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }

                }

            }


            orderid();


        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["mprice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }

        public void orderid()
        {
            String alpha = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order_id: " + new string(myArray);
            Session["Orderid"] = orderid;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }

            for (int i = 1; i < dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("AddtoCartDetails.aspx");
        }

    }
}
