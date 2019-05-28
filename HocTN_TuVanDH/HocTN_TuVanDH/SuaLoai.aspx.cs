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
    public partial class SuaLoai : System.Web.UI.Page
    {
        Connection clsCon = new Connection();
        SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int maLoai = int.Parse(Request.QueryString.Get("ml"));
                try
                {
                    clsCon.openDB();

                    string query = "Proc_GetTypeHvById";
                    sqlCommand = new SqlCommand(query, clsCon.con);
                    sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCommand.Parameters.Add(new SqlParameter("@Id", maLoai));

                    txbLoaiNd.Text = sqlCommand.ExecuteScalar().ToString();

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

        protected void btnThem_Click(object sender, EventArgs e)
        {
            int maLoai = int.Parse(Request.QueryString.Get("ml"));
            try
            {
                clsCon.openDB();

                string name = txbLoaiNd.Text;

                string query = "Proc_UpdateTypeHv";
                sqlCommand = new SqlCommand(query, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCommand.Parameters.Add(new SqlParameter("@Id", maLoai));
                sqlCommand.Parameters.Add(new SqlParameter("@name", name));

                sqlCommand.ExecuteNonQuery();

                Response.Redirect("DS_LoaiNd.aspx");

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