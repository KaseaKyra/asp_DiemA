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
    public partial class Login : System.Web.UI.Page
    {
        Connection clsCon = new Connection();
        SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    clsCon.openDB();

                    string email = txbUsername.Text;
                    string pass = txbPassword.Text;

                    string query = "Proc_GetNguoiDungWhenLogin";
                    sqlCommand = new SqlCommand(query, clsCon.con);
                    sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCommand.Parameters.Add(new SqlParameter("@email", email));

                    sqlCommand.ExecuteReader();

                    Response.Redirect("Courses.aspx");
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
}