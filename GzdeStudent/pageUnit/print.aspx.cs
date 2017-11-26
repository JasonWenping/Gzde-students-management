using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GzdeStudent.gzdeDataTableAdapters;

namespace GzdeStudent.pageUnit
{
    public partial class print : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Sname = Request.QueryString["name"];
            T_StudentsTableAdapter adpter = new T_StudentsTableAdapter();
            GzdeStudent.gzdeData.T_StudentsDataTable students = adpter.GetDataByName(Sname);
            GzdeStudent.gzdeData.T_StudentsRow student = students[0];

            string sname = student.name;
            string stel = student.telephone;
            string ssex = student.sex;
            string suniversity = student.university;
            string smajor = student.major;
            int sgrade = student.grade;

            NameLabel.Text = sname;
            TelLabel.Text = stel;
            SexLabel.Text = ssex;
            UniversityLabel.Text = suniversity;
            MajorLabel.Text = smajor;
            GradeLable.Text = sgrade.ToString();
        }
    }
}