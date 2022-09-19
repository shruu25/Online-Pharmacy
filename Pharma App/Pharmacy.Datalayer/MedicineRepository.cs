using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Pharmacy.Entities;
using System.Web.UI.MobileControls;

namespace Pharmacy.Datalayer
{
    public class MedicineRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["PharmacyDBConn"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataSet = null;

        public void AddMedicine(Medicine medicine)
        {
            try
            {
                command = new SqlCommand($"insert into Med values('{medicine.Med_code}','{medicine.Med_name}','{medicine.Manufacturer}',{medicine.Quantity},{medicine.Price})", connection);
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
        public void DeleteMedicine(string Med_code)
        {
            try
            {
                command = new SqlCommand($"Delete from Med where Med_code={Med_code}", connection);
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
        public void UpdateMedicine(Medicine medicine)
        {
            try
            {
                command = new SqlCommand($"Update Med set price={medicine.Price},quantity={medicine.Quantity} where Med_code={medicine.Med_code}", connection);
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
        public Medicine GetMedById(string Med_name)
        {
            try
            {
                Medicine product = null;
                command = new SqlCommand($"Select * from Med where Med_name={Med_name}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    product = new Medicine();
                    product.Med_code = dr["Med_code"].ToString();
                    product.Med_name = dr["Med_name"].ToString();
                    product.Manufacturer = dr["Manufacturer"].ToString();
                    product.Price = (int)dr["price"];
                    product.Quantity = (int)dr["quantity"];
                }
                return product;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Medicine> GetAllMedicines()
        {
            try
            {
                List<Medicine> medicines = new List<Medicine>();
                command = new SqlCommand($"Select * from Med", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Medicine product = new Medicine();
                    product.Med_code = dr["Med_code"].ToString();
                    product.Med_name = dr["Med_name"].ToString();
                    product.Price = (int)dr["price"];
                    product.Quantity = (int)dr["quantity"];
                    medicines.Add(product); //add product details to list
                }
                return medicines;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
