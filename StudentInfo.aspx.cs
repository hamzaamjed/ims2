using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace PopulatingStudent_Info
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            List<StudentData> studentList = CreateStudentList();
            
            if(!this.IsPostBack)
            {
                this.StudentDropdownList.DataSource = studentList;
                this.StudentDropdownList.DataTextField = "fName";
                this.StudentDropdownList.DataValueField = "id";
                this.StudentDropdownList.DataBind();
            }
        }
        public static List<StudentData> CreateStudentList()
        {
            List<StudentData> stdList = new List<StudentData>();
            //ArrayList stdList = new ArrayList();
            StudentData stdData;

            stdData = new StudentData("1001", "hamza", "amjed", 18, "gujranwal");
            stdList.Add(stdData);
            stdData = new StudentData("1002", "ali", "ahmed", 20, "lahore");
            stdList.Add(stdData);
            stdData = new StudentData("1003", "bilal", "qureshi", 19, "islamabad");
            stdList.Add(stdData);
            stdData = new StudentData("1004", "asad", "ali", 21, "lahore");
            stdList.Add(stdData);
            stdData = new StudentData("1005", "hussain", "ali", 21, "karachi");
            stdList.Add(stdData);
            stdData = new StudentData("1006", "jamshed", "ali", 21, "bhakher");
            stdList.Add(stdData);
            stdData = new StudentData("1007", "kabeer", "ali", 21, "gujranwala");
            stdList.Add(stdData);
            stdData = new StudentData("1008", "liaqat", "ali", 21, "dina");
            stdList.Add(stdData);
            stdData = new StudentData("1009", "tufail", "ali", 21, "dinga");
            stdList.Add(stdData);
            stdData = new StudentData("1010", "junaid", "ali", 21, "gujrat");
            stdList.Add(stdData);
            stdData = new StudentData("1011", "adeel", "ali", 21, "jehlum");
            stdList.Add(stdData);
            stdData = new StudentData("1012", "asgher", "ali", 21, "sohawa");
            stdList.Add(stdData);
            stdData = new StudentData("1013", "huzaifa", "ali", 21, "kashmir");
            stdList.Add(stdData);
            stdData = new StudentData("1014", "suhaib", "ali", 21, "bahawalpur");
            stdList.Add(stdData);
            stdData = new StudentData("1015", "umer", "ali", 21, "sahiwal");
            stdList.Add(stdData);
            stdData = new StudentData("1016", "umair", "ali", 21, "sergodha");
            stdList.Add(stdData);
            stdData = new StudentData("1017", "shoukat", "ali", 21, "mirpur");
            stdList.Add(stdData);
            stdData = new StudentData("1018", "shoaib", "ali", 21, "vehari");
            stdList.Add(stdData);
            stdData = new StudentData("1019", "sameer", "ali", 21, "queta");
            stdList.Add(stdData);
            stdData = new StudentData("1020", "mirza", "ali", 21, "sawat");
            stdList.Add(stdData);

            return stdList;
        }

        [WebMethod]

        public static string GetStudentByFName(string stdId)
        {
            List<StudentData> studentList = CreateStudentList();

            foreach (var std in studentList)
            {
                if (std.id == stdId)
                {
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    return js.Serialize(std);
                }
            }
            return "";
            
        }


    }
}