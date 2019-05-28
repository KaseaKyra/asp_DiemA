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
    public partial class CoursesMasterPage : System.Web.UI.MasterPage
    {
        Connection clsCon = new Connection();
        SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                clsCon.openDB();

                string courses = txbCourseName.Text;

                string query = "Proc_InsertNguoiDung";
                sqlCommand = new SqlCommand(query, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCommand.Parameters.Add(new SqlParameter("@Name", courses));

                sqlCommand.ExecuteNonQuery();
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