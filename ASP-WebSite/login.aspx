<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 180px;
        }
        .style4
        {
            width: 560px;
        }
        .style5
        {
            font-size: large;
            text-decoration: underline;
            color: #3366FF;
        }
        .style6
        {
            font-size: medium;
            color: #3399FF;
            text-align: left;
        }
        .style7
        {
            font-size: medium;
            color: #3399FF;
        }
        .style8
        {
            color: #99CCFF;
        }
        .style9
        {
            color: #3399FF;
        }
        .style10
        {}
    </style>
</head>
<body onload="noBack();" background="image/login.jpg" style="height: 842px">
    <form id="form1" runat="server">
    <div style="text-align: left">
    
       
        <table cellpadding="0" cellspacing="0" class="style2">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <br />
                    <br />
                    <br />
                    <br />
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
                <td class="style3" rowspan="15">
                    &nbsp;</td>
                <td class="style4" rowspan="15">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="5000" ontick="Timer1_Tick">
                    </asp:Timer>
                    
                    <asp:Image ID="Image1" runat="server" Height="268px" Width="549px" 
                            
                            style="border-left-style: groove; border-left-color: #C0C0C0; border-right-style: groove; border-right-color: #C0C0C0; border-top-style: ridge; border-top-color: #C0C0C0; border-bottom-style: groove; border-bottom-color: #C0C0C0" />
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style5"><em class="style8" style="font-size: large">User 
                    Login</em></span></strong>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong style="text-align: left">&nbsp;Email&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" TextMode="Password" 
                        Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Button2" runat="server" Height="25px" onclick="Button2_Click" 
                        style="font-weight: 700; font-size: large; color: #0000CC; background-color: #00FF00" 
                        Text="Login" Width="100px" />
&nbsp;
                </td>
            </tr>
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" 
                        style="color: #FF3300; text-align: center" 
                        Text="Invalid Email Id or Password !!!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>
            </tr>
            <tr>
                <td class="style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong style="font-size: large"><span class="style10">&nbsp; &nbsp; New to boiTHAKkhana&nbsp;
                    </span></strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                    <asp:Button 
                        ID="Button1" runat="server" BorderColor="#0066FF" BorderStyle="Outset" 
                        CssClass="style7" Height="30px" 
                        style="font-weight: 700; text-decoration: underline; font-size: large; color: #0000CC; background-color: #00FF00" 
                        Text="Sign up Now!" Width="130px" PostBackUrl="~/signup.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
       
    </div>
    </form>
</body>
</html>
