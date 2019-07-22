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
    public class KitaplikTarihiOlayConcrete : IKitaplikTarihiOlay
    {

        public IRepository<KitaplikTarihiOlay> KitaplikTarihiOlayRepository;
        public IUnitOfWork KitaplikTarihiOlayUnitOfWork;
        private Context _dbContext;

        public KitaplikTarihiOlayConcrete()
        {
            _dbContext = new Context();
            KitaplikTarihiOlayUnitOfWork = new EFUnitOfWork(_dbContext);
            KitaplikTarihiOlayRepository = KitaplikTarihiOlayUnitOfWork.GetRepository<KitaplikTarihiOlay>();
        }


      
    }
}
