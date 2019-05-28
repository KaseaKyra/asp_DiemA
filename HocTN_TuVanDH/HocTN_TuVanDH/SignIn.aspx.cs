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
        Connection clsCon = new Connection();
        SqlCommand sqlCommand;

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
            try
            {
                clsCon.openDB();

                string name = txbName.Text;
                string email = txbEmail.Text;
                string phone = txbPhone.Text;
                string pass = MD5Hash(txbPassword.Text);
                int gender = 1;
                int type = 1;
                string note = "người dùng";
                string month = ddlMonth.SelectedItem.Value;
                string day = ddlDay.SelectedItem.Value;
                string year = ddlYear.SelectedItem.Value;
                string dob = month + "-" + day + "-" + year;

                if (rbFemale.Checked)
                {
                    gender = 2;
                }

                string query = "Proc_InsertNguoiDung";
                sqlCommand = new SqlCommand(query, clsCon.con);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCommand.Parameters.Add(new SqlParameter("@name", name));
                sqlCommand.Parameters.Add(new SqlParameter("@dob", dob));
                sqlCommand.Parameters.Add(new SqlParameter("@gender", gender));
                sqlCommand.Parameters.Add(new SqlParameter("@phone", phone));
                sqlCommand.Parameters.Add(new SqlParameter("@email", email));
                sqlCommand.Parameters.Add(new SqlParameter("@pass", pass));
                sqlCommand.Parameters.Add(new SqlParameter("@type", type));
                sqlCommand.Parameters.Add(new SqlParameter("@note", note));

                sqlCommand.ExecuteNonQuery();

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