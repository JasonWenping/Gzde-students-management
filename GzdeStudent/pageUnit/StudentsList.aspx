<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="studentsList.aspx.cs" Inherits="GzdeStudent.pageUnit.StudentsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="search_Banner">
<div class="search_Banner_pic">
<img src="../assets/images/search_pic.png" alt="#" />
</div>
<div class="search_Banner_textBox">
<table>
<tr style="height:40px;">
<td style="width:130px;"><asp:TextBox ID="Id" runat="server" Height="25px" Width="105px">输入ID进行搜索</asp:TextBox></td>
<td style="width:130px;"><asp:TextBox ID="Name" runat="server" Height="25px" Width="105px">输入姓名进行搜索</asp:TextBox></td>
<td style="width:130px;"><asp:TextBox ID="Telephone" runat="server" Height="25px" Width="105px">输入电话进行搜索</asp:TextBox></td>
</tr>
<tr>
<td style="width:130px;">
    <asp:DropDownList ID="DropDownList1" runat="server" Width="105px" Height="25px">
        <asp:ListItem>2010级</asp:ListItem>
        <asp:ListItem>2011级</asp:ListItem>
        <asp:ListItem>2012级</asp:ListItem>
        <asp:ListItem>2013级</asp:ListItem>
        <asp:ListItem>2014级</asp:ListItem>
        <asp:ListItem>2015级</asp:ListItem>
        <asp:ListItem>2016级</asp:ListItem>
        <asp:ListItem>2017级</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width:130px;">
    <asp:DropDownList ID="DropDownList2" runat="server" Width="105px" Height="25px">
        <asp:ListItem>已上课</asp:ListItem>
        <asp:ListItem>未上课</asp:ListItem>
        <asp:ListItem>无</asp:ListItem>
    </asp:DropDownList>
    </td>
<td style="width:130px;">
    <asp:DropDownList ID="DropDownList3" runat="server" Width="105px" Height="25px">
        <asp:ListItem>大连海事大学</asp:ListItem>
        <asp:ListItem>大连理工大学</asp:ListItem>
        <asp:ListItem>东北财经大学</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
</table>
</div>
<div>
    <asp:Button ID="Button1" runat="server" CssClass="search_Buttom" />
</div>
</div>

<div class="page_Banner">
<div class="page_Title">
<img src="../assets/images/title_icon.png" alt="#" style="margin:10px 10px 0 10px;float:left" /><span>学员查看</span>
</div>
<div class="page_Content">    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
        DataKeyNames="studentsId" DataSourceID="ObjectDataSource1" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="选择">
                <ItemTemplate>
                    <asp:CheckBox ID="StudentsSelect" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="studentsId" HeaderText="序号" ReadOnly="True" 
                SortExpression="studentsId" />
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
            <asp:BoundField DataField="birth" HeaderText="生日" SortExpression="birth" />
            <asp:BoundField DataField="university" HeaderText="学校" 
                SortExpression="university" />
            <asp:BoundField DataField="major" HeaderText="专业" SortExpression="major" />
            <asp:BoundField DataField="grade" HeaderText="年级" SortExpression="grade" />
            <asp:BoundField DataField="email" HeaderText="邮箱" SortExpression="email" />
            <asp:BoundField DataField="telephone" HeaderText="联系电话" 
                SortExpression="telephone" />
            <asp:BoundField DataField="jointime" HeaderText="加入时间" 
                SortExpression="jointime" />
            <asp:HyperLinkField 
                NavigateUrl="~/pageUnit/studentsDetail.aspx" Target="_blank" Text="详情" 
                DataNavigateUrlFields="studentsId" 
                DataNavigateUrlFormatString="~/pageUnit/studentsDetail.aspx?studentsId={0}">
            <ControlStyle ForeColor="Black" />
            </asp:HyperLinkField>
            <asp:HyperLinkField Text="修改" DataNavigateUrlFields="studentsId" 
                DataNavigateUrlFormatString="~/pageUnit/studentsUpdate.aspx?studentsId={0}">
            <ControlStyle ForeColor="Black" />
            </asp:HyperLinkField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>  
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"  OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="GzdeStudent.gzdeDataTableAdapters.T_StudentsTableAdapter" >
    </asp:ObjectDataSource>
    <div>
        <asp:Button ID="Button2" runat="server" Text="删除所选项" onclick="Button2_Click" />
        <asp:Label ID="DeleteResults" runat="server" Text="Label"></asp:Label>
    </div>
</div>
</div>
</asp:Content>
