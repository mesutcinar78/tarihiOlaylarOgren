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
    public class DurumConcrete : IDurum
    {

        public IRepository<Durum> DurumRepository;
        public IUnitOfWork DurumUnitOfWork;
        private Context _dbContext;

        public DurumConcrete()
        {
            _dbContext = new Context();
            DurumUnitOfWork = new EFUnitOfWork(_dbContext);
            DurumRepository = DurumUnitOfWork.GetRepository<Durum>();
        }


      
    }
}
