using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pharmacy.Datalayer;
using Pharmacy.Entities;
using System.Configuration;

namespace Pharmacy.BusinessLayer
{
    public class Medicineservice
    {
        MedicineRepository repository;
        public Medicineservice()
        {
            repository = new MedicineRepository();
        }
        public void AddMedicine(Medicine medicine)
        {
            try
            {
                repository.AddMedicine(medicine);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteMedicine(string ICD_code)
        {
            try
            {
                repository.DeleteMedicine(ICD_code);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateMedicine(Medicine medicine)
        {
            try
            {
                repository.UpdateMedicine(medicine);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public Medicine GetMedById(string Med_name)
        {
            try
            {
                return repository.GetMedById(Med_name);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Medicine> GetMedicines() 
        {
            try
            {
                return repository.GetAllMedicines();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}

