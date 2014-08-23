using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;
using System.Drawing;
using System.Text;
using System.Web.Security;

public partial class userreg1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = System.Configuration.ConfigurationManager.AppSettings["conn"].ToString();
        Label1.Text = "<marquee direction=left><font face=arial size=4>" + "No one can stop us from making the world closer...!!!" + "</font></marquee>";
        Label3.Text = Session["nam"].ToString();
        Label5.Text = Session["mail"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        Session["nam"] = Label3.Text;
        Session["mail"] = Label5.Text;
        try
        {
            c1.cmd.CommandText = "UPDATE register SET school='" + TextBox1.Text + "',col='" + TextBox2.Text + "',deg='" + TextBox3.Text + "',job='" + TextBox4.Text + "',emp='" + TextBox5.Text + "',look='" + DropDownList1.SelectedItem.Text + "',likes='" + TextBox6.Text + "',sprts='" + TextBox7.Text + "' where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            Response.Redirect("aftrreg.aspx");
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Label4.Text = ex.Message;
            Label4.Visible = true;
        }
    }

}