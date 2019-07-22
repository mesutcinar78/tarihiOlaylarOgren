using BLL.Interface;
using DAL;
using DATA;
using DATAA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Concrete
{
    public class UlkeConcrete : IUlke
    {

        public IRepository<Ulke> UlkeRepository;
        public IUnitOfWork UlkeUnitOfWork;
        private Context _dbContext;

        public UlkeConcrete()
        {
            _dbContext = new Context();
            UlkeUnitOfWork = new EFUnitOfWork(_dbContext);
            UlkeRepository = UlkeUnitOfWork.GetRepository<Ulke>();
        }

        public int GetUlkeID(string ulkeKodu)
        {

            int ulkeID =  UlkeRepository.Get(x => x.UlkeKod == ulkeKodu).UlkeID;
            
            return ulkeID;
        }
    }
}
