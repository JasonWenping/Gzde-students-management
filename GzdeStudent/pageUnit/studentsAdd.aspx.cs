using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GzdeStudent.gzdeDataTableAdapters;

namespace GzdeStudent.pageUnit
{
    public partial class addPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string sname = TextBoxName.Text;
            DateTime sbirth = DateTime.Now;//Year.Text + "年" + Month.Text + "月" + Day.Text + "日";
            string stelephone = Tel.Text;
            string ssex = Sex.Text.Trim();
            string sorigin = Province.Text + "省" + City.Text + "市";
            string snation = Minzu.Text;
            string scollege = College.Text;
            string smajor = Major.Text;
            int sgrade =Convert.ToInt32(Grade.Text);
            string semail = Email.Text + "@" + EmailAdd.Text;
            string shobby = HobbyBox.Text;
            string sexpirence = ExperienceBox.Text;
            string schannel = ""; //CheckBox1.Text+","+CheckBox2.Text+","+CheckBox3.Text+","+CheckBox4.Text+","+CheckBox5.Text;
            string sexpect = ExpectBox.Text;
            DateTime sjiontime = DateTime.Now;
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    schannel += CheckBoxList1.Items[i].Text + ",";
                }
            }
            //T_StudentsTableAdapter adpter = new T_StudentsTableAdapter();
            //adpter.InsertStudents(sname,ssex,sbirth,snation,sorigin,scollege,smajor,sgrade,semail,stelephone,sexpirence,shobby,schannel,sexpect,sjiontime);
            string sql = string.Format("INSERT INTO T_Students ( name, sex, birth, nation, origin, university, major, grade, email, telephone, experience, hobby, channels, expect, jointime) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}')",sname,ssex,sbirth,snation,sorigin,scollege,smajor,sgrade,semail,stelephone,sexpirence,shobby,schannel,sexpect,sjiontime);
            DataHelper.ExecuteSql(sql);
            MessageBox.Show("添加成功","print.aspx?name="+ sname +"");
     
        }
    }
}