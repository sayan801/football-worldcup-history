using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admincompose : System.Web.UI.Page
{
    public void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["nam"].ToString();
        Label2.Text = Session["mail"].ToString();
        Label3.Text = Session["nm"].ToString();
        Label5.Text = Session["eid"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["nam"] = Label1.Text;
        Session["mail"] = Label2.Text;
        Response.Redirect("adminpage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            DateTime dt;
            dt = DateTime.Now;
            c1.cmd.CommandText = "INSERT INTO message values('" + "ADMIN" + "','" + Session["eid"].ToString() + "','" + Session["nam"].ToString() +"','" + "ADMIN" + "','" + dt + "','" + TextBox1.Text + "','" + "No" + "')";
            a = c1.cmd.ExecuteReader();
            Label4.Visible = true;
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }

}