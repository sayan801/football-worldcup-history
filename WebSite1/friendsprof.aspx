<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="friendsprof.aspx.cs" Inherits="friendsprof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            border: 1px outset #3399FF;
            padding: 1px 4px;
            width: 126px;
            background-color: #99CCFF;
        }
        .style12
        {
            border: 1px ridge #3399FF;
            width: 126px;
            background-color: #99CCFF;
        }
        .style13
        {
            width: 740px;
            background-color: #FFFFFF;
            color: #3333FF;
            font-size: medium;
        }
        .style14
        {
            width: 740px;
            background-color: #FFFFFF;
            color: #3333FF;
        }
        .style15
        {
            color: #3333FF;
        }
        .style16
        {
            width: 740px;
            background-color: #FFFFFF;
            color: #0000CC;
        }
        .style17
        {
            width: 1013px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <div>
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
                    <td class="style17" style="background-color: #3399FF">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="style4"><strong>bKk&nbsp; </strong>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="240px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Height="20px" 
                            style="font-weight: 700; color: #99FF33; background-color: #000066" 
                            Text="Search" onclick="Button1_Click" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; text-align: center; font-weight: 700; font-style: italic; background-color: #000066" 
                            Width="65px" NavigateUrl="~/mypage.aspx">    My Page</asp:HyperLink>
&nbsp;</span><asp:HyperLink ID="HyperLink2" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; background-color: #000066; text-align: center;" 
                            Width="65px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; background-color: #000066; text-align: center;" 
                            Width="90px" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label2" runat="server" Height="20px" 
                            style="font-size: x-small; color: #000066; background-color: #FF0000; font-weight: 700; text-align: center;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:Button ID="Button4" runat="server" Height="22px" onclick="Button4_Click" 
                            style="font-weight: 700; font-style: italic; text-decoration: underline; color: #CCFF33; background-color: #000066" 
                            Text="Notifications" Width="90px" />
                        &nbsp;<asp:Label ID="Label3" runat="server" Height="20px" 
                            
                            style="font-size: x-small; color: #000066; font-weight: 700; background-color: #FF0000; text-align: center;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; font-weight: 700; font-style: italic; color: #99FF33; background-color: #000066; text-align: center;" 
                            Width="50px" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
                        <table cellpadding="0" cellspacing="0" class="style1" style="width: 100%">
                            <tr>
                                <td class="style6" rowspan="3" style="background-color: #FFFFFF">
                                    <asp:Image ID="Image1" runat="server" Height="135px" Width="147px" />
                                </td>
                                <td class="style8" colspan="4">
                                    <asp:Label ID="Label7" runat="server" 
                                        style="font-size: small; color: #0000CC; font-weight: 700; font-style: italic; background-color: #6699FF" 
                                        Text="Label"></asp:Label>
                                </td>
                                <td class="style5" rowspan="3">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="114px" 
                                        ImageUrl="~/image/tmi.jpg" onclick="ImageButton1_Click" Width="138px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style8" colspan="4" style="text-align: left">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="Image2" runat="server" Height="90px" Width="80px" />
&nbsp;<asp:Label ID="Label8" runat="server" style="font-weight: 700; font-size: medium; color: #3333FF"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    <asp:Button ID="Button2" 
                                        runat="server" Height="22px" 
                                        style="font-weight: 700; text-decoration: underline; color: #FFFFFF; background-color: #0000CC" 
                                        Text="Send Message" Width="120px" onclick="Button2_Click" />
                                    <asp:Button ID="Button3" runat="server" Height="22px" 
                                        style="font-weight: 700; text-decoration: underline; color: #FFFFFF; background-color: #0000CC" 
                                        Text="Send Request" Width="120px" onclick="Button3_Click"  />
                                    <asp:Button ID="Button5" runat="server" Height="22px" onclick="Button5_Click" 
                                        style="font-weight: 700; text-decoration: underline; color: #CC0000; background-color: #FF9933" 
                                        Text="Report Block" Width="120px" />
                                    <asp:Label ID="Label28" runat="server" style="color: #009900; font-weight: 700" 
                                        Text="Friend request sent" Visible="False"></asp:Label>
                                    <asp:Label ID="Label29" runat="server" style="font-weight: 700; color: #669900" 
                                        Text="Added to My Friends" Visible="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label31" runat="server" 
                                        style="font-weight: 700; color: #CC0000; background-color: #FFFFFF" 
                                        Text="Report is recorded" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                        <asp:Label ID="Label1" runat="server" Height="19px" style="color: #0000CC; font-weight: 700; margin-bottom: 0px;" 
                            Text="Label" Width="140px" CssClass="style9"></asp:Label>
                                </td>
                                <td class="style8" colspan="4" 
                                    style="background-color: #6699FF; text-align: center;">
                                    <asp:Label ID="Label30" runat="server" 
                                        style="font-weight: 700; text-decoration: underline; color: #000066; font-size: large" 
                                        Text="Details Of This Person Is Not Available Unless You Be A Friend OF His/Her" 
                                        Visible="False"></asp:Label>
                                </td>
                                <td style="border: 1px ridge #3399FF; padding: 0px; background-color: #99CCFF">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td class="style13" style="text-align: right">
                                    <strong>Address:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label9" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td style="border-left: 1px solid #3399FF; padding: 0px; background-color: #FFFFFF" 
                                    rowspan="6">
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="114px" 
                                        ImageUrl="~/image/ami.jpg" onclick="ImageButton2_Click" Width="138px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                        <asp:HyperLink ID="HyperLink6" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-align: left; font-size: medium; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/mypage.aspx">My Page</asp:HyperLink>
                                </td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                                    <strong>City:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label10" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style8" style="text-align: right">
                                    <span class="style15"><strong>Zip Code:</strong></span> </td>
                                <td class="style8">
                                    <asp:Label ID="Label11" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                        <asp:HyperLink ID="HyperLink7" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
                                </td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                                    <strong>State:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label12" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style14" style="text-align: right">
                                    <strong>Country:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label13" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink8" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" CssClass="style19" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label4" runat="server" Height="19px" 
                            
                            style="color: #000066; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" CssClass="style19" Visible="False"></asp:Label>
                                </td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                                    <strong>Contact Number:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label14" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style16" style="text-align: right">
                                    <strong><span class="style15">Email-Id</span>:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label15" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td style="border: 1px ridge #3399FF; padding: 0px; background-color: #99CCFF">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink9" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/myfriends.aspx">My Friends</asp:HyperLink>
                        <asp:Label ID="Label5" runat="server" Height="19px" 
                            
                            style="color: #000066; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" Visible="False"></asp:Label>
                                </td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                                <td style="border-left: 1px solid #6699FF; padding: 0px; background-color: #FFFFFF" 
                                    rowspan="6">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="114px" 
                                        ImageUrl="~/image/10264947_825096647518667_769082307_n.jpg" 
                                        onclick="ImageButton3_Click" Width="138px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                                    <strong>Gender:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label16" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style14" style="text-align: right">
                                    <strong>Date of Birth:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label17" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink12" runat="server" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" Height="19px" 
                                        Width="110px" NavigateUrl="~/gallary.aspx">My Gallary</asp:HyperLink>
                                </td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                        <strong>High school name:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label18" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style14" style="text-align: right">
                        <strong>University name:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label19" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink10" runat="server" Height="19px" 
                            style="color: #0000CC; font-weight: 700; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/entertain.aspx">Entertainments</asp:HyperLink>
                                </td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                            <strong>Working at:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label20" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style8">
                                    <asp:Label ID="Label21" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style8">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink11" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" Width="110px" 
                                        NavigateUrl="~/people.aspx">You may know</asp:HyperLink>
                                </td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                                <td style="border: 1px ridge #3399FF; padding: 0px; background-color: #99CCFF">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                            <strong>Degree/qualification:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label22" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style14" style="text-align: right">
                            <strong>Here for:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label23" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td style="border-left: 1px ridge #6699FF; border-bottom: 1px ridge #6699FF; padding: 0px; background-color: #FFFFFF" 
                                    rowspan="6">
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="114px" 
                                        ImageUrl="~/image/10248967_825096827518649_1021482137_n.jpg" 
                                        onclick="ImageButton4_Click" Width="138px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                        <strong>Likings:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label24" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style14" style="text-align: right">
                        <strong>Sports &amp; games:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label25" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style14" style="text-align: right">
                                            <strong>Languages:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label26" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                                <td class="style14" style="text-align: right">
                                            <strong>Religion:</strong></td>
                                <td class="style8">
                                    <asp:Label ID="Label27" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style8" colspan="4">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        </asp:Content>


