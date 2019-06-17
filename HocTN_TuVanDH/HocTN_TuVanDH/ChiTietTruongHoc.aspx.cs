using HocTN_TuVanDH.AllClass;
using HocTN_TuVanDH.AllClass.Controller;
using HocTN_TuVanDH.AllClass.Model;
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int id = int.Parse(Request.QueryString.Get("Id").ToString());

                    TruongController tc = new TruongController();
                    TruongModel sm = new TruongModel();

                    sm = tc.getSchoolById(id);
                    lblSchoolName.Text = sm.Name;
                    lblAddress.Text = sm.Address;
                    lblHocPhi.Text = sm.Gia.ToString();
                    lblNganh.Text = sm.Ndt;
                    lblTTCT.Text = sm.Ttct;
                    imgSchool.ImageUrl = "CustomImages/Schools/" + sm.ImgLink;
                    hlkWebsite.Text = sm.Website;
                    hlkWebsite.NavigateUrl = sm.Website;
                }
                catch (Exception ex)
                {
                    Response.Write("Lối: " + ex);
                }
                finally
                {
                }
            }
        }
    }
}