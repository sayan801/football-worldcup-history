<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="editpicture.aspx.cs" Inherits="editpicture" %>

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
            text-decoration: underline;
            color: #FF5050;
        }
        .style15
        {
            font-size: large;
        }
        .style16
        {
            font-size: large;
            text-decoration: underline;
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
                        <asp:Button ID="Button1" runat="server" Height="22px" 
                    style="font-weight: 700; font-style: italic; text-decoration: underline; color: #CCFF33; background-color: #000066" 
                    Text="Search" Width="67px" onclick="Button1_Click" />
                        </span>&nbsp;<span class="style4">
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
&nbsp;<asp:Button ID="Button5" runat="server" Height="22px" onclick="Button5_Click" 
                    style="font-weight: 700; font-style: italic; text-decoration: underline; color: #CCFF33; background-color: #000066" 
                    Text="Notifications" Width="90px" />
                        <asp:Label ID="Label3" runat="server" Height="20px" 
                            
                            style="font-size: x-small; color: #000066; font-weight: 700; background-color: #FF0000" 
                            Width="20px"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; font-weight: 700; font-style: italic; color: #99FF33; background-color: #000066; text-align: center;" 
                            Width="50px" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
                        </span>
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td class="style6" rowspan="7">
                            <asp:Image ID="Image1" runat="server" Height="111px" Width="130px" />
                        </td>
                        <td class="style7" colspan="4">
                            <asp:Label ID="Label6" runat="server" 
                                style="font-style: italic; font-weight: 700; font-size: small; color: #000066; background-color: #6699FF" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style5" rowspan="7" 
                            style="border: 1px ridge #99CCFF; padding: 0px; background-color: #99CCFF">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="114px" 
                                ImageUrl="~/image/10255829_825100814184917_841745542_n.jpg" 
                                onclick="ImageButton1_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" colspan="4">
                            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7" colspan="3">
                            <span class="style14"><strong><span class="style15">Change your profile picture</span></strong></span>&nbsp;
                            &nbsp;&nbsp;
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
                                &nbsp;</td>
                        <td class="style7">
                            <span class="style13"><span class="style16">Select from system</span>&nbsp; </span>
                            <span class="style13">&nbsp;</span></td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style12" style="text-align: right">
                                &nbsp;</td>
                        <td class="style7">
                            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" 
                                style="font-weight: 700; color: #3333FF" />
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7" colspan="4" rowspan="6" style="text-align: left">
                            &nbsp;
                            &nbsp;<strong>
            </strong>
                            &nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<asp:Image ID="Image3" runat="server" Height="106px" Width="115px" />
                            <asp:Label ID="Label8" runat="server" style="font-weight: 700; color: #CC0000" 
                                Text="Label" Visible="False"></asp:Label>
                            <asp:Label ID="Label9" runat="server" style="font-weight: 700; color: #009933" 
                                Text="Picture Uploaded" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                        <asp:Label ID="Label1" runat="server" Height="19px" style="color: #0000CC; font-weight: 700; margin-bottom: 0px;" 
                            Text="Label" Width="130px" CssClass="style9"></asp:Label>
                                </td>
                        <td class="style9">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="114px" 
                                ImageUrl="~/image/10264947_825096647518667_769082307_n.jpg" 
                                onclick="ImageButton2_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink6" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-align: left; font-size: medium; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/mypage.aspx">My Page</asp:HyperLink>
                                </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink7" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
                                </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            <asp:Button ID="Button2" runat="server" Height="20px" 
                                style="font-weight: 700; color: #0000CC; text-decoration: underline; background-color: #99CCFF" 
                                Text="Set as profile picture" Width="150px" onclick="Button2_Click" />
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink8" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" CssClass="style19" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label4" runat="server" Height="19px" 
                            
                            style="color: #000066; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" CssClass="style19" Visible="False"></asp:Label>
                                </td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7" style="text-align: left">
                            &nbsp;
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
                            
                            style="color: #000066; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" Visible="False"></asp:Label>
                                </td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
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
                            <span class="style14"><strong><span class="style15">Change your password</span></strong></span></td>
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
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
                            </td>
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
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                style="color: #000066; font-weight: 700; text-decoration: underline; background-color: #6699FF" 
                                Text="Click here" />
                        </td>
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
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;<asp:Label ID="Label10" runat="server" 
                                style="font-weight: 700; color: #3333FF" Text="New Password" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server" Height="20px" TextMode="Password" 
                                Visible="False" Width="120px"></asp:TextBox>
                        </td>
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
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
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
                            <asp:Label ID="Label11" runat="server" style="font-weight: 700; color: #3333FF" 
                                Text="Confirm Password" Visible="False"></asp:Label>
&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server" Height="20px" TextMode="Password" 
                                Visible="False" Width="120px"></asp:TextBox>
                        </td>
                        <td class="style7">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                                ErrorMessage="Password mismatch" style="font-weight: 700; color: #FF0000" 
                                Visible="False"></asp:CompareValidator>
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="114px" 
                                ImageUrl="~/image/10248967_825096827518649_1021482137_n.jpg" 
                                onclick="ImageButton4_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
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
                        <td class="style7" style="text-align: center">
                            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                style="font-weight: 700; color: #000066; text-decoration: underline; background-color: #6699FF" 
                                Text="Update" Visible="False" />
                            <asp:Label ID="Label12" runat="server" style="font-weight: 700; color: #009900" 
                                Text="Password changed" Visible="False"></asp:Label>
                        </td>
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
                        <td class="style7" style="text-align: center">
                            <asp:Label ID="Label13" runat="server" style="font-weight: 700; color: #FF0000" 
                                Text="Unable to change" Visible="False"></asp:Label>
                        </td>
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
                            &nbsp;</td>
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


