<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="myfriends.aspx.cs" Inherits="myfriends" %>

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
                            style="border: 1px outset #FFFFFF; padding: 0px; font-size: small; color: #99FF33; font-weight: 700; font-style: italic; background-color: #000066; text-align: center; text-decoration: underline;" 
                            Width="90px" NavigateUrl="~/messages.aspx">My Messages</asp:HyperLink>
                        <asp:Label ID="Label2" runat="server" Height="20px" 
                            style="font-size: x-small; color: #000066; background-color: #FF0000; font-weight: 700; text-align: center;" 
                            Width="20px" Visible="False"></asp:Label>
&nbsp;<asp:Button ID="Button2" runat="server" Height="22px" onclick="Button2_Click" 
                    style="font-weight: 700; font-style: italic; color: #CCFF33; background-color: #000066" 
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
                        <td class="style7" colspan="2">
                            <asp:Label ID="Label6" runat="server" 
                                style="font-style: italic; font-weight: 700; font-size: small; color: #000066; background-color: #6699FF" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style5" rowspan="3" 
                            style="border: 1px ridge #99CCFF; padding: 0px; background-color: #99CCFF">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="114px" 
                                ImageUrl="~/image/10264947_825096647518667_769082307_n.jpg" 
                                onclick="ImageButton3_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
                                Width="737px" PageSize="3" AllowPaging="True">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Photo" SortExpression="fimg">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fimg") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="90px" Width="80px" 
                                                ImageUrl='<%# Eval("fimg") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="fnm" HeaderText="Name" SortExpression="fnm" />
                                    <asp:BoundField DataField="femail" HeaderText="Email-Id" 
                                        SortExpression="femail" />
                                    <asp:BoundField DataField="dt" HeaderText="Friend's since" 
                                        SortExpression="dt" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button3" runat="server" Height="22px" onclick="Button3_Click" 
                                                style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #00FF00" 
                                                Text="View Profile" Width="120px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button4" runat="server" Height="22px" onclick="Button4_Click" 
                                                style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #99CCFF" 
                                                Text="Send Message" Width="120px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button5" runat="server" Height="22px" onclick="Button5_Click" 
                                                style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #FF6600" 
                                                Text="Delete Friend" Width="120px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                                
                                SelectCommand="SELECT [fimg], [fnm], [femail], [dt] FROM [friend1] WHERE ([myemail] = @myemail)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="myemail" SessionField="mail" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" style="text-align: justify" colspan="2" rowspan="17">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" 
                                Width="737px" AllowPaging="True" PageSize="3">
                                <AlternatingRowStyle BackColor="Gainsboro" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Photo" SortExpression="myimg">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("myimg") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="90px" 
                                                ImageUrl='<%# Eval("myimg") %>' Width="80px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="mynm" HeaderText="Name" SortExpression="mynm" />
                                    <asp:BoundField DataField="myemail" HeaderText="Email-Id" 
                                        SortExpression="myemail" />
                                    <asp:BoundField DataField="dt" HeaderText="Friend's Since " 
                                        SortExpression="dt" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button6" runat="server" Height="22px" onclick="Button6_Click" 
                                                style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #00FF00" 
                                                Text="View Profile" Width="120px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button7" runat="server" Height="22px" onclick="Button7_Click" 
                                                style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #99CCFF" 
                                                Text="Send Message" Width="120px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button8" runat="server" Height="22px" onclick="Button8_Click" 
                                                style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #FF6600" 
                                                Text="Delete Friend" Width="120px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="114px" 
                                ImageUrl="~/image/10248967_825096827518649_1021482137_n.jpg" 
                                onclick="ImageButton4_Click" Width="138px" />
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
                            style="font-weight: 700; color: #0000CC; background-color: #99CCFF" 
                            Width="110px" NavigateUrl="~/myfriends.aspx">My Friends</asp:HyperLink>
                        <asp:Label ID="Label5" runat="server" Height="19px" 
                            
                            style="color: #000066; background-color: #00FF00; font-size: small; font-weight: 700;" 
                            Width="10px" Visible="False"></asp:Label>
                                </td>
                        <td class="style5" rowspan="6">
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="114px" 
                                ImageUrl="~/image/10255829_825100814184917_841745542_n.jpg" 
                                onclick="ImageButton5_Click" Width="138px" />
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
                            <asp:ImageButton ID="ImageButton6" runat="server" Height="114px" 
                                ImageUrl="~/image/10287310_825096654185333_1425197803_n.jpg" 
                                onclick="ImageButton6_Click" Width="138px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                                            &nbsp;</td>
                        <td class="style7" rowspan="5">
                            &nbsp;
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [myimg], [mynm], [myemail], [dt] FROM [friend1] WHERE ([femail] = @femail2)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="femail2" SessionField="mail" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12" style="text-align: right">
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


