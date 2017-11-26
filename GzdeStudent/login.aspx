<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GzdeStudent.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/style.css" rel="Stylesheet" type="text/css" />
</head>
<body style="background-image: url(../assets/images/login_bg_pic.gif);">
    <form id="form1" runat="server">
    <div class="main">
        <div class="logo">
        </div>
        <div class="login">
            <div class="login_table">
                <table>
                    <tr>
                        <td style="width: 50px;">
                            <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
                        </td>
                        <td  style="width:130px;">
                            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="valid"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*用户名不能为空"
                                ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="密 码"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ValidationGroup="valid"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="*密码不能为空" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <%--<tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="级 别"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>操作员</asp:ListItem>
                                <asp:ListItem>信息管理员</asp:ListItem>
                                <asp:ListItem>审核员</asp:ListItem>
                                <asp:ListItem>超级管理员</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="地   区"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>辽宁</asp:ListItem>
                                <asp:ListItem>四川</asp:ListItem>
                                <asp:ListItem>河北</asp:ListItem>
                                <asp:ListItem>吉林</asp:ListItem>
                            </asp:DropDownList>
                            省
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>大连</asp:ListItem>
                                <asp:ListItem>沈阳</asp:ListItem>
                                <asp:ListItem>盘锦</asp:ListItem>
                                <asp:ListItem>铁岭</asp:ListItem>
                            </asp:DropDownList>
                            市
                        </td>
                    </tr>--%>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="验证码"></asp:Label>
                        </td>
                        <td>
                            <span style="float: left">
                                <asp:TextBox ID="TextBox3" runat="server" Width="70px" MaxLength="4" ValidationGroup="valid"></asp:TextBox></span>
                            <span class="cheButtom">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Validata .aspx"
                                    ToolTip="点击再换一张！" Width="60px"   ValidationGroup="valid"  /></span>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3"
                                runat="server" ErrorMessage="*验证码不能为空"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <div class="signin_buttom">
                    <asp:ImageButton ID="ImageButton" runat="server" ImageUrl="~/assets/images/login_buttom.png"
                        OnClick="ImageButton_Click"/>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/assets/images/reset_buttom.png"   ValidationGroup="valid"  />
                </div>
            </div>
        </div>
        <div class="login_shadow">
        </div>
        <div class="login_CopyRight">
            技术支持：国之栋教育科技集团信息技术部 &nbsp;&nbsp;&nbsp;&nbsp;Copyright © 2007-2011 All Right Reserved.
        </div>
    </div>
    </form>
</body>
</html>
