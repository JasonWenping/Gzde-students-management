using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GzdeStudent.gzdeDataTableAdapters;

namespace GzdeStudent.pageUnit
{
    public partial class managerList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            T_ManagerTableAdapter adpter = new T_ManagerTableAdapter();
            GridView1.DataSource = adpter.GetData();
            GridView1.DataBind();
        }
    }
}