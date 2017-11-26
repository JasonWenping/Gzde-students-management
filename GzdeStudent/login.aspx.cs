using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using GzdeStudent;
using GzdeStudent.gzdeDataTableAdapters;

namespace GzdeStudent
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            /*
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select name from ";
             */
            string userName = TextBox1.Text;
            string passWord = TextBox2.Text;
            string cheBox = TextBox3.Text;

            DataTable dt = DataHelper.ExecuteDataTable("select * from T_Manager where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'", new SqlParameter("name", userName));
            if (dt.Rows.Count > 0 &&  TextBox3.Text == Session["Code"].ToString())
            {
                Session["username"] = TextBox1.Text;									
                Session["password"] = TextBox2.Text; 								
                Session["login"] = "yes";
                Response.Redirect("~/Default.aspx");
                return;
            }
            else
            {
                /*
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DataRow row = dt.Rows[i];
                    string dbpassword = Convert.ToString(row["password"]);
                    if (dbpassword == passWord)
                    {
                        Response.Redirect("../Default.aspx");
                    }
                    else
                    {
                        Password.Text = "密码错误！";
                    }
                }
                 */
            }
       
        }
    }
}