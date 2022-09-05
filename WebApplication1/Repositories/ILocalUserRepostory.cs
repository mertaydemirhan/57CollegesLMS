using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StudentA.Model;

namespace StudentA.Repositories
{
    public interface ILocalUserRepostory
    {
        List<LocalUser> GetAll();
        LocalUser FindByID(int ID);
        bool AddLocalUser(LocalUser localUser);
        bool UpdateLocalUser(LocalUser localUser);
        bool DeleteLocalUser(int ID);
    }
}
