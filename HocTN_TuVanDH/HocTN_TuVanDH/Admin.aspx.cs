using HocTN_TuVanDH.AllClass;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HocTN_TuVanDH
{
    public partial class Admin : System.Web.UI.Page
    {
        Connection clsCon = new Connection();
        SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clsCon.openDB();

                //ĐẾM SỐ HỌC VIÊN
                string sqlHocvien = "Pro_DemSoNguoiDung";
                sqlCommand = new SqlCommand(sqlHocvien, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                lblHocVien.Text = ((int)sqlCommand.ExecuteScalar()).ToString();
                
                //ĐẾM SỐ GIẢNG VIÊN
                string sqlGv = "Pro_DemSoGiangVien";
                sqlCommand = new SqlCommand(sqlGv, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                lblGiangVien.Text = ((int)sqlCommand.ExecuteScalar()).ToString();
                
                //ĐẾM SỐ KHÓA HỌC
                string sqlKh = "Pro_DemSoKhoaHoc";
                sqlCommand = new SqlCommand(sqlKh, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                lblKhoaHoc.Text = ((int)sqlCommand.ExecuteScalar()).ToString();

                //ĐẾM SỐ BÀI HỌC
                string sqlBh = "Pro_DemSoBaiHoc";
                sqlCommand = new SqlCommand(sqlBh, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                lblBaiHoc.Text = ((int)sqlCommand.ExecuteScalar()).ToString();

                // TOP 5 KHÓA HỌC ĐÔNG HỌC VIÊN NHẤT
            }
            catch (Exception ex)
            {
                Response.Write("Lối: " + ex);
            }
            finally
            {
                clsCon.closeDB();
            }
        }
    }
}