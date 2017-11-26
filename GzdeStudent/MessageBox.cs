using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GzdeStudent
{
    public class MessageBox
    {
        public static void Show(string MessageInfo)            //单单显示提示信息
        {
            HttpContext.Current.Response.Write("<script language=javascript>alert('" + MessageInfo + "')</script>");
        }
        public static void WebMessageBox(string values)
        {
            HttpContext.Current.Response.Write("<script>alert('" + values + "');history.back()</script>");
            HttpContext.Current.Response.End();
        }
        public static void Show(string values, string PageURL)     //显示完提示信息后打开新的窗体
        {
            HttpContext.Current.Response.Write("<script>alert('" + values + "');window.location.href='" + PageURL + "'</script>");
            HttpContext.Current.Response.End();
        } 
    }
}