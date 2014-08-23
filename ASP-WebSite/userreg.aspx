<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userreg.aspx.cs" Inherits="userreg" %>

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
            width: 154px;
        }
        .style3
        {
            width: 993px;
            padding: 0px;
        }
        .style13
        {
            width: 336px;
            text-align: right;
        }
        .style14
        {
            text-align: right;
            color: #000066;
            width: 336px;
        }
        .style15
        {
            text-align: right;
            color: #000066;
            width: 336px;
            text-decoration: underline;
            font-size: large;
        }
        .style16
        {
            text-align: right;
            color: #0000CC;
            width: 336px;
        }
        .style17
        {
            text-align: right;
            color: #3333FF;
            width: 336px;
        }
        .style18
        {
            text-align: right;
            color: #0000CC;
            width: 336px;
            font-weight: bold;
        }
        .style19
        {
            width: 123px;
            height: 19px;
            color: #3333FF;
            text-align: right;
        }
        .style20
        {
            text-align: right;
            color: #3333FF;
            width: 336px;
            height: 19px;
        }
        .style21
        {
            height: 19px;
        }
        .style22
        {
            color: #3333FF;
            text-align: right;
        }
        .style23
        {
            color: #3333FF;
        }
        .style24
        {
            height: 19px;
            width: 220px;
        }
        .style25
        {
            width: 220px;
        }
        .style11
        {
            color: #000066;
            text-decoration: underline;
            font-size: large;
        }
        .style26
        {
            background-color: #99CCFF;
        }
        .style27
        {
            width: 336px;
            text-align: right;
            color: #00CC00;
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
                        style="font-weight: 700; font-size: small; color: #0000CC; font-style: italic; background-color: #CCCCFF;" 
                        Text="Label"></asp:Label>
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td class="style27">
                                <strong>Welcome&nbsp; to boiTHAKkhana:</strong></td>
                            <td colspan="3">
                                &nbsp;<asp:Label ID="Label4" runat="server" 
                                    style="color: #0000CC; font-weight: 700; font-size: medium; background-color: #FFFFFF" 
                                    Text="Label"></asp:Label>
                                &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15">
                                <strong style="text-align: left"><span class="style26">Tell us about yourself</span></strong></td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style14">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <strong>Address</strong></td>
                                        <td class="style24">
&nbsp;
                                            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                        </td>
                                        <td class="style19">
                                            <strong>Contact Number</strong></td>
                                        <td class="style21">
&nbsp;
                                            <asp:TextBox runat="server" Height="20px" Width="150px" ID="TextBox5"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style17">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17">
                                            <strong>Home city
            </strong>
                                        </td>
                                        <td class="style25">
&nbsp;
                                            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                        </td>
                                        <td class="style22">
                                            <strong>Religion
            </strong>
                                        </td>
                                        <td>
&nbsp;
                                            <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style17">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17">
                                            <strong>Zipcode
            </strong>
                                        </td>
                                        <td class="style25">
&nbsp;
                                            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                        </td>
                                        <td class="style23" style="text-align: right">
                                            <strong>Languages</strong></td>
                                        <td>
&nbsp;
                                            <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style18">
                State
                                        </td>
                                        <td class="style25">
&nbsp;
                                            <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                        </td>
                                        <td class="style23" style="text-align: right">
                                            <strong>Country</strong></td>
                                        <td>
&nbsp;
                                            <asp:TextBox ID="TextBox8" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style18">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                <span class="style11">
                <strong><span class="style26">Upload profile picture</span></strong></span>
                                        </td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                            &nbsp;</td>
                                        <td colspan="3">
                <asp:FileUpload ID="FileUpload1" runat="server" 
                    style="font-weight: 700; color: #CC0000" />
            &nbsp;&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Height="20px" Style="color: #CC0000; font-size: medium;
                    font-weight: 700" Text="Label" Visible="False" Width="150px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click" 
                                                style="font-weight: 700; text-decoration: underline; font-size: large; color: #0000CC; background-color: #6699FF;" 
                                                Text="Save &amp; continue" Width="160px" />
                <asp:Label ID="Label3" runat="server" Height="20px" 
                    style="font-weight: 700; text-align: center; color: #CC0000" Text="Failed !!!" 
                    Visible="False" Width="150px"></asp:Label>
                                        </td>
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
