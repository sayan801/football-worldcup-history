<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminsearch.aspx.cs" Inherits="adminsearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 328px;
            text-align: right;
        }
        .style3
        {
            font-size: large;
            color: #009900;
        }
        .style4
        {
            color: #669900;
        }
        .style6
        {
            text-decoration: underline;
        }
        .style11
        {
            font-size: large;
            color: #009900;
            height: 33px;
        }
        .style12
        {
            color: #669900;
            height: 33px;
            text-align: justify;
        }
        .style13
        {
            font-size: x-large;
            color: #3333FF;
            text-align: justify;
        }
        .style14
        {
            width: 138px;
        }
        .style15
        {
            width: 998px;
        }
    </style>
</head>
<body onload="noBack();" background="image/signup.jpg" style="height: 842px">
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
        <br />
        <br />
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp; </td>
            </tr>
            <tr>
                <td class="style11" style="text-align: right">
                    <strong><span class="style6">WelCome: </span> </strong>
                </td>
                <td class="style12" colspan="2">
                    <asp:Label ID="Label1" runat="server" 
                        style="color: #0000CC; font-weight: 700; font-size: large; text-decoration: underline;" 
                        Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="30px" 
                        style="text-decoration: underline; font-weight: 700; color: #CC0000; background-color: #FF9966" 
                        Text="Go To Admin Page" onclick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" 
                        style="font-weight: 700; text-decoration: underline; color: #990033; background-color: #FF9933" 
                        Text="Logout" Height="30px" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13" colspan="2">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Profile Details</span></strong></td>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
                    &nbsp;<table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style15">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="email" 
                        DataSourceID="SqlDataSource1" GridLines="Vertical" PageSize="3" 
                        style="text-align: center" Width="941px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Photo" SortExpression="img">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" 
                                        ImageUrl='<%#"~/Upload/"+ Eval("img") %>' Width="60px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="db" HeaderText="Date of birth" SortExpression="db" />
                            <asp:BoundField DataField="gen" HeaderText="Gender" SortExpression="gen" />
                            <asp:BoundField DataField="email" HeaderText="Email-Id" ReadOnly="True" 
                                SortExpression="email" />
                            <asp:BoundField DataField="ad" HeaderText="Address" SortExpression="ad" />
                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                            <asp:BoundField DataField="zip" HeaderText="Zip Code" SortExpression="zip" />
                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                            <asp:BoundField DataField="country" HeaderText="Country" 
                                SortExpression="country" />
                            <asp:BoundField DataField="num" HeaderText="Contact no." SortExpression="num" />
                            <asp:BoundField DataField="school" HeaderText="School" 
                                SortExpression="school" />
                            <asp:BoundField DataField="col" HeaderText="College" SortExpression="col" />
                            <asp:BoundField DataField="deg" HeaderText="Degree" SortExpression="deg" />
                            <asp:BoundField DataField="job" HeaderText="Job" SortExpression="job" />
                            <asp:BoundField DataField="emp" HeaderText="Employee at" SortExpression="emp" />
                            <asp:BoundField DataField="lang" HeaderText="Langguage" SortExpression="lang" />
                            <asp:BoundField DataField="reli" HeaderText="Religion" SortExpression="reli" />
                            <asp:BoundField DataField="look" HeaderText="Look" SortExpression="look" />
                            <asp:BoundField DataField="likes" HeaderText="Likes" SortExpression="likes" />
                            <asp:BoundField DataField="sprts" HeaderText="Sports" SortExpression="sprts" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button3" runat="server" Height="22px" onclick="Button3_Click" 
                                        style="font-weight: 700; text-decoration: underline; color: #FFFF66; background-color: #FF0000" 
                                        Text="Delete User" Width="120px" />
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
                        SelectCommand="SELECT [img], [name], [db], [gen], [email], [ad], [city], [zip], [state], [country], [num], [school], [col], [deg], [job], [emp], [lang], [reli], [look], [likes], [sprts] FROM [register] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:SessionParameter Name="email" SessionField="eid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        DataSourceID="SqlDataSource2" GridLines="Vertical" PageSize="3" 
                        style="text-align: center" Width="1243px">
                        <AlternatingRowStyle BackColor="Gainsboro" />
                        <Columns>
                            <asp:BoundField DataField="scrap" HeaderText="Scrap" SortExpression="scrap" />
                            <asp:BoundField DataField="dt1" HeaderText="Posted Date" SortExpression="dt1" />
                            <asp:TemplateField HeaderText="Posted Photo" SortExpression="up">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("up") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" 
                                        ImageUrl='<%# Eval("up") %>' Width="90px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="dt2" HeaderText="Posted Date" SortExpression="dt2" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button4" runat="server" Height="22px" onclick="Button4_Click" 
                                        style="font-weight: 700; text-decoration: underline; color: #FFFF66; background-color: #FF0000" 
                                        Text="Delete" Width="120px" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [scrap], [dt1], [up], [dt2] FROM [post] WHERE ([myemail] = @myemail)">
                        <SelectParameters>
                            <asp:SessionParameter Name="myemail" SessionField="eid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    
    </div>
    </form>
</body>
</html>
