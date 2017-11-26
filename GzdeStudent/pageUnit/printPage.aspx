<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="printPage.aspx.cs" Inherits="GzdeStudent.pageUnit.printPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
function printsetup(){   
 // 打印页面设置    
 wb.execwb(8,1);    
 }     
function printpreview(){   
  // 打印页面预览        
  wb.execwb(7,1);     
     }      
function printit()   
      {
       if (confirm('确定打印吗？')) 
      {
   wb.execwb(6, 6)    
      }  
      
}
</script>
<div class="page_Banner">
<div class="page_Title">
<img src="../assets/images/title_icon.png" alt="#" style="margin:10px 10px 0 10px;float:left" /><span>学员须知</span>
</div>
<div class="page_Content">
<h2><span>国之栋教育学员报名须知</span></h2>
<table>
                    <tr>
                        <td style="width: 35%;">
                            <asp:Label ID="Label1" runat="server" Text="姓名:"></asp:Label>
                            <asp:Label ID="NameLabel"
                                runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 38%;">
                            <asp:Label ID="Label3" runat="server" Text="性别:"></asp:Label>
                                                        <asp:Label ID="SexLabel"
                                runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 30%;">
                            <asp:Label ID="Label5" runat="server" Text="手机:"></asp:Label>
                                                        <asp:Label ID="TelLabel"
                                runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="学校:"></asp:Label>
                            <asp:Label ID="UniversityLabel" runat="server" Text="Lable"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="专业:"></asp:Label>
                            <asp:Label ID="MajorLabel"
                                runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="年级:"></asp:Label>
                            <asp:Label ID="GradeLable" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
<div class="print_Text">
<h3>NVS新起点特训营报名特别说明</h3>
1.本表须本人亲自填写，字迹工整清晰，保证信息真实有效。<br />
2.学员须交纳全额培训费和纪律保证金方可参加培训。<br />
3.学员的个人信息资料国之栋教育科技集团及所属分公司有义务为其保密。<br />
4.参加培训的有效期为年月日至年月日，超过有效期未参加培训视为学员主动放弃。<br />
5.退费说明：<br />
（1）因本公司原因造成培训班未能在上述有效期内举办的，退还学员全部培训费用；<br />
（2）因本公司原因造成培训班中途停办，退费标准如下：课程进行未达到一半课时的，退还其所交纳培训费的50%；课程进行一半课时以上但全部课程没有完成的，退还其所交纳培训费的20%。<br />
（3）因学员个人原因而未能参加培训或未完成全部课程的，培训费和纪律保证金一律不予退还。<br />
<h3>NVS新起点特训营培训纪律要求</h3>
1.培训期间要全程参与课程活动；积极思考，踊跃互动，认真完成作业。<br />
2.培训期间关闭一切响闹装置。<br />
3.未经培训师允许不能在看课堂上随意走动和私下讲话交流。<br />
4.培训期间和培训结束后都不得向未参加NVS学习的人透露课程内容。<br />
5.对参训同学的个人分享保密。<br />
6.要准时入场，不允许迟到、早退。<br />
凡遵守上述纪律要求的学员，纪律保证金将在当期培训结束后全额退还；同时学员可申请免费复训一次。<br />
凡违反上述纪律要求的学员，纪律保证金将不予退还。<br />
如有严重违反上述纪律要求的行为，培训师有权决定该学员是否可以继续参加当期培训。<br />
</div>
<div class="mark_Name">
<h2><span>声 明</span></h2>
<h4>以上特别说明和纪律要求本人已全部知悉并同意遵守。</h4>
<h5>学员签名：</h5>
<p>      年      月      日</p>
</div>
</div>
<div>
<input name="button1" type="button" value="打印页面" onclick="javascript:printit()" />
<input name="" type="button" value="打印页面预览" onclick="javascript:printpreview" />
</div>
</div>
</asp:Content>
