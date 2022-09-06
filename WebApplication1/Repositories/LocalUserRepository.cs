using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using StudentA.Model;
using System.Linq.Expressions;

namespace StudentA.Repositories
{
    public class LocalUserRepository : ILocalUserRepository
    {
        private IDbConnection _db;

        public LocalUserRepository()
        {
            _db = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconstring"].ConnectionString);
        }
        public LocalUser CheckUserPw(string UserName, string Password)
        {
            var req = _db.Query<LocalUser>("Select UserName,Password From LocalUser WHERE UserName=@UserName AND Password=@Password", new { UserName = UserName, Password = Password }).FirstOrDefault();
            return req;
        }
        public List<LocalUser> GetAll()
        {
            return this._db.Query<LocalUser>("Select * from LocalUser;").ToList();
        }
        public LocalUser FindByID(int ID)
        {
            return this._db.Query("SELECT * FROM LocalUser WHERE ID=@Id", new { Id = ID }).FirstOrDefault();
        }
        public bool AddLocalUser(LocalUser localUser)
        {
            SqlParameter[] parameters ={
                new SqlParameter("@Name",localUser.Name),
                new SqlParameter("@Surname",localUser.Surname),
                new SqlParameter("@No",localUser.No),
                new SqlParameter("@Mail",localUser.Mail),
                new SqlParameter("@TypeOf",localUser.TypeOf)
            };
            string query = "INSERT INTO LocalUser(Name,Surname,No,Mail,TypeOf)"
                + "Values(@Name,@Surname,@No,@Mail,@TypeOf)";

            var args = new DynamicParameters(new { });
            parameters.ToList().ForEach(p => args.Add(p.ParameterName, p.Value));
            try
            {
                this._db.Query<LocalUser>(query, args).SingleOrDefault();
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }
        public bool UpdateLocalUser(LocalUser localUser)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("@ID",localUser.ID),
                new SqlParameter("@Name",localUser.Name),
                new SqlParameter("@Surname",localUser.Surname),
                new SqlParameter("@No",localUser.No),
                new SqlParameter("@Mail",localUser.Mail),
                new SqlParameter("@TypeOf",localUser.TypeOf)
            };
            string query = "UPDATE LocalUser SET Name=@Name,Surname=@Surname,No=@No,Mail=@Mail,TypeOf=@TypeOf"
                + "WHERE ID=@ID";
            var args = new DynamicParameters(new { });
            parameters.ToList().ForEach(p => args.Add(p.ParameterName, p.Value));
            try
            {
                this._db.Execute(query, args);
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
        public bool DeleteLocalUser(int ID)
        {
            int deletedLocalUser = this._db.Execute("DELETE FROM LocalUser WHERE ID = @Id", new { Id = ID });
            return deletedLocalUser > 0;
        }


    }
}