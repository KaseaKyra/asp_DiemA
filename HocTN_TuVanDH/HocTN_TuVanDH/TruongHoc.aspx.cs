using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HocTN_TuVanDH
{
    public partial class TruongHoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //SqlDataSource sds1 = new SqlDataSource();
                //sds1.ID = "dataSrcSchool";
                //this.Page.Controls.Add(sds1);
                //sds1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["connect_DATN"].ConnectionString;
                //sds1.SelectCommand = "Proc_GetListDuHoc";
                //sds1.SelectCommandType = SqlDataSourceCommandType.StoredProcedure;
                //lvwSchool.DataSource = sds1;
            }
        }

        protected void btnSearchSchool_Click(object sender, EventArgs e)
        {
            try
            {
                string school = txbSchoolName.Text;
                dataSrcSchool.SelectCommand = "Proc_GetSchoolWhenSearch";
                dataSrcSchool.SelectCommandType = SqlDataSourceCommandType.StoredProcedure;
                //dataSrcSchool.SelectParameters = school;
                //dataSrcSchool.SelectParameters.
            }
            catch (Exception ex)
            {
                Response.Write("Lối: " + ex);
            }
        }
    }
}