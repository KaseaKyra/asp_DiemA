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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string name = txbCourseName.Text;
            Response.Redirect("TimKiemKhoaHoc.aspx?name=" + name);
        }

        protected void ddlGiaoVien_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(ddlGiaoVien.SelectedValue);
           Response.Redirect("TkkhTheoGiangVien.aspx?id=" + id);
        }
    }
}