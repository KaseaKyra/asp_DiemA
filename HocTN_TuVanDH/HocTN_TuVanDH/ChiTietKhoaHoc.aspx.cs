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
    public partial class ChiTietKhoaHoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int id = int.Parse(Request.QueryString.Get("Id").ToString());

                    CTKhoaHocController tc = new CTKhoaHocController();
                    CTKhoaHocModel sm = new CTKhoaHocModel();

                    sm = tc.getCourseDetailById(id);
                    lblCourseName.Text = sm.Name;
                    lblGVName.Text = sm.Giangvien;
                    lblGtGv.Text = sm.Gtgv;
                    lblGTKhoaHoc.Text = sm.Gtkh;
                    string video = "<iframe width = \"560\" height = \"315\" src = \"https://www.youtube.com/embed/" + sm.Link + "\" frameborder = \"0\" allow = \"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>";
                    ltrVideoGioiThieu.Text = video;
                }
                catch (Exception ex)
                {
                    Response.Write("Lỗii: " + ex);
                }
                finally
                {
                }
            }
        }

        protected void btnHoc_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString.Get("Id").ToString());
            Response.Redirect("DanhSachBaiHoc.aspx?Id=" + id);
        }
    }
}