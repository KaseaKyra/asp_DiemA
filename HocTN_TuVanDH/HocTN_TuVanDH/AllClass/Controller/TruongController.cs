using HocTN_TuVanDH.AllClass;
using HocTN_TuVanDH.AllClass.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Controller
{
    public class TruongController
    {
        Connection connection = new Connection();
        SqlCommand sqlCommand;
        DataTable dataTable;
        SqlDataAdapter adapter;

        public TruongModel getSchoolById(int id)
        {
            connection.openDB();

            string query = "Proc_GetFullListDuHoc";
            sqlCommand = new SqlCommand(query, connection.con);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.Add(new SqlParameter("@Id", id));

            dataTable = new DataTable();
            adapter = new SqlDataAdapter(sqlCommand);
            adapter.Fill(dataTable);

            foreach (DataRow i in dataTable.Rows)
            {
                return new TruongModel(i);
            }

            connection.closeDB();

            return null;
        }
    }
}