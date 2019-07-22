using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DATA;

namespace BLL.Concrete
{
    public class KitaplikConcrete : IKitaplik
    {

        public IRepository<Kitaplik> kitaplikRepository;
        public IUnitOfWork kitaplikUnitOfWork;
        private Context _dbContext;

        public KitaplikConcrete()
        {
            _dbContext = new Context();
            kitaplikUnitOfWork = new EFUnitOfWork(_dbContext);
            kitaplikRepository = kitaplikUnitOfWork.GetRepository<Kitaplik>();
        }


        public List<Kitaplik> GetByKullanici(string userID)
        {
            throw new NotImplementedException();
        }
    }
}
