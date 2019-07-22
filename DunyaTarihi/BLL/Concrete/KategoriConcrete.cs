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
    public class KategoriConcrete : IKategori
    {

        public IRepository<Kategori> KategoriRepository;
        public IUnitOfWork KategoriUnitOfWork;
        private Context _dbContext;

        public KategoriConcrete()
        {
            _dbContext = new Context();
            KategoriUnitOfWork = new EFUnitOfWork(_dbContext);
            KategoriRepository = KategoriUnitOfWork.GetRepository<Kategori>();
        }


      
    }
}
