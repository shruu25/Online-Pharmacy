using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pharmacy.Entities;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Pharmacy.Datalayer
{
    public class CustomerDetailsRepo
    {

      SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["PharmacyDBConn"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataSet = null;
        SqlDataAdapter adapter = null;
        public void AddUser(CustomerDetails customer)
        {
            try
            {
                command = new SqlCommand($"Insert into Customer_Details values({customer.Cust_Id},'{customer.Customer_Name}',{customer.Customer_Age},'{customer.Email_id}','{customer.Username}','{customer.Password}')", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
       public DataTable CheckSignIn(CustomerDetails customer)
        {
            try
            {
                DataTable dt = new DataTable();
                adapter = new SqlDataAdapter($"Select * from Customer_Details where Cust_Id={customer.Cust_Id} and username='{customer.Username}' and pass='{customer.Password}'", connection);
                
                adapter.Fill(dt);
                return dt;
               
            }
            catch(Exception)
            {
                throw;
            }
            
         
        }

        public List<CustomerDetails> GetAllCustomers()
        {
            try
            {
                List<CustomerDetails> customer = new List<CustomerDetails>();
                command = new SqlCommand($"Select * from Customer_Details", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    CustomerDetails customer1 = new CustomerDetails();
                    customer1.Cust_Id = (int)dr["Cust_Id"];
                    customer1.Customer_Name = dr["Customer_Name"].ToString();
                    customer1.Customer_Age = (int)dr["Customer_Age"];
                    customer1.Email_id = dr["Email_id"].ToString();
                    customer1.Username = dr["username"].ToString();
                    customer1.Password = dr["pass"].ToString();
                    customer.Add(customer1); //add customer details to list
                }
                return customer;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }

}  
