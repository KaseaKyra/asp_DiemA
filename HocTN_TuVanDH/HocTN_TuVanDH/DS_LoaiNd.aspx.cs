using HocTN_TuVanDH.AllClass;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HocTN_TuVanDH.Form
{
    public partial class DS_LoaiNd : System.Web.UI.Page
    {
        Connection clsCon = new Connection();
        SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    clsCon.openDB();

                    string sqlSum = "Pro_CountTypeHv";
                    sqlCommand = new SqlCommand(sqlSum, clsCon.con);
                    sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                    lblSumRecord.Text = ((int)sqlCommand.ExecuteScalar()).ToString();

                    sqlSum = "Pro_GetListTypeHv";
                    sqlCommand = new SqlCommand(sqlSum, clsCon.con);
                    sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlDataReader re = sqlCommand.ExecuteReader();

                    string st_kq = "";
                    int dem = 0;
                    while (re.Read())
                    {
                        dem += 1;
                        st_kq += "<tr><td>"
                            + dem
                            + "</td><td>"
                            + re.GetValue(0).ToString()
                            + "</td><td>"
                            + re.GetValue(1).ToString()
                             + "</td><td class=\"text-center text-success\"><a href=\"SuaLoai.aspx?ml="
                            + re.GetValue(0).ToString()
                            + "&type=udt"
                            + " \"><i class=\"fas fa-edit\"></i></a></td>"
                            + "</td><td class=\"text-center text-danger\"><a href=\"XoaLoai.aspx?ml="
                            + re.GetValue(0).ToString()
                            + "&type=del"
                            + " \"><i class=\"fas fa-trash - alt\"></i></a></td></tr>";
                    }
                    re.Close();
                    ltrLoaiNd.Text = st_kq;
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