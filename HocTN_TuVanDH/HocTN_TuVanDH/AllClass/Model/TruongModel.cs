using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Model
{
    public class TruongModel
    {
        string name;
        string address;
        string website;
        string ttct;
        double gia;
        string imgLink;
        string ndt;

        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        public string Website { get => website; set => website = value; }
        public string Ttct { get => ttct; set => ttct = value; }
        public string ImgLink { get => imgLink; set => imgLink = value; }
        public string Ndt { get => ndt; set => ndt = value; }
        public double Gia { get => gia; set => gia = value; }

        public TruongModel() { }

        public TruongModel(DataRow r)
        {
            Name = r["Name"].ToString();
            Address = r["Address"].ToString();
            Website = r["Website"].ToString();
            Ttct = r["ThongTinChiTiet"].ToString();
            Gia = (double)r["GiaTien"];
            ImgLink = r["ImageLink"].ToString();
            Ndt = r["Ndt"].ToString();
        }
    }
}