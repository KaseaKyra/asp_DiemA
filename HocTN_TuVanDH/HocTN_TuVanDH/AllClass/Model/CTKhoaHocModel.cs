using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Model
{
    public class CTKhoaHocModel
    {
        int id;
        string name;
        string giangvien;
        string gtgv;
        string gtkh;
        string link;

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string Giangvien { get => giangvien; set => giangvien = value; }
        public string Gtgv { get => gtgv; set => gtgv = value; }
        public string Gtkh { get => gtkh; set => gtkh = value; }
        public string Link { get => link; set => link = value; }

        public CTKhoaHocModel() { }

        public CTKhoaHocModel(DataRow r)
        {
            //Id = int.Parse(r["Id"].ToString());
            Id = (int)r["Id"];
            Name = r["Name"].ToString();
            Giangvien = r["GiangVien"].ToString();
            Gtgv = r["GioiThieu"].ToString();
            Gtkh = r["GTKH"].ToString();
            Link = r["Link"].ToString();
        }
    }
}