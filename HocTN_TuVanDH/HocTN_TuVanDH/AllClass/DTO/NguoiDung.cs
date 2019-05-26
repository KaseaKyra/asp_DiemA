using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.DTO
{
    public class NguoiDung
    {
        int id;
        string ten;
        DateTime dob;
        int gioiTinh;
        string sdt;
        string email;
        string matKhau;
        int loai;
        string note;

        public int Id { get => id; set => id = value; }
        public string Ten { get => ten; set => ten = value; }
        public DateTime Dob { get => dob; set => dob = value; }
        public int GioiTinh { get => gioiTinh; set => gioiTinh = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string Email { get => email; set => email = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }
        public int Loai { get => loai; set => loai = value; }
        public string Note { get => note; set => note = value; }

        public NguoiDung()
        {

        }
    }
}