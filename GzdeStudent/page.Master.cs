using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GzdeStudent
{
    public partial class page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(String.IsNullOrEmpty(Session["username"].ToString()))
            //{
            //    Response.Redirect("default.aspx");
            //}
            //else
            //{
            //    Label1.Text = Session["username"].ToString();
            //}
            //Label2.Text = DateTime.Now.ToLongDateString().ToString();
        }
    }
}