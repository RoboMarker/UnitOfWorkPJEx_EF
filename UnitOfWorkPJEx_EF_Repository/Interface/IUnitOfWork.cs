using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitOfWorkPJEx_EF_Repository.Interface
{
    public interface IUnitOfWork
    {
        IUserRepository Users { get; }

        int SaveChanges();
    }
}
