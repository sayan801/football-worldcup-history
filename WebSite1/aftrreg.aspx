<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aftrreg.aspx.cs" Inherits="aftrreg" %>

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
            width: 151px;
        }
        .style3
        {
            width: 1005px;
            text-align: center;
        }
        .style4
        {
            font-size: x-large;
            color: #009933;
        }
    </style>
</head>
<body onload="onBack();" background="image/regg.jpg" style="height: 842px">
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
                        style="font-weight: 700; font-size: small; color: #3333FF; font-style: italic; background-color: #CCCCFF" 
                        Text="Label"></asp:Label>
                    <br />
                    <br />
                    <strong><span class="style4">WELCOME</span></strong><br />
                    <asp:Image ID="Image1" runat="server" Height="89px" Width="90px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" 
                        style="font-weight: 700; color: #0000CC; font-style: italic; font-size: large" 
                        Text="Label"></asp:Label>
&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="font-weight: 700; text-decoration: underline; font-size: medium; color: #000066; background-color: #6699FF" 
                        Text="Go to My Profile" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
