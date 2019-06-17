using HocTN_TuVanDH.AllClass.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Controller
{
    public class CTKhoaHocController
    {
        Connection connection = new Connection();
        SqlCommand sqlCommand;
        DataTable dataTable;
        SqlDataAdapter adapter;

        public CTKhoaHocModel getCourseDetailById(int id)
        {
            connection.openDB();

            string query = "Proc_GetCourseDetail";
            sqlCommand = new SqlCommand(query, connection.con);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.Add(new SqlParameter("@Id", id));

            dataTable = new DataTable();
            adapter = new SqlDataAdapter(sqlCommand);
            adapter.Fill(dataTable);

            foreach (DataRow i in dataTable.Rows)
            {
                return new CTKhoaHocModel(i);
            }

            connection.closeDB();

            return null;
        }
    }
}