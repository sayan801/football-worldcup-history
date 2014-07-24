<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="my.aspx.cs" Inherits="De" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 880px;
        }
        .style12
        {
            width: 126px;
            background-color: #99CCFF;
            border-right-style: solid;
            border-right-color: #3399FF;
        }
        .style13
        {
            width: 113px;
        }
        .style14
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table cellpadding="0" cellspacing="0" class="style14">
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11" style="background-color: #3399FF">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style4"><strong>bKk&nbsp; </strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" 
                    style="margin-left: 0px; position: relative;" Width="240px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Height="22px" 
                            style="font-weight: 700; color: #99FF33; background-color: #000066; position: relative;" 
                            Text="Search" Width="65px" />
&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" Height="20px" 
                            style="border-style: outset; border-color: #FFFFFF; font-size: small; color: #99FF33; text-align: center; font-weight: 700; font-style: italic; background-color: #000066; position: relative;" 
                            Width="65px">    My Page</asp:HyperLink>
&nbsp;</span><asp:HyperLink ID="HyperLink2" runat="server" Height="20px" 
                            style="border-style: outset; border-color: #FFFFFF; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; text-align: center; background-color: #000066; position: relative;" 
                            Width="65px">My Profile</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Height="20px" 
                            style="border-style: outset; border-color: #FFFFFF; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; text-align: center; background-color: #000066; position: relative;" 
                            Width="90px">My Messages</asp:HyperLink>
                        <asp:Label ID="Label2" runat="server" Height="20px" 
                            style="font-size: x-small; color: #FFFF00; background-color: #FF0000; position: relative;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" Height="20px" 
                            style="border-style: outset; border-color: #FFFFFF; font-size: small; font-weight: 700; font-style: italic; color: #99FF33; text-align: center; background-color: #000066; position: relative;" 
                            Width="80px">Notifications</asp:HyperLink>
                        &nbsp;<asp:Label ID="Label3" runat="server" Height="20px" 
                            
                            style="font-size: x-small; color: #FFFF00; font-weight: 700; background-color: #FF0000; position: relative;" 
                            Width="20px" Visible="False"></asp:Label>
                        <asp:HyperLink ID="HyperLink5" runat="server" Height="20px" 
                            style="font-size: small; font-weight: 700; font-style: italic; color: #99FF33; text-align: center; background-color: #000066; position: relative; border-left-style: outset; border-left-color: #FFFFFF; border-right-style: outset; border-right-color: #FFFFFF; border-top-style: solid; border-top-color: #FFFFFF; border-bottom-style: outset; border-bottom-color: #FFFFFF;" 
                            Width="50px">Logout</asp:HyperLink>
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td class="style6" rowspan="3" style="background-color: #FFFFFF">
                                <asp:Image ID="Image1" runat="server" Height="135px" 
                                    style="border: 1px solid #800080; padding: 1px 4px; position: relative;" 
                                    Width="134px" />
                            </td>
                            <td class="style8">
                                <asp:TextBox ID="TextBox3" runat="server" Height="79px" TextMode="MultiLine" 
                                    Width="737px" style="position: relative"></asp:TextBox>
                            </td>
                            <td class="style5" rowspan="3">
                                <asp:Image ID="Image2" runat="server" Height="135px" 
                                    style="border: 1px solid #800080; padding: 1px 4px; position: relative;" 
                                    Width="120px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="20px" 
                            style="font-weight: 700; text-align: center; color: #000066; background-color: #6699FF; position: relative;" 
                            Text="Post Scrap" Width="200px" />
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="200px" 
                            
                                    style="font-weight: 700; color: #000066; background-color: #6699FF; position: relative;" />
                        &nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Button ID="Button3" runat="server" Height="20px" 
                            style="font-weight: 700; color: #000066; background-color: #6699FF; position: relative;" 
                            Text="Upload" Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                        <asp:Label ID="Label1" runat="server" Height="19px" style="border-style: solid; border-color: #3399FF; color: #0000CC; font-weight: 700; margin-bottom: 0px; position: relative;" 
                            Text="Label" Width="140px" CssClass="style9"></asp:Label>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                            <td style="background-color: #99CCFF">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td rowspan="6" style="background-color: #FFFFFF">
                                <asp:Image ID="Image3" runat="server" Height="135px" Width="132px" 
                                    style="position: relative" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                        <asp:HyperLink ID="HyperLink6" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-align: left; font-size: medium; background-color: #99CCFF; position: relative;" 
                            Width="110px">My Page</asp:HyperLink>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                        <asp:HyperLink ID="HyperLink7" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF; position: relative;" 
                            Width="110px">My Profile</asp:HyperLink>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                        <asp:HyperLink ID="HyperLink8" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF; position: relative;" 
                            Width="110px" CssClass="style19">My Messages</asp:HyperLink>
                        <asp:Label ID="Label4" runat="server" Height="19px" 
                            
                            style="color: #000066; text-align: center; background-color: #00FF00; font-size: small; position: relative;" 
                            Width="10px" CssClass="style19" Visible="False"></asp:Label>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td style="background-color: #99CCFF">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                        <asp:HyperLink ID="HyperLink9" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; background-color: #99CCFF; position: relative;" 
                            Width="110px">My Friends</asp:HyperLink>
                        <asp:Label ID="Label5" runat="server" Height="19px" 
                            
                            style="color: #000066; text-align: center; background-color: #00FF00; font-size: small; position: relative;" 
                            Width="10px" Visible="False"></asp:Label>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                            <td rowspan="6" style="background-color: #FFFFFF">
                                <asp:Image ID="Image4" runat="server" Height="135px" Width="132px" 
                                    style="position: relative" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                        <asp:HyperLink ID="HyperLink12" runat="server" 
                            style="font-weight: 700; color: #0000CC; position: relative;" Height="19px" 
                                    Width="110px">My Gallary</asp:HyperLink>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                        <asp:HyperLink ID="HyperLink10" runat="server" Height="19px" 
                            style="color: #0000CC; font-weight: 700; background-color: #99CCFF; position: relative;" 
                            Width="110px">Entertainments</asp:HyperLink>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-left-style: outset; border-left-color: #3399FF; border-right-style: solid; border-right-color: #3399FF; border-bottom-style: solid; border-bottom-color: #3399FF; background-color: #99CCFF">
                        <asp:HyperLink ID="HyperLink11" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; position: relative;" Width="110px">Chat Room</asp:HyperLink>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                            <td style="background-color: #99CCFF">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-right-style: solid; border-right-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td rowspan="6" style="background-color: #FFFFFF">
                                <asp:Image ID="Image5" runat="server" Height="135px" Width="132px" 
                                    style="position: relative" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" 
                                style="border-right-style: solid; border-right-color: #3399FF; background-color: #99CCFF">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


