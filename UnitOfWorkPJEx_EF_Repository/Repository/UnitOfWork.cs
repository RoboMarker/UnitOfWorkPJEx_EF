using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnitOfWorkPJEx_EF_Repository.Context;
using UnitOfWorkPJEx_EF_Repository.Interface;
using UnitOfWorkPJEx_EF_Repository.Models.Data;

namespace UnitOfWorkPJEx_EF_Repository.Repository
{
    public class UnitOfWork: IUnitOfWork,IDisposable
    {
        private dbTestContext _dbContext;

        public IUserRepository Users { get; }

        public UnitOfWork(dbTestContext dbcontext, IUserRepository user)
        {
            Users = user;
            _dbContext = dbcontext;
        }

        public int SaveChanges()
        { 
            return _dbContext.SaveChanges();
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                _dbContext.Dispose();
            }
        }
    }
}
