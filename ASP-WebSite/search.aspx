<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 1014px;
            background-color: #99CCFF;
        }
        .style12
        {
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
            font-size: x-large;
            text-decoration: underline;
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
                        </span>&nbsp;<span class="style4"><asp:Button ID="Button1" runat="server" Height="20px" 
                            style="font-weight: 700; color: #99FF33; background-color: #000066" 
                            Text="Search" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; text-align: center; font-weight: 700; font-style: italic; background-color: #000066" 
                            Width="65px" NavigateUrl="~/mypage.aspx">    My Page</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; background-color: #000066; text-align: center;" 
                            Width="65px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; background-color: #000066; text-align: center; text-decoration: underline;" 
                            Width="90px" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label2" runat="server" Height="20px" 
                            style="font-size: x-small; color: #000066; background-color: #FF0000; font-weight: 700; text-align: center;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:Button ID="Button5" runat="server" Height="22px" onclick="Button5_Click" 
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
                        <td class="style6" rowspan="3">
                            <asp:Image ID="Image1" runat="server" Height="111px" Width="130px" />
                        </td>
                        <td class="style7" colspan="4">
                            <asp:Label ID="Label6" runat="server" 
                                style="font-style: italic; font-weight: 700; font-size: small; color: #000066; background-color: #6699FF" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style5" rowspan="3" 
                            style="border: 1px ridge #99CCFF; padding: 0px; background-color: #99CCFF">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="114px" 
                                ImageUrl="~/image/10255829_825100814184917_841745542_n.jpg" 
                                onclick="ImageButton2_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" colspan="4" style="text-align: center">
                            <strong><span class="style14">Search Results</span></strong><br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" DataKeyNames="email" 
                                DataSourceID="SqlDataSource1" AllowPaging="True" HorizontalAlign="Center" 
                                PageSize="5" 
                                style="margin-right: 3px; margin-top: 0px; text-align: center;" Width="738px">
                                <Columns>
                                    <asp:TemplateField HeaderText="Photo" SortExpression="img">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" 
                                                ImageUrl='<%#"~/Upload/"+ Eval("img") %>' Width="60px" 
                                                ImageAlign="Middle" />
                                        </ItemTemplate>
                                        
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                    <asp:BoundField DataField="email" HeaderText="Email-Id" ReadOnly="True" 
                                        SortExpression="email" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" runat="server" Height="22px" onclick="Button2_Click" 
                                                style="font-weight: 700; color: #0000CC; text-decoration: underline; background-color: #6699FF" 
                                                Text="See Profile" Width="120px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button4" runat="server" Height="22px" 
                                                style="font-weight: 700; text-decoration: underline; color: #3333FF; background-color: #6699FF" 
                                                Text="Send Message" Width="120px" onclick="Button4_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" style="text-align: justify" colspan="4" rowspan="17">
                            &nbsp;
                            &nbsp;&nbsp;
                            &nbsp;<span class="style13">&nbsp; &nbsp;</span>&nbsp;
                            &nbsp;<strong>
            </strong>
                            &nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [img], [name], [email] FROM [register] WHERE ([name] LIKE '%' + @name + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
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
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="114px" 
                                ImageUrl="~/image/10154880_825096677518664_1086807491_n.jpg" 
                                onclick="ImageButton3_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink6" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-align: left; font-size: medium; background-color: #99CCFF; text-decoration: underline;" 
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
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
                                </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink8" runat="server" Height="19px" 
                            style="font-weight: 700; text-align: left; color: #0000CC; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" CssClass="style19" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label4" runat="server" Height="19px" 
                            
                            style="color: #000066; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" CssClass="style19" Visible="False"></asp:Label>
                                </td>
                    </tr>
                    <tr>
                        <td class="style10">
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
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="114px" 
                                ImageUrl="~/image/10287310_825096654185333_1425197803_n.jpg" 
                                onclick="ImageButton4_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink12" runat="server" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" 
                                Height="19px" Width="110px" NavigateUrl="~/gallary.aspx">My Gallary</asp:HyperLink>
                                </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink10" runat="server" Height="19px" 
                            style="color: #0000CC; font-weight: 700; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/entertain.aspx">Entertainments</asp:HyperLink>
                                </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                        <asp:HyperLink ID="HyperLink11" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" 
                                Width="110px" NavigateUrl="~/people.aspx">You may know</asp:HyperLink>
                                </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="114px" 
                                ImageUrl="~/image/10248967_825096827518649_1021482137_n.jpg" 
                                onclick="ImageButton5_Click" Width="138px" />
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


