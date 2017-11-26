<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="studentsDetail.aspx.cs" Inherits="GzdeStudent.pageUnit.detailPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="page_Banner">
<div class="page_Title">
<img src="../assets/images/title_icon.png" alt="#" style="margin:10px 10px 0 10px;float:left" /><span>学员详情</span>
</div>
<div class="page_Content">
            <h1>
                <span>基本信息</span></h1>
            <div class="page_Table">
                <table>
                    <tr>
                        <td style="width: 35%;">
                            <asp:Label ID="Label1" runat="server" Text="姓名:"></asp:Label>
                            <asp:Label ID="LabelName"
                                runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 38%;">
                            <asp:Label ID="Label3" runat="server" Text="生日:"></asp:Label>
                                                        <asp:Label ID="LabelBirth"
                                runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 30%;">
                            <asp:Label ID="Label5" runat="server" Text="手机:"></asp:Label>
                                                        <asp:Label ID="LabelTel"
                                runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="性别:"></asp:Label>
                            <asp:Label ID="LabelSex" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="籍贯:"></asp:Label>
                            <asp:Label ID="LabelOrigin" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="民族:"></asp:Label>
                            <asp:Label ID="LabelNation" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="学校:"></asp:Label>
                            <asp:Label ID="LabelUniversity" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="专业:"></asp:Label>
                            <asp:Label ID="LabelMajor" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="年级:"></asp:Label>
                            <asp:Label ID="LabelGrade" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="邮箱:"></asp:Label>
                            <asp:Label ID="LabelEmail" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <h1>
                <span>家庭背景</span></h1>
            <div class="page_Table">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>
            <h1>
                <span>教育背景及荣获奖励</span></h1>
            <div class="page_Table">
                
            </div>
            <h1>
                <span>其他信息</span></h1>
            <div class="page_Table">
                <div>
                    <asp:Label ID="Label39" runat="server" Text="社会实践经历:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label40" runat="server" Text="爱好特长:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label42" runat="server" Text="你想在NVS里收获的成长点:"></asp:Label>
                </div>
            </div>
</div>
</div>
</asp:Content>
