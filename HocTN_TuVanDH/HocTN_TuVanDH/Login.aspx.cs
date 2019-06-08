using HocTN_TuVanDH.AllClass;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
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

        // mã hóa mật khẩu
        private static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                clsCon.openDB();

                string email = txbUsername.Text;
                string pass = MD5Hash(txbPassword.Text);

                string query = "Proc_GetNguoiDungWhenLogin";
                sqlCommand = new SqlCommand(query, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCommand.Parameters.Add(new SqlParameter("@Email", email));
                sqlCommand.Parameters.Add(new SqlParameter("@Password", pass));

                int sl = int.Parse(sqlCommand.ExecuteScalar().ToString());
                Label1.Text = sl.ToString();
                //if (sl != 0)
                //{
                //Response.Redirect("Admin.aspx");
                //Response.Redirect("http://www.microsoft.com");

                //}
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