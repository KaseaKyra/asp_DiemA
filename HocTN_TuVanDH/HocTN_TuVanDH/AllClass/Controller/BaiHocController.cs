using HocTN_TuVanDH.AllClass.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Controller
{
    public class BaiHocController
    {
        Connection connection = new Connection();
        SqlCommand sqlCommand;
        DataTable dataTable;
        SqlDataAdapter adapter;

        public BaiHocModel getBaiHocById(int id)
        {
            connection.openDB();

            string query = "Proc_GetBaiHocById";
            sqlCommand = new SqlCommand(query, connection.con);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.Add(new SqlParameter("@Id", id));

            dataTable = new DataTable();
            adapter = new SqlDataAdapter(sqlCommand);
            adapter.Fill(dataTable);

            foreach (DataRow i in dataTable.Rows)
            {
                return new BaiHocModel(i);
            }

            connection.closeDB();

            return null;
        }

        public BaiHocModel findPreBaiHoc(int kh, int thuTu)
        {
            connection.openDB();

            string query = "Proc_findPreBaiHoc";
            sqlCommand = new SqlCommand(query, connection.con);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.Add(new SqlParameter("@KhoaHocId", kh));
            sqlCommand.Parameters.Add(new SqlParameter("@ThuTuBaiHoc", thuTu));

            dataTable = new DataTable();
            adapter = new SqlDataAdapter(sqlCommand);
            adapter.Fill(dataTable);

            foreach (DataRow i in dataTable.Rows)
            {
                return new BaiHocModel(i);
            }

            connection.closeDB();

            return null;
        }

        public BaiHocModel findMaxThuTu(int kh)
        {
            connection.openDB();

            string query = "Proc_FindMaxThuTu";
            sqlCommand = new SqlCommand(query, connection.con);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.Add(new SqlParameter("@KhoaHocId", kh));

            dataTable = new DataTable();
            adapter = new SqlDataAdapter(sqlCommand);
            adapter.Fill(dataTable);

            foreach (DataRow i in dataTable.Rows)
            {
                return new BaiHocModel(i);
            }

            connection.closeDB();

            return null;
        }


    }
}