<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="studentsUpdate.aspx.cs" Inherits="GzdeStudent.pageUnit.studentsUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="page_Banner">
        <div class="page_Title">
            <img src="../assets/images/title_icon.png" alt="#" style="margin: 10px 10px 0 10px;
                float: left" /><span>修改学员信息</span>
        </div>
        <div class="page_Content">
            <h1>
                <span>基本信息</span></h1>
            <div class="page_Table">
                <table>
                    <tr>
                        <td style="width: 35%;">
                            <asp:Label ID="Label1" runat="server" Text="姓名:" ></asp:Label>
                            <asp:TextBox ID="TextBoxName" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td style="width: 38%;">
                            <asp:Label ID="Label3" runat="server" Text="生日:"></asp:Label>
                            <asp:DropDownList ID="Year" runat="server">
                                <asp:ListItem>1990</asp:ListItem>
                                <asp:ListItem>1991</asp:ListItem>
                                <asp:ListItem>1992</asp:ListItem>
                                <asp:ListItem>1993</asp:ListItem>
                                <asp:ListItem>1994</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                                <asp:ListItem>1996</asp:ListItem>
                                <asp:ListItem>1997</asp:ListItem>
                                <asp:ListItem>1998</asp:ListItem>
                            </asp:DropDownList>
                            年
                            <asp:DropDownList ID="Month" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                            月
                            <asp:DropDownList ID="Day" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                            日
                        </td>
                        <td style="width: 30%;">
                            <asp:Label ID="Label5" runat="server" Text="手机:" ></asp:Label>
                            <asp:TextBox ID="Tel" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="性别:"></asp:Label>
                            <asp:DropDownList ID="Sex" runat="server">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="籍贯:"></asp:Label>
                            <asp:TextBox ID="OriginBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="民族:"></asp:Label>
                            <asp:DropDownList ID="Minzu" runat="server">
                                <asp:ListItem>汉</asp:ListItem>
                                <asp:ListItem>藏</asp:ListItem>
                                <asp:ListItem>朝鲜</asp:ListItem>
                                <asp:ListItem>蒙古</asp:ListItem>
                                <asp:ListItem>维吾尔</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="学校:"></asp:Label>
                            <asp:DropDownList ID="College" runat="server">
                                <asp:ListItem>大连海事</asp:ListItem>
                                <asp:ListItem>大连理工</asp:ListItem>
                                <asp:ListItem>东北财经</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="专业:"></asp:Label>
                            <asp:TextBox ID="Major" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="年级:"></asp:Label>
                            <asp:DropDownList ID="Grade" runat="server">
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="邮箱:"></asp:Label>
                            <asp:TextBox ID="Email" runat="server" Width="70px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <h1>
                <span>家庭背景</span></h1>
            <div class="page_Table">
                <table>
                    <tr style="height: 25px;">
                        <td style="width: 23%">
                            <asp:Label ID="Label11" runat="server" Text="姓名:"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td style="width: 23%">
                            <asp:Label ID="Label12" runat="server" Text="关系:"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td style="width: 38%">
                            <asp:Label ID="Label13" runat="server" Text="工作单位:"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="职务:"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server" Width="70px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height: 25px;">
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="姓名:"></asp:Label>
                            <asp:TextBox ID="TextBox9" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="关系:"></asp:Label>
                            <asp:TextBox ID="TextBox10" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label17" runat="server" Text="工作单位:"></asp:Label>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label18" runat="server" Text="职务:"></asp:Label>
                            <asp:TextBox ID="TextBox12" runat="server" Width="70px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height: 25px;">
                        <td>
                            <asp:Label ID="Label19" runat="server" Text="姓名:"></asp:Label>
                            <asp:TextBox ID="TextBox13" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label20" runat="server" Text="关系:"></asp:Label>
                            <asp:TextBox ID="TextBox14" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label21" runat="server" Text="工作单位:"></asp:Label>
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label22" runat="server" Text="职务:"></asp:Label>
                            <asp:TextBox ID="TextBox16" runat="server" Width="70px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height: 25px;">
                        <td>
                            <asp:Label ID="Label23" runat="server" Text="姓名:"></asp:Label>
                            <asp:TextBox ID="TextBox17" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label24" runat="server" Text="关系:"></asp:Label>
                            <asp:TextBox ID="TextBox18" runat="server" Width="70px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label25" runat="server" Text="工作单位:"></asp:Label>
                            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label26" runat="server" Text="职务:"></asp:Label>
                            <asp:TextBox ID="TextBox20" runat="server" Width="70px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <h1>
                <span>教育背景及荣获奖励</span></h1>
            <div class="page_Table">
                <table>
                    <tr style="height: 25px;">
                        <td style="width: 30%">
                            <asp:Label ID="Label27" runat="server" Text="起止时间:"></asp:Label>
                            <asp:TextBox ID="TextBox21" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 30%">
                            <asp:Label ID="Label28" runat="server" Text="学校名称:"></asp:Label>
                            <asp:TextBox ID="TextBox22" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 40%">
                            <asp:Label ID="Label29" runat="server" Text="荣获奖励:"></asp:Label>
                            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height: 25px;">
                        <td style="width: 30%">
                            <asp:Label ID="Label30" runat="server" Text="起止时间:"></asp:Label>
                            <asp:TextBox ID="TextBox24" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 30%">
                            <asp:Label ID="Label31" runat="server" Text="学校名称:"></asp:Label>
                            <asp:TextBox ID="TextBox25" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 40%">
                            <asp:Label ID="Label32" runat="server" Text="荣获奖励:"></asp:Label>
                            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height: 25px;">
                        <td style="width: 30%">
                            <asp:Label ID="Label33" runat="server" Text="起止时间:"></asp:Label>
                            <asp:TextBox ID="TextBox27" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 30%">
                            <asp:Label ID="Label34" runat="server" Text="学校名称:"></asp:Label>
                            <asp:TextBox ID="TextBox28" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 40%">
                            <asp:Label ID="Label35" runat="server" Text="荣获奖励:"></asp:Label>
                            <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height: 25px;">
                        <td style="width: 30%">
                            <asp:Label ID="Label36" runat="server" Text="起止时间:"></asp:Label>
                            <asp:TextBox ID="TextBox30" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 30%">
                            <asp:Label ID="Label37" runat="server" Text="学校名称:"></asp:Label>
                            <asp:TextBox ID="TextBox31" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 40%">
                            <asp:Label ID="Label38" runat="server" Text="荣获奖励:"></asp:Label>
                            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <h1>
                <span>其他信息</span></h1>
            <div class="page_Table">
                <div>
                    <asp:Label ID="Label39" runat="server" Text="社会实践经历:"></asp:Label>
                    <asp:TextBox ID="ExperienceBox" runat="server"></asp:TextBox>日期、职务、事迹、成果
                </div>
                <div>
                    <asp:Label ID="Label40" runat="server" Text="爱好特长:"></asp:Label>
                    <asp:TextBox ID="HobbyBox" runat="server"></asp:TextBox>培养时长、参加比赛、曾获荣誉
                </div>
                <div>
                    <asp:Label ID="Label42" runat="server" Text="你想在NVS里收获的成长点:"></asp:Label>
                    <asp:TextBox ID="ExpectBox" runat="server"></asp:TextBox>
                </div>
            </div>

            <div>
                <asp:Button ID="Button1" runat="server" Text="修 改" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="取 消" />
            </div>
        </div>
    </div>
</asp:Content>
