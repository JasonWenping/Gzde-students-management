using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GzdeStudent.gzdeDataTableAdapters;

namespace GzdeStudent.pageUnit
{
    public partial class StudentsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Id.Attributes.Add("onfocus", "if (this.value=='输入ID进行搜索') this.value=''");
            Id.Attributes.Add("onblur", "if (this.value=='') this.value='输入ID进行搜索'");
            Name.Attributes.Add("onfocus", "if (this.value=='输入姓名进行搜索') this.value=''");
            Name.Attributes.Add("onblur", "if (this.value=='') this.value='输入姓名进行搜索'");
            Telephone.Attributes.Add("onfocus", "if (this.value=='输入电话进行搜索') this.value=''");
            Telephone.Attributes.Add("onblur", "if (this.value=='') this.value='输入电话进行搜索'");
            //T_StudentsTableAdapter adpter = new T_StudentsTableAdapter();
            //GridView1.DataSource = adpter.GetData();
            //GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bool atLeastOneRowDeleted = false;
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox cb = (CheckBox)row.FindControl("StudentsSelect");
                if (cb != null && cb.Checked)
                {
                    atLeastOneRowDeleted = true;

                    int sid = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                    string sql = string.Format("DELETE FROM [T_Students] WHERE (([studentsId] = '"+ sid + "'))");
                    DataHelper.ExecuteSql(sql);
                    Object i = DataHelper.ExecuteSql(sql);
                    string s = "成功删除"+i.ToString()+"个学员！";
                    MessageBox.Show(s, "studentsList.aspx");
                }
            }

            DeleteResults.Visible = atLeastOneRowDeleted;
        }
    }
}