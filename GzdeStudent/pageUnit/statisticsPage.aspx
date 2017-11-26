<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="statisticsPage.aspx.cs" Inherits="GzdeStudent.pageUnit.statisticsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="page_Banner">
<div class="page_Title">
<img src="../assets/images/title_icon.png" alt="#" style="margin:10px 10px 0 10px;float:left" /><span>数据统计</span>
</div>
<div class="page_Content">
<div class="statistic">
今天报名人数：一阶:<asp:Label ID="Label1" runat="server" Text="30"></asp:Label> 二阶:<asp:Label
    ID="Label4" runat="server" Text="Label"></asp:Label> 三阶:<asp:Label ID="Label5" runat="server"
        Text="Label"></asp:Label><br />
本周报名人数：一阶:<asp:Label ID="Label2" runat="server" Text="30"></asp:Label> 二阶:<asp:Label
    ID="Label6" runat="server" Text="Label"></asp:Label> 三阶:<asp:Label ID="Label7" runat="server"
        Text="Label"></asp:Label><br />
本月报名人数：一阶:<asp:Label ID="Label3" runat="server" Text="30"></asp:Label> 二阶:<asp:Label
    ID="Label8" runat="server" Text="Label"></asp:Label> 三阶:<asp:Label ID="Label9" runat="server"
        Text="Label"></asp:Label><br />
</div>
</div>
</div>
</asp:Content>
