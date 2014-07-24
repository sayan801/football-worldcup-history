<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userreg1.aspx.cs" Inherits="userreg1" %>

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
            width: 153px;
        }
        .style3
        {
            width: 1001px;
        }
        .style4
        {
            width: 437px;
            text-align: right;
        }
        .style5
        {
            width: 437px;
            text-align: right;
            color: #000066;
            text-decoration: underline;
            font-size: large;
        }
        .style7
        {
            width: 437px;
            text-align: right;
            color: #3333FF;
        }
        .style8
        {
            width: 216px;
        }
        .style9
        {
            width: 120px;
            text-align: right;
        }
        .style10
        {
            width: 120px;
            color: #0000CC;
        }
        .style11
        {
            width: 216px;
            color: #0000CC;
        }
        .style12
        {
            width: 437px;
            text-align: right;
            color: #0000CC;
        }
        .style13
        {
            font-size: large;
            color: #000066;
            text-decoration: underline;
            background-color: #99CCFF;
        }
        .style14
        {
            background-color: #99CCFF;
        }
        .style15
        {
            width: 120px;
            text-align: right;
            color: #3333FF;
        }
        .style16
        {
            width: 216px;
            color: #3333FF;
        }
        .style17
        {
            width: 437px;
            text-align: right;
            color: #00CC00;
            font-size: large;
        }
        .style19
        {
            width: 437px;
            text-align: right;
            color: #000066;
            font-size: large;
        }
        .style20
        {
            text-decoration: underline;
        }
    </style>
</head>
<body onload="noBack();" background="image/reg.jpg" style="height: 842px">
    <form id="form1" runat="server">
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
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" 
                        style="font-style: italic; color: #3333FF; font-weight: 700; font-size: small; background-color: #CCCCFF;" 
                        Text="Label"></asp:Label>
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td class="style17">
                                <strong><span class="style20">Welcome&nbsp; to boiTHAKkhana</span>:</strong></td>
                            <td class="style8">
                                <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #0000CC" 
                                    Text="Label"></asp:Label>
                            &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                        <strong><span class="style14">Tell us about your education</span></strong></td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                        <strong>High school name</strong></td>
                            <td class="style8">
&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                        <strong>College/University name</strong></td>
                            <td class="style8">
&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="150px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                        <strong>Ongoing degree/qualification</strong></td>
                            <td class="style8">
&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="150px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <strong><span class="style14">Tell us about your profession</span></strong></td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                        <strong>Job name</strong></td>
                            <td class="style11">
&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="150px"></asp:TextBox>
                            </td>
                            <td class="style10" style="text-align: right">
                        <strong>Employee at</strong></td>
                            <td>
&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                        <strong><span class="style13">Tell us about your interests/hobbies</span></strong></td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                        <strong>Looking for </strong>
                            </td>
                            <td class="style16">
&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" 
                            style="font-weight: 700; color: #3333FF" Width="150px">
                            <asp:ListItem>Men</asp:ListItem>
                            <asp:ListItem>Women</asp:ListItem>
                            <asp:ListItem>Men &amp; Women</asp:ListItem>
                        </asp:DropDownList>
                            </td>
                            <td class="style15">
                        <strong>Sports &amp; games</strong></td>
                            <td>
&nbsp;
                                <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                            <td class="style15">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                        <strong>Likings</strong></td>
                            <td class="style16">
&nbsp;
                                <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="150px"></asp:TextBox>
                            </td>
                            <td class="style15">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                            <td class="style15">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click" 
                                    style="font-weight: 700; text-decoration: underline; color: #0000CC; font-size: large; background-color: #6699FF" 
                                    Text="Save &amp; Continue" Width="160px" />
                            </td>
                            <td class="style15">
                                <asp:Label ID="Label4" runat="server" 
                                    style="text-align: left; font-weight: 700; color: #FF0000; font-size: medium" 
                                    Text="Failed!!!" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
