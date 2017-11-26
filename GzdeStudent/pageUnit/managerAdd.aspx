<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true"
    CodeBehind="managerAdd.aspx.cs" Inherits="GzdeStudent.pageUnit.managerAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page_Banner">
        <div class="page_Title">
            <img src="../assets/images/title_icon.png" alt="#" style="margin: 10px 10px 0 10px;
                float: left" /><span>管理员添加</span>
        </div>
        <div class="page_Content">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="密 码"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 30px;">
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="重复密码"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 30px;">
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="权 限"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>操作员</asp:ListItem>
                            <asp:ListItem>信息管理员</asp:ListItem>
                            <asp:ListItem>信息审核员</asp:ListItem>
                            <asp:ListItem>超级管理员</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <div style="margin: 40px 40px;">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/assets/images/search.jpg" />
            </div>
        </div>
    </div>
</asp:Content>
