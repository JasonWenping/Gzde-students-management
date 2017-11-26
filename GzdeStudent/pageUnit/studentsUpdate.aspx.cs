using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GzdeStudent.gzdeDataTableAdapters;

namespace GzdeStudent.pageUnit
{
    public partial class studentsUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["studentsId"]);
            T_StudentsTableAdapter adapter = new T_StudentsTableAdapter();
            GzdeStudent.gzdeData.T_StudentsDataTable dt = adapter.GetDataBystudentsID(id);
            GzdeStudent.gzdeData.T_StudentsRow row = dt[0];
            if (!IsPostBack)
            {
                TextBoxName.Text = row.name;
                Tel.Text = row.telephone;
                Sex.Text = row.sex;
                OriginBox1.Text = row.origin;
                Minzu.Text = row.nation;
                College.Text = row.university;
                Major.Text = row.major;
                Grade.Text = row.grade.ToString();
                Email.Text = row.email;
                ExperienceBox.Text = row.experience;
                HobbyBox.Text = row.hobby;
                ExpectBox.Text = row.expect;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sname = TextBoxName.Text ;
            string stelephone = Tel.Text;
            string ssex = Sex.Text;
            string sorigin = OriginBox1.Text ;
            string snation = Minzu.Text;
            string suniversity = College.Text;
            string smajor = Major.Text;
            int sgrade =Convert.ToInt32(Grade.Text);
            string semail = Email.Text;
            string sexperience = ExperienceBox.Text;
            string shobby = HobbyBox.Text;
            string sexpect = ExpectBox.Text; 
            
            int sid = Convert.ToInt32(Request.QueryString["studentsId"]);
            string sql = string.Format("UPDATE  T_Students  SET   name ='"+ sname +"', sex ='"+ ssex +"', nation ='"+ snation +"', origin ='"+ sorigin +"', university ='"+ suniversity +"', major ='"+ smajor +"',  grade ='"+ sgrade +"', email ='"+ semail +"', telephone ='"+ stelephone +"', experience ='"+ sexperience +"', hobby ='"+ shobby +"',  expect ='"+ sexpect +"' WHERE   (studentsId = '"+ sid + "')");
            DataHelper.ExecuteSql(sql);
            MessageBox.Show("修改成功","studentsList.aspx");
        }
    }
}