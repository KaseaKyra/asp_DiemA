using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Model
{
    public class BaiHocModel
    {
        int id;
        string name;
        int khId;
        string link;
        int thuTu;
        string ghiChu;

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public int KhId { get => khId; set => khId = value; }
        public string Link { get => link; set => link = value; }
        public int ThuTu { get => thuTu; set => thuTu = value; }
        public string GhiChu { get => ghiChu; set => ghiChu = value; }

        public BaiHocModel() { }

        public BaiHocModel(DataRow r)
        {
            Id = (int)r["Id"];
            Name = r["Name"].ToString();
            KhId = (int)r["KhoaHocId"];
            Link = r["Link"].ToString();
            ThuTu = (int)r["ThuTuBaiHoc"];
            GhiChu = r["Ghichu"].ToString();
        }
    }
}