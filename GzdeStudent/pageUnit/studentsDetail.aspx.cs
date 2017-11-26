using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GzdeStudent.gzdeDataTableAdapters;

namespace GzdeStudent.pageUnit
{
    public partial class detailPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =Convert.ToInt32(Request.QueryString["studentsId"]);
            T_StudentsTableAdapter adpter = new T_StudentsTableAdapter();
            GzdeStudent.gzdeData.T_StudentsDataTable students = adpter.GetDataBystudentsID(id);
            GzdeStudent.gzdeData.T_StudentsRow student = students[0];

            string sname = student.name;
            DateTime sbirth = student.birth;
            string stel = student.telephone;
            string ssex = student.sex;
            string snation = student.nation;
            string sorigin = student.origin;
            string suniversity = student.university;
            string smajor = student.major;
            int sgrade = student.grade;
            string semail = student.email;

            LabelName.Text = sname;
            LabelBirth.Text = sbirth.ToString();
            LabelTel.Text = stel;
            LabelSex.Text = ssex;
            LabelNation.Text = snation;
            LabelOrigin.Text = sorigin;
            LabelUniversity.Text = suniversity;
            LabelMajor.Text = smajor;
            LabelGrade.Text = sgrade.ToString();
            LabelEmail.Text = semail;
        }
    }
}