<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpage.aspx.cs" Inherits="adminpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="150px"></asp:TextBox>
                    <asp:Button ID="Button5" runat="server" Height="30px" onclick="Button5_Click1" 
                        style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #6699FF" 
                        Text="Search" Width="100px" />
                    <asp:Button ID="Button6" runat="server" Height="30px" onclick="Button6_Click" 
                        style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #6699FF" 
                        Text="View Post History" Width="120px" />
                    <asp:Button ID="Button2" runat="server" Height="30px" 
                        style="text-decoration: underline; font-weight: 700; color: #CC0000; background-color: #FF9966" 
                        Text="View Report From User" onclick="Button2_Click" />
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
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style6">User Details</span></strong></td>
                <td class="style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [img], [name], [email], [db], [gen], [ad], [city], [zip], [state], [country], [num], [lang], [reli], [school], [col], [deg], [job], [emp], [look], [likes], [sprts] FROM [register]">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataKeyNames="email" DataSourceID="SqlDataSource1" 
                        GridLines="Vertical" 
            style="text-align: center; margin-left: 0px;" Width="1130px" 
            AllowPaging="True" HorizontalAlign="Left">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Photo" SortExpression="img">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" 
                                        ImageUrl='<%#"~/Upload/"+Eval("img") %>' Width="60px" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="email" HeaderText="Email-Id" ReadOnly="True" 
                                SortExpression="email" />
                            <asp:BoundField DataField="db" HeaderText="Date oh Birth" SortExpression="db" />
                            <asp:BoundField DataField="gen" HeaderText="Gender" SortExpression="gen" />
                            <asp:BoundField DataField="ad" HeaderText="Address" SortExpression="ad" />
                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                            <asp:BoundField DataField="zip" HeaderText="Zipcode" SortExpression="zip" />
                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                            <asp:BoundField DataField="country" HeaderText="Country" 
                                SortExpression="country" />
                            <asp:BoundField DataField="num" HeaderText="Contact Number" 
                                SortExpression="num" />
                            <asp:BoundField DataField="lang" HeaderText="Language" SortExpression="lang" />
                            <asp:BoundField DataField="reli" HeaderText="Religion" SortExpression="reli" />
                            <asp:BoundField DataField="school" HeaderText="School" 
                                SortExpression="school" />
                            <asp:BoundField DataField="col" HeaderText="College" SortExpression="col" />
                            <asp:BoundField DataField="deg" HeaderText="Degree" SortExpression="deg" />
                            <asp:BoundField DataField="job" HeaderText="Job" SortExpression="job" />
                            <asp:BoundField DataField="emp" HeaderText="Employee" SortExpression="emp" />
                            <asp:BoundField DataField="look" HeaderText="Looking" SortExpression="look" />
                            <asp:BoundField DataField="likes" HeaderText="Likes" SortExpression="likes" />
                            <asp:BoundField DataField="sprts" HeaderText="sports" SortExpression="sprts" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button3" runat="server" Height="22px" onclick="Button3_Click" 
                                        style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #6699FF" 
                                        Text="Send Message" Width="120px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button4" runat="server" Height="22px" onclick="Button4_Click" 
                                        style="font-weight: 700; text-decoration: underline; color: #000066; background-color: #FF0000" 
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    
    </div>
    </form>
</body>
</html>
