<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="mypage.aspx.cs" Inherits="mypage" %>

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
                    <td class="style3" style="background-color: #3399FF">
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
                            style="font-size: x-small; color: #000066; background-color: #FF0000; font-weight: 700;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:Button ID="Button4" runat="server" Height="22px" onclick="Button4_Click" 
                            style="font-weight: 700; font-style: italic; text-decoration: underline; color: #99FF33; background-color: #000066" 
                            Text="Notifications" Width="90px" />
                        <asp:Label ID="Label3" runat="server" Height="20px" 
                            
                            style="font-size: medium; color: #000066; font-weight: 700; background-color: #FF0000; text-align: center;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Height="20px" 
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; font-weight: 700; font-style: italic; color: #99FF33; background-color: #000066; text-align: center;" 
                            Width="50px" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
                        <table cellpadding="0" cellspacing="0" class="style1">
                            <tr>
                                <td class="style6" rowspan="3" style="background-color: #FFFFFF">
                                    <asp:Image ID="Image1" runat="server" Height="135px" Width="147px" />
                                </td>
                                <td class="style8">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="733px" 
                                        Height="79px" style="margin-left: 0px"></asp:TextBox>
                                </td>
                                <td class="style5" rowspan="3">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="114px" 
                                        ImageUrl="~/image/10287310_825096654185333_1425197803_n.jpg" 
                                        onclick="ImageButton1_Click" Width="138px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style8">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="20px" 
                            style="font-weight: 700; text-align: center; color: #000066; background-color: #6699FF" 
                            Text="Post Scrap" Width="200px" onclick="Button2_Click" />
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="200px" 
                            style="font-weight: 700; color: #000066; background-color: #6699FF" />
                        &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" Height="20px" 
                            style="font-weight: 700; color: #000066; background-color: #6699FF" 
                            Text="Upload" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style11">
                        <asp:Label ID="Label1" runat="server" Height="19px" style="color: #0000CC; font-weight: 700; margin-bottom: 0px;" 
                            Text="Label" Width="140px" CssClass="style9"></asp:Label>
                                </td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td style="border: 1px ridge #3399FF; padding: 0px; background-color: #99CCFF">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td style="border-left: 1px solid #3399FF; padding: 0px; background-color: #FFFFFF" 
                                    rowspan="6">
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="114px" 
                                        ImageUrl="~/image/10248967_825096827518649_1021482137_n.jpg" 
                                        onclick="ImageButton2_Click" Width="138px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                        <asp:HyperLink ID="HyperLink6" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; font-size: medium; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/mypage.aspx">My Page</asp:HyperLink>
                                </td>
                                <td class="style8" rowspan="9">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                        DataSourceID="SqlDataSource1" GridLines="Vertical" PageSize="3" 
                                        style="text-align: center" Width="729px">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="myimg" SortExpression="myimg">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("myimg") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="70px" 
                                                        ImageUrl='<%# Eval("myimg") %>' Width="60px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="mynm" HeaderText="mynm" SortExpression="mynm" />
                                            <asp:BoundField DataField="scrap" HeaderText="scrap" SortExpression="scrap" />
                                            <asp:BoundField DataField="dt1" HeaderText="dt1" SortExpression="dt1" />
                                            <asp:TemplateField HeaderText="up" SortExpression="up">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("up") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton6" runat="server" Height="100px" 
                                                        ImageUrl='<%# Eval("up") %>' Width="90px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="dt2" HeaderText="dt2" SortExpression="dt2" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [myimg], [mynm], [scrap], [dt1], [up], [dt2] FROM [post] WHERE ([myemail] = @myemail)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="myemail" SessionField="mail" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style11">
                        <asp:HyperLink ID="HyperLink7" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/myprofile.aspx">My Profile</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    &nbsp;</td>
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
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td style="border: 1px ridge #3399FF; padding: 0px; background-color: #99CCFF">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink9" runat="server" Height="19px" 
                            style="font-weight: 700; color: #0000CC; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/myfriends.aspx">My Friends</asp:HyperLink>
                        <asp:Label ID="Label5" runat="server" Height="19px" 
                            
                            style="color: #000066; background-color: #00FF00; font-size: medium; font-weight: 700;" 
                            Width="10px" Visible="False"></asp:Label>
                                </td>
                                <td style="border-left: 1px solid #6699FF; padding: 0px; background-color: #FFFFFF" 
                                    rowspan="6">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="114px" 
                                        ImageUrl="~/image/10255829_825100814184917_841745542_n.jpg" 
                                        onclick="ImageButton3_Click" Width="138px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink12" runat="server" 
                            style="font-weight: 700; color: #0000CC; text-decoration: underline;" Height="19px" 
                                        Width="110px" NavigateUrl="~/gallary.aspx">My Gallary</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style8">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                        <asp:HyperLink ID="HyperLink10" runat="server" Height="19px" 
                            style="color: #0000CC; font-weight: 700; background-color: #99CCFF; text-decoration: underline;" 
                            Width="110px" NavigateUrl="~/entertain.aspx">Entertainments</asp:HyperLink>
                                </td>
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
                                    <asp:HyperLink ID="HyperLink13" runat="server" Height="19px" 
                                        NavigateUrl="~/people.aspx" 
                                        style="font-weight: 700; color: #0000CC; text-decoration: underline" 
                                        Width="120px">You may know</asp:HyperLink>
                                </td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td style="border: 1px ridge #3399FF; padding: 0px; background-color: #99CCFF">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td style="border-left: 1px ridge #6699FF; border-bottom: 1px ridge #6699FF; padding: 0px; background-color: #FFFFFF" 
                                    rowspan="6">
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="114px" 
                                        ImageUrl="~/image/10264947_825096647518667_769082307_n.jpg" 
                                        onclick="ImageButton4_Click" Width="138px" />
                                </td>
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
        </div>
        </asp:Content>


