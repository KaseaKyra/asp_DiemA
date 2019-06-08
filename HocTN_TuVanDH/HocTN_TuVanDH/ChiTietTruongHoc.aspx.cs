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
    public partial class ChiTietTruongHoc : System.Web.UI.Page
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