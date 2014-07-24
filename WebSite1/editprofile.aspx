<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="editprofile" %>

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
            color: #3333FF;
            font-weight: 700;
        }
        .style14
        {
            width: 740px;
            background-color: #FFFFFF;
            text-align: right;
            color: #3333FF;
        }
        .style15
        {
            color: #3333FF;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
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
                            style="font-size: x-small; color: #000066; background-color: #FF0000; font-weight: 700; text-align: center;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:Button ID="Button23" runat="server" Height="22px" onclick="Button23_Click" 
                    style="font-weight: 700; font-style: italic; text-decoration: underline; color: #CCFF33; background-color: #000066;" 
                    Text="Notifications" Width="90px" />
                        <asp:Label ID="Label3" runat="server" Height="20px" 
                            
                            style="font-size: x-small; color: #000066; font-weight: 700; background-color: #FF0000; text-align: center;" 
                            Width="20px"></asp:Label>
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
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style5" rowspan="6" 
                            style="border: 1px ridge #99CCFF; padding: 0px; background-color: #99CCFF">
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="114px" 
                                ImageUrl="~/image/10264947_825096647518667_769082307_n.jpg" 
                                onclick="ImageButton5_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" colspan="4">
                            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" style="text-align: right">
                    <strong><span class="style12">Name</span></strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" Height="20px" 
                                style="text-align: center; font-weight: 700" Text="Edit" Width="50px" 
                                onclick="Button2_Click" />
                        </td>
                        <td class="style12" style="text-align: right">
                    <strong>Date of Birth</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" Height="20px" 
                                style="text-align: center; font-weight: 700" Text="Edit" Width="50px" 
                                onclick="Button3_Click" />
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                                onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
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
                                <strong>Address</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button4" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button4_Click" />
                        </td>
                        <td class="style12" style="text-align: right">
                            <strong>Gender</strong></td>
                        <td class="style7" style="font-weight: 700">
                            :<asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button20" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button20_Click" />
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                style="font-weight: 700; color: #3333FF" Visible="False">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
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
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button5" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button5_Click" />
                        </td>
                        <td class="style7" style="text-align: right">
                                            <strong><span class="style13">Zipcode</span><span class="style15"> </span>
            </strong>
                                        </td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button6" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button6_Click" />
                        </td>
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
                            <asp:ImageButton ID="ImageButton6" runat="server" Height="114px" 
                                ImageUrl="~/image/10255829_825100814184917_841745542_n.jpg" 
                                onclick="ImageButton6_Click" Width="138px" />
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
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox8" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button7" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button7_Click" />
                        </td>
                        <td class="style12" style="text-align: right">
                                            <strong>Country</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox9" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button8" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button8_Click" />
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
                        <asp:HyperLink ID="HyperLink7" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                                            <strong>Contact Number</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox10" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button9" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button9_Click" />
                        </td>
                        <td class="style7" style="text-align: right">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;
                            &nbsp;&nbsp; </td>
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
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" CssClass="style19" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label4" runat="server" Height="19px" 
                            
                            style="color: #000066; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" CssClass="style19" Visible="False"></asp:Label>
                                </td>
                        <td class="style12" style="text-align: right">
                        <strong>High school name</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox11" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button10" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button10_Click" />
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
                            
                            style="color: #000066; text-align: center; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" Visible="False"></asp:Label>
                                </td>
                        <td class="style12" style="text-align: right">
                        <strong>University name</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox12" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button11" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button11_Click" />
                        </td>
                        <td class="style12" style="text-align: right">
                            <strong>Degree/qualification</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox20" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button12" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button12_Click" />
                        </td>
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
                            <strong>Job name</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox13" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button13" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button13_Click" />
                        </td>
                        <td class="style12" style="text-align: right">
                            <strong>Employee at</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox14" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button14" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button14_Click" />
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
                        <asp:HyperLink ID="HyperLink10" runat="server" Height="19px" 
                            style="color: #0000CC; font-weight: 700; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/entertain.aspx">Entertainments</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                            <strong>Looking for</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox15" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button15" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button15_Click" />
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                                style="font-weight: 700; color: #3333FF" Visible="False" Width="100px">
                                <asp:ListItem>Men</asp:ListItem>
                                <asp:ListItem>Women</asp:ListItem>
                                <asp:ListItem>Men &amp; Women</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style12" style="text-align: right">
                        <strong>Sports &amp; games</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox16" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button16" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button16_Click" />
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
                        <asp:HyperLink ID="HyperLink11" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" 
                                Width="110px" NavigateUrl="~/people.aspx">You may know</asp:HyperLink>
                                </td>
                        <td class="style12" style="text-align: right">
                        <strong>Likings</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox17" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button17" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button17_Click" />
                        </td>
                        <td class="style12" style="text-align: right">
                                            <strong>Religion</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox18" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button18" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button18_Click" />
                        </td>
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
                                ImageUrl="~/image/10248967_825096827518649_1021482137_n.jpg" 
                                onclick="ImageButton4_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                                            <strong>Languages</strong></td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
                            :<asp:TextBox ID="TextBox21" runat="server" Height="20px" Width="120px"></asp:TextBox>
                            <asp:Button ID="Button19" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Edit" Width="50px" onclick="Button19_Click" />
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
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style7" style="font-weight: 700; color: #3333FF">
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
                            <asp:Button ID="Button22" runat="server" 
                                style="font-weight: 700; text-decoration: underline; color: #000066; font-size: medium; background-color: #6699FF" 
                                Text="Update My Profile" onclick="Button22_Click" />
                        </td>
                        <td class="style7">
                            <asp:Label ID="Label8" runat="server" style="font-weight: 700; color: #33CC33" 
                                Text="Profile Updated" Visible="False"></asp:Label>
                        </td>
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
                            <asp:Label ID="Label9" runat="server" style="font-weight: 700; color: #CC0000" 
                                Text="Unable to Update" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div></ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>



