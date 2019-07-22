using BLL.Interface;
using DAL;
using DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Concrete
{
    public class UserConcrete : IUser
    {

        public IRepository<ApplicationUser> userRepository;
        public IUnitOfWork userUnitOfWork;
        private Context _dbContext;

        public UserConcrete()
        {
            _dbContext = new Context();
            userUnitOfWork = new EFUnitOfWork(_dbContext);
            userRepository = userUnitOfWork.GetRepository<ApplicationUser>();
        }


      
    }
}
