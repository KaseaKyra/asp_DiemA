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
    public partial class SignIn : System.Web.UI.Page
    {
        Connection connection = new Connection();
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // lay ngay thang
                for (int i = 1; i < 13; i++)
                {
                    ddlMonth.Items.Add(new ListItem(i.ToString()));
                }
                for (int i = 1; i < 32; i++)
                {
                    ddlDay.Items.Add(new ListItem(i.ToString()));
                }
                int year = DateTime.Now.Year;
                for (int i = year; i >= 1850; i--)
                {
                    ddlYear.Items.Add(new ListItem(i.ToString()));
                }
            }
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

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string name = txbName.Text;
            string email = txbEmail.Text;
            string phone = txbPassword.Text;
            string pass = MD5Hash(txbPassword.Text);
            int gender = 1;
            int type = 1;
            string note = "";
            string month = ddlMonth.SelectedItem.Value;
            string day = ddlDay.SelectedItem.Value;
            string year = ddlYear.SelectedItem.Value;
            string dob = month + "-" + day + "-" + year;

            if (rbFemale.Checked)
            {
                gender = 2;
            }

            try
            {
                connection.openDB();
                string query = "Proc_InsertNguoiDung";
                cmd = new SqlCommand(query, connection.con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@name", name));
                cmd.Parameters.Add(new SqlParameter("@dob", dob));
                cmd.Parameters.Add(new SqlParameter("@gender", gender));
                cmd.Parameters.Add(new SqlParameter("@phone", phone));
                cmd.Parameters.Add(new SqlParameter("@email", email));
                cmd.Parameters.Add(new SqlParameter("@pass", pass));
                cmd.Parameters.Add(new SqlParameter("@type", type));
                cmd.Parameters.Add(new SqlParameter("@note", note));
                cmd.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {
                Response.Write("Lối: " + ex);
            }
            finally
            {
                connection.closeDB();
            }

        }
    }
}