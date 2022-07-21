using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PopulatingStudent_Info
{
    public class StudentData
    {
        public string id { get; set; }
        public string fName { get; set; }
        public string lName { get; set; }
        public int age { get; set; }
        public string address { get; set; }

        public StudentData(string id, string fName, string lName,int age, string address)
        {
            this.id = id;
            this.fName = fName;
            this.lName = lName;
            this.age = age;
            this.address = address;
        }        
    }
}