<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

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
            width: 874px;
        }
        .style3
        {
            font-size: large;
            text-decoration: underline;
        }
        .style4
        {
            width: 531px;
        }
        .style5
        {
            text-align: right;
            width: 367px;
        }
        .style6
        {
            color: #66CCFF;
        }
        .style9
        {
            color: #66CCFF;
            font-size: large;
        }
        .style10
        {
            text-decoration: underline;
        }
    </style>
</head>
<body onload="noBack();" background="image/loginfinal.jpg" style="height: 842px">
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
        <br />
        <br />
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" style="color: #66CCFF">
                    <strong>Admin Login</strong></td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5" style="color: #3399FF">
                    <strong>User Email-Id:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6" style="text-align: right">
                    <strong>Password:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="18px" TextMode="Password" 
                        Width="120px"></asp:TextBox>
&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6" style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9" style="text-align: right">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click" 
                        style="font-weight: 700; color: #66FF33; text-decoration: underline; background-color: #0000FF" 
                        Text="Login" Width="80px" />
                    <asp:Label ID="Label1" runat="server" style="color: #FF6600" 
                        Text="Invalid user name or password!!!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9" style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9" style="text-align: right">
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        style="font-weight: 700; font-size: large; color: #FFFF66" 
                        CssClass="style10" NavigateUrl="~/adminreg.aspx">Admin Sign Up</asp:HyperLink>
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
    
    </div>
    </form>
</body>
</html>
