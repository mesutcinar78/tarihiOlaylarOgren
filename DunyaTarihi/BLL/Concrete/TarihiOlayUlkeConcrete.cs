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
    public class TarihiOlayUlkeConcrete : ITarihiOlayUlke
    {

        public IRepository<TarihiOlayUlke> TarihiOlayUlkeRepository;
        public IUnitOfWork TarihiOlayUlkeUnitOfWork;
        private Context _dbContext;

        public TarihiOlayUlkeConcrete()
        {
            _dbContext = new Context();
            TarihiOlayUlkeUnitOfWork = new EFUnitOfWork(_dbContext);
            TarihiOlayUlkeRepository = TarihiOlayUlkeUnitOfWork.GetRepository<TarihiOlayUlke>();
        }


      
    }
}
