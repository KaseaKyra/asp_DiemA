using HocTN_TuVanDH.AllClass;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HocTN_TuVanDH.Form.LoaiNd
{
    public partial class ThemLoaiNd : System.Web.UI.Page
    {
        Connection clsCon = new Connection();
        SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                clsCon.openDB();

                string name = txbLoaiNd.Text;
                if (name == "")
                {

                }
                else
                {
                    string query = "Proc_InsertTypeHv";
                    sqlCommand = new SqlCommand(query, clsCon.con);
                    sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCommand.Parameters.Add(new SqlParameter("@name", name));

                    sqlCommand.ExecuteNonQuery();

                    Response.Redirect("DS_LoaiNd.aspx");
                }
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