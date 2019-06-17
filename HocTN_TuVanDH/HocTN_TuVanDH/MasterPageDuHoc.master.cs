using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HocTN_TuVanDH
{
    public partial class MasterPageDuHoc : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void btnSearchSchool_Click(object sender, EventArgs e)
        {
            string name = txbSchoolName.Text;
            Response.Redirect("TimKiemTruongHoc.aspx?name=" + name);
        }
    }
}