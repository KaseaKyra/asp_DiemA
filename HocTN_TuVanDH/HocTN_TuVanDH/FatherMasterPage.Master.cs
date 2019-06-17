using HocTN_TuVanDH.AllClass.Controller;
using HocTN_TuVanDH.AllClass.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HocTN_TuVanDH
{
    public partial class FatherMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    ltrLogin.Text = "<a href=\"Login.aspx\">Đăng nhập</a>";
                } else
                {
                    string email = Session["user"].ToString();
                    UserModel um = new UserModel();
                    UserController uc = new UserController();
                    um = uc.getUserByEmail(email);
                    string name = um.Name;
                    ltrLogin.Text = "<a href=\"QuanLyTaiKhoan.aspx\">" + name + "</a>";
                }
            }
        }
    }
}