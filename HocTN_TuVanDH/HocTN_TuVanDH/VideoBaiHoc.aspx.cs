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
    public partial class VideoBaiHoc : System.Web.UI.Page
    {
        BaiHocController bhc = new BaiHocController();
        BaiHocModel bhm = new BaiHocModel();
        int id;
        int kh;
        int thuTu;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = int.Parse(Request.QueryString.Get("Id").ToString());
                thuTu = int.Parse(Request.QueryString.Get("thutu").ToString());
                kh = int.Parse(Request.QueryString.Get("kh").ToString());

                bhm = bhc.getBaiHocById(id);
                lblName.Text = "Bài " + bhm.ThuTu + ": " + bhm.Name;
                string link = "3z80cGzIyWk";
                link = bhm.Link;
                ltrVideo.Text = "<iframe width = \"700\" height = \"400\" src = \"https://www.youtube.com/embed/" + link + "\" frameborder = \"0\" allow = \"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>";

                BaiHocModel bhm_2 = new BaiHocModel();
                bhm_2 = bhc.findMaxThuTu(kh);
                int maxThuTu = bhm_2.ThuTu;

                if (maxThuTu == 1 || thuTu == 1)
                {
                    btnPre.Visible = false;

                }
                else if (maxThuTu == thuTu)
                {
                    btnNext.Visible = false;
                }
            }
        }

        protected void btnDsBh_Click(object sender, EventArgs e)
        {
            kh = int.Parse(Request.QueryString.Get("kh").ToString());
            Response.Redirect("DanhSachBaiHoc.aspx?Id=" + kh);
        }

        protected void btnPre_Click(object sender, EventArgs e)
        {
            kh = int.Parse(Request.QueryString.Get("kh").ToString());
            thuTu = int.Parse(Request.QueryString.Get("thutu").ToString());
            thuTu -= 1;

            bhm = bhc.findPreBaiHoc(kh, thuTu);

            id = bhm.Id;
            Response.Redirect("VideoBaiHoc.aspx?Id=" + id + "&kh=" + kh + "&thutu=" + thuTu);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            kh = int.Parse(Request.QueryString.Get("kh").ToString());
            thuTu = int.Parse(Request.QueryString.Get("thutu").ToString());
            thuTu += 1;

            bhm = bhc.findPreBaiHoc(kh, thuTu);

            id = bhm.Id;
            Response.Redirect("VideoBaiHoc.aspx?Id=" + id + "&kh=" + kh + "&thutu=" + thuTu);
        }
    }
}