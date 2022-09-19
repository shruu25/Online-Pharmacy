using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Pharmacy.Entities;
using Pharmacy.Datalayer;

namespace Pharmacy.BusinessLayer
{
    public class CustomerDetailsService
    {
       CustomerDetailsRepo repository;
        public CustomerDetailsService()
        {
            repository = new CustomerDetailsRepo();

        }
        public void AddUser(CustomerDetails customer)
        {
            try
            {
                repository.AddUser(customer);
            }
            catch (Exception)
            {

                throw;
            }
        }
      

            
        
        public List<CustomerDetails> GetCustomers()
        {
            try
            {
                return repository.GetAllCustomers();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
