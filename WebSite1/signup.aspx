<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 130px;
        }
        .style5
        {
            width: 992px;
        }
        .style8
        {
            color: #3333FF;
            font-size: large;
        }
        .style9
        {
            width: 329px;
        }
        .style7
        {
            font-size: medium;
            color: #0000CC;
            text-align: right;
        }
        .style10
        {
            text-align: left;
            color: #3333FF;
            font-size: large;
            width: 128px;
        }
        .style11
        {
            text-align: left;
            color: #0000CC;
            font-size: medium;
            width: 128px;
        }
        .style6
        {
            width: 451px;
        }
        .style12
        {
            width: 354px;
        }
        .style13
        {
            color: #3333FF;
            font-size: large;
            width: 354px;
        }
        .style14
        {
            text-align: left;
            color: #0000CC;
            font-size: large;
            width: 128px;
        }
        </style>
</head>

<body onload="noBack();" background="image/signup.jpg" style="height: 842px">

    <form id="form1" runat="server">
    <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
<asp:updatepanel ID="Updatepanel1" runat="server">
<ContentTemplate>
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td style="background-color: #FFFFFF" class="style5">
                    <asp:Label ID="Label1" runat="server" Text="Label" 
                        
                        style="font-style: italic; font-family: Arial, Helvetica, sans-serif; font-size: small; color: #3333FF; font-weight: 700; background-color: #CCCCFF;"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td colspan="2">
                    <span class="style8"><strong>New to
                                boiTHAkkhana !!!</strong></span></td>
                <td rowspan="6">
                    <asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="~/image/14.jpg" 
                        style="margin-top: 0px" Width="325px" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;&nbsp;</td>
                <td>
                    <span class="style7"> <span class="style8"><strong>Sign Up Here....</strong></span></span></td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <strong><span class="style7">Name</span></strong></td>
                <td class="style12">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <span class="style8"><strong> <span class="style7">Email-Id</span></strong></span></td>
                <td class="style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="150px"></asp:TextBox>
                    <span class="style8"><strong> <span class="style7">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ControlToValidate="TextBox2" 
                        ErrorMessage="Enter Email in correct format" Style="color: #CC0000"
                                        
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </span>
                    </strong>
                            </span>
                        </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td rowspan="5">
                    <asp:Image ID="Image2" runat="server" Height="118px" ImageUrl="~/image/13.jpg" 
                        Width="325px" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                            <span class="style6"> <span class="style8"><strong> <span class="style7">
                    Re-Enter Email-Id</span></strong></span></span></td>
                <td class="style12">
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="150px"></asp:TextBox>
                    <span class="style8"><strong> <span class="style7">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                                        ControlToValidate="TextBox3" 
                        ErrorMessage="Email-Id mismatch" Style="color: #CC0000"></asp:CompareValidator>
                                </span>
                    </strong>
                            </span>
                        </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td class="style10">
                    <span class="style8"><strong> <span class="style7">Password</span></strong></span></td>
                <td class="style12">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" TextMode="Password" 
                        Width="150px"></asp:TextBox></ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <span class="style8"><strong> <span class="style7">Confirm Password</span></strong></span></td>
                <td class="style12">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" TextMode="Password" 
                        Width="150px"></asp:TextBox></ContentTemplate>
                    </asp:UpdatePanel>
                    <span class="style8"><strong><asp:CompareValidator ID="CompareValidator2" 
                        runat="server" ControlToCompare="TextBox4"
                                    ControlToValidate="TextBox5" ErrorMessage="Password mismatch" Style="color: #CC0000;
                                    font-size: medium"></asp:CompareValidator>
                    </strong>
                            </span>
                        </td>
                <td rowspan="6">
                    <asp:Image ID="Image3" runat="server" Height="118px" ImageUrl="~/image/12.jpg" 
                        Width="325px" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    <strong>Gender</strong></td>
                <td class="style12">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="120px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                        </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    <strong>Date of Birth</strong></td>
                <td class="style13">
                    <strong> 
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="120px"></asp:TextBox>
                    </strong>

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                        ImageUrl="~/image/calendar_new.png" onclick="ImageButton1_Click" Width="20px" /></ContentTemplate>
                        </asp:UpdatePanel>
&nbsp;
                                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style13" rowspan="5">
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="43px" 
                        onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="184px" 
                            VisibleDate="1990-01-01">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar></ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td rowspan="5">
                    <asp:Image ID="Image4" runat="server" Height="118px" ImageUrl="~/image/10.jpg" 
                        Width="325px" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style13">
                    <span class="style8">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Save &amp; continue" Height="25px" 
                        style="font-weight: 700; font-size: large; text-decoration: underline; color: #0000CC; background-color: #99CCFF" 
                        Width="160px" />
                                <asp:Label ID="Label2" runat="server" Style="font-size: medium; font-weight: 700;
                                    color: #CC0000" Text="Registration failed !!!!" Visible="False"></asp:Label>
                            </span>
                                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    
</ContentTemplate>
</asp:updatepanel></form></body>
</html>
