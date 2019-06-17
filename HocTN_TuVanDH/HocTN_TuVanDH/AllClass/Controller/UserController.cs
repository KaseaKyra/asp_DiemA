using HocTN_TuVanDH.AllClass.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Controller
{
    public class UserController
    {
        Connection connection = new Connection();
        SqlCommand sqlCommand;
        DataTable dataTable;
        SqlDataAdapter adapter;

        public UserModel getUserByEmail(string email)
        {
            connection.openDB();

            string query = "Proc_GetUserByEmail";
            sqlCommand = new SqlCommand(query, connection.con);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.Add(new SqlParameter("@Email", email));

            dataTable = new DataTable();
            adapter = new SqlDataAdapter(sqlCommand);
            adapter.Fill(dataTable);

            foreach (DataRow i in dataTable.Rows)
            {
                return new UserModel(i);
            }

            connection.closeDB();

            return null;
        }
    }
}