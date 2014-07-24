<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 1014px;
            background-color: #99CCFF;
        }
        .style12
        {
            width: 740px;
            background-color: #FFFFFF;
            color: #3333FF;
        }
        .style13
        {
            color: #0000CC;
            font-weight: 700;
        }
        .style14
        {
            color: #3333FF;
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
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="style4"><strong>bKk
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="240px"></asp:TextBox>
                </strong>
                        </span>&nbsp;<span class="style4"><asp:Button ID="Button1" 
                    runat="server" Height="20px" 
                            style="font-weight: 700; color: #99FF33; background-color: #000066" 
                            Text="Search" onclick="Button1_Click" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; text-align: center; font-weight: 700; font-style: italic; background-color: #000066" 
                            Width="65px" NavigateUrl="~/mypage.aspx">    My Page</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; background-color: #000066; text-align: center;" 
                            Width="65px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; background-color: #000066; text-align: center;" 
                            Width="90px" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label2" runat="server" Height="20px" 
                            style="font-size: x-small; color: #000066; background-color: #FF0000; text-align: center; font-weight: 700;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:Button ID="Button2" runat="server" Height="22px" onclick="Button2_Click" 
                    style="font-weight: 700; font-style: italic; text-decoration: underline; color: #CCFF33; background-color: #000066" 
                    Text="Notifications" Width="90px" />
                        <asp:Label ID="Label3" runat="server" Height="20px" 
                            
                            style="font-size: x-small; color: #000066; font-weight: 700; background-color: #FF0000; text-align: center;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; font-weight: 700; font-style: italic; color: #99FF33; background-color: #000066; text-align: center;" 
                            Width="50px" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
                        </span>
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td class="style6" rowspan="6">
                            <asp:Image ID="Image1" runat="server" Height="111px" Width="130px" />
                        </td>
                        <td class="style7" colspan="4">
                            <asp:Label ID="Label6" runat="server" 
                                style="font-style: italic; font-weight: 700; font-size: small; color: #000066; background-color: #6699FF" 
                                Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="style5" rowspan="6" 
                            style="border: 1px ridge #99CCFF; padding: 0px; background-color: #99CCFF">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="114px" 
                                ImageUrl="~/image/ami.jpg" onclick="ImageButton1_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7" style="text-align: right">
                    <strong><span class="style12">Name</span></strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label7" runat="server" style="color: #0000CC; font-weight: 700"></asp:Label>
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                    <strong>Date of Birth</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label15" runat="server" style="color: #0000CC; font-weight: 700"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style12" style="text-align: right">
                                <strong>Gender</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span><span class="style13"> </span>
                            <asp:Label ID="Label8" runat="server" CssClass="style13"></asp:Label>
                            <span class="style13">&nbsp;</span></td>
                        <td class="style12" style="text-align: right">
                                <strong>Address</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label27" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                        <asp:Label ID="Label1" runat="server" Height="19px" style="color: #0000CC; font-weight: 700; margin-bottom: 0px;" 
                            Text="Label" Width="130px" CssClass="style9"></asp:Label>
                                </td>
                        <td class="style12" style="text-align: right">
                                            <strong>Home city</strong></td>
                        <td class="style7">
                            <strong>:</strong>
                            <asp:Label ID="Label9" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style7" style="text-align: right">
                                            <strong><span class="style13">Zipcode</span>
            </strong>
                                        </td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label10" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label26" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="114px" 
                                ImageUrl="~/image/10248967_825096827518649_1021482137_n.jpg" 
                                onclick="ImageButton2_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink6" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-align: left; font-size: medium; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/mypage.aspx">My Page</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                            <strong>State</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label11" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                                            <strong>Country</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label12" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink7" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                                            <strong>Contact Number</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label13" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style7" style="text-align: right">
                    <span class="style8"><strong> <span class="style12">Email-Id</span></strong></span></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label14" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink8" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" CssClass="style19" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label4" runat="server" Height="19px" 
                            
                            style="color: #000066; text-align: center; background-color: #00FF00; font-size: small;" 
                            Width="10px" CssClass="style19" Visible="False"></asp:Label>
                                </td>
                        <td class="style12" style="text-align: right">
                        <strong>High school name</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label16" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink9" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/myfriends.aspx">My Friends</asp:HyperLink>
                        <asp:Label ID="Label5" runat="server" Height="19px" 
                            
                            style="color: #000066; text-align: center; background-color: #00FF00; font-size: small;" 
                            Width="10px" Visible="False"></asp:Label>
                                </td>
                        <td class="style12" style="text-align: right">
                        <strong>University name</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label17" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            <strong>Degree/qualification</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label18" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="114px" 
                                ImageUrl="~/image/10154880_825096677518664_1086807491_n.jpg" 
                                onclick="ImageButton3_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink12" runat="server" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" 
                                Height="19px" Width="110px" NavigateUrl="~/gallary.aspx">My Gallary</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                            <strong>Working at</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label19" runat="server" style="color: #0000CC; font-weight: 700"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Label ID="Label20" runat="server" style="color: #0000CC; font-weight: 700"></asp:Label>
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink10" runat="server" Height="19px" 
                            style="color: #0000CC; font-weight: 700; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/entertain.aspx">Entertainments</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                            <strong>Here for</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label21" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                        <strong>Sports &amp; games</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label22" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink11" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" 
                                Width="110px" NavigateUrl="~/people.aspx">You may know</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                        <strong>Likings</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label23" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                                            <strong>Religion</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label24" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="114px" 
                                ImageUrl="~/image/tmi.jpg" onclick="ImageButton4_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                                            <strong>Languages</strong></td>
                        <td class="style7">
                            <span class="style14"><strong>:</strong></span>
                            <asp:Label ID="Label25" runat="server" style="font-weight: 700; color: #0000CC"></asp:Label>
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            <asp:HyperLink ID="HyperLink14" runat="server" Height="20px" 
                                style="font-weight: 700; text-decoration: underline; color: #3333FF; text-align: center; border: 1px solid #6699FF; padding: 1px; background-color: #99CCFF" 
                                Width="200px" NavigateUrl="~/editprofile.aspx">Edit basic informations</asp:HyperLink>
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            <asp:HyperLink ID="HyperLink15" runat="server" Height="20px" 
                                style="font-weight: 700; text-decoration: underline; color: #3333FF; text-align: center; border: 1px outset #6699FF; padding: 1px; background-color: #99CCFF" 
                                Width="200px" NavigateUrl="~/editpicture.aspx">Edit profile picture</asp:HyperLink>
                        </td>
                        <td class="style7">
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


