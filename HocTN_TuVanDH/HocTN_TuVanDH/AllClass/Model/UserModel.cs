using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace HocTN_TuVanDH.AllClass.Model
{
    public class UserModel
    {
        int id;
        string name;
        DateTime dob;
        int gender;
        string phone;
        string email;
        string pass;
        int type;
        string note;

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public DateTime Dob { get => dob; set => dob = value; }
        public int Gender { get => gender; set => gender = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Email { get => email; set => email = value; }
        public string Pass { get => pass; set => pass = value; }
        public int Type { get => type; set => type = value; }
        public string Note { get => note; set => note = value; }

        public UserModel() { }

        public UserModel(DataRow r)
        {
            Id = (int)r["Id"];
            Name = r["Name"].ToString();
            Dob = (DateTime)r["DateOfBirth"];
            Gender = (int)r["Gender"];
            Phone = r["Phone"].ToString();
            Email = r["Email"].ToString();
            Pass = r["Password"].ToString();
            Type = (int)r["TypeHv"];
            Note = r["Note"].ToString();
        }
    }
}