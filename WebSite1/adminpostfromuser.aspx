<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpostfromuser.aspx.cs" Inherits="adminpostfromuser" %>

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
        .style16
        {
            width: 998px;
            text-decoration: underline;
            font-size: x-large;
            color: #3333FF;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Posts 
                    By User</span></strong></td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
        </table>
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" 
            runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [mynm], [myemail], [scrap], [dt1], [up], [dt2] FROM [post]">
        </asp:SqlDataSource>
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style15">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        DataSourceID="SqlDataSource1" GridLines="Vertical" PageSize="5" 
                        style="text-align: center" Width="994px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="mynm" HeaderText="Name" SortExpression="mynm" />
                            <asp:BoundField DataField="myemail" HeaderText="Email-Id" 
                                SortExpression="myemail" />
                            <asp:BoundField DataField="scrap" HeaderText="Scrap" SortExpression="scrap" />
                            <asp:BoundField DataField="dt1" HeaderText="Date" SortExpression="dt1" />
                            <asp:BoundField DataField="up" HeaderText="Uploaded Photo" 
                                SortExpression="up" />
                            <asp:BoundField DataField="dt2" HeaderText="Date" SortExpression="dt2" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button3" runat="server" Height="22px" onclick="Button3_Click1" 
                                        style="font-weight: 700; text-decoration: underline; color: #FFFF00; background-color: #FF0000" 
                                        Text="Delete Post History" Width="150px" />
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
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
